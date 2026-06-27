package com.cdv.io;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.Image;
import android.media.ImageReader;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.scene.poll.ScenePollPlayView;
import java.io.IOException;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* loaded from: classes.dex */
public class NvAndroidVideoFileReaderSW {
    private static final int ERROR_EOF = 1;
    private static final int ERROR_FAIL = 2;
    private static final int ERROR_OK = 0;
    private static final String TAG = "NvAndroidVideoFileReaderSW";
    private static final boolean m_verbose = false;
    private MediaCodec.BufferInfo m_bufferInfo;
    private Handler m_handler;
    private long m_owner;
    private MediaExtractor m_extractor = null;
    private int m_videoTrackIndex = -1;
    private MediaFormat m_format = null;
    private long m_duration = 0;
    private boolean m_extractorInOriginalState = true;
    private MediaCodec m_decoder = null;
    private ImageReader m_imageReader = null;
    private boolean m_decoderUseSurface = false;
    private Object m_frameSyncObject = new Object();
    private boolean m_imageReady = false;
    private boolean m_decoderSetupFailed = false;
    private boolean m_decoderStarted = false;
    ByteBuffer[] m_decoderInputBuffers = null;
    ByteBuffer[] m_decoderOutputBuffers = null;
    private long m_timestampOfLastDecodedFrame = Long.MIN_VALUE;
    private long m_timestampOfLastCopiedFrame = Long.MIN_VALUE;
    private boolean m_inputBufferQueued = false;
    private int m_pendingInputFrameCount = 0;
    private boolean m_sawInputEOS = false;
    private boolean m_sawOutputEOS = false;
    private long m_lastSeekTimestamp = Long.MIN_VALUE;
    private long m_lastSeekActualTimestamp = Long.MIN_VALUE;
    private boolean m_onlyDecodeKeyFrame = false;
    private long m_contiuousDecodingThreshold = 1000000;

    private native void nativeCopyVideoFrame(long j, ByteBuffer byteBuffer, int i, int i2, long j2);

    private native void nativeCopyVideoFrameFromYUV420ImagePlanes(long j, int i, int i2, int i3, int i4, ByteBuffer byteBuffer, int i5, int i6, ByteBuffer byteBuffer2, int i7, int i8, ByteBuffer byteBuffer3, int i9, int i10, long j2);

    private native void nativeSetFormatInfo(long j, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    NvAndroidVideoFileReaderSW(long j, Handler handler) {
        this.m_owner = 0L;
        this.m_handler = null;
        this.m_bufferInfo = null;
        this.m_owner = j;
        this.m_handler = handler;
        this.m_bufferInfo = new MediaCodec.BufferInfo();
    }

    public boolean OpenFile(String str, AssetManager assetManager, int i, long j) throws IOException {
        if (IsValid()) {
            Log.e(TAG, "You can't call OpenFile() twice!");
            return false;
        }
        try {
            this.m_extractor = new MediaExtractor();
            if (assetManager == null) {
                this.m_extractor.setDataSource(str);
            } else {
                AssetFileDescriptor assetFileDescriptorOpenFd = assetManager.openFd(str);
                this.m_extractor.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
                assetFileDescriptorOpenFd.close();
            }
            this.m_extractorInOriginalState = true;
            int trackCount = this.m_extractor.getTrackCount();
            int i2 = 0;
            while (true) {
                if (i2 >= trackCount) {
                    break;
                }
                if (this.m_extractor.getTrackFormat(i2).getString(IMediaFormat.KEY_MIME).startsWith("video/")) {
                    this.m_videoTrackIndex = i2;
                    break;
                }
                i2++;
            }
            int i3 = this.m_videoTrackIndex;
            if (i3 < 0) {
                Log.e(TAG, "Failed to find a video track from " + str);
                CloseFile();
                return false;
            }
            this.m_extractor.selectTrack(i3);
            this.m_format = this.m_extractor.getTrackFormat(this.m_videoTrackIndex);
            if (Build.VERSION.SDK_INT == 16) {
                this.m_format.setInteger("max-input-size", 0);
            }
            if (Build.VERSION.SDK_INT >= 23 && i >= 0) {
                MediaFormat mediaFormat = this.m_format;
                if (i <= 0) {
                    i = 120;
                }
                mediaFormat.setInteger("operating-rate", i);
            }
            try {
                this.m_duration = this.m_format.getLong("durationUs");
                String string = this.m_format.getString(IMediaFormat.KEY_MIME);
                this.m_decoderSetupFailed = false;
                if (!SetupDecoder(string)) {
                    this.m_decoderSetupFailed = true;
                    CloseFile();
                    return false;
                }
                this.m_contiuousDecodingThreshold = j;
                return true;
            } catch (Exception e) {
                Log.e(TAG, "" + e.getMessage());
                e.printStackTrace();
                CloseFile();
                return false;
            }
        } catch (Exception e2) {
            Log.e(TAG, "" + e2.getMessage());
            e2.printStackTrace();
            CloseFile();
            return false;
        }
    }

    public boolean hasDecoderSetupFailed() {
        return this.m_decoderSetupFailed;
    }

    public void enableOnlyDecodeKeyFrame(boolean z) {
        this.m_onlyDecodeKeyFrame = z;
    }

    public void CloseFile() {
        InvalidLastSeekTimestamp();
        CleanupDecoder();
        MediaExtractor mediaExtractor = this.m_extractor;
        if (mediaExtractor != null) {
            mediaExtractor.release();
            this.m_extractor = null;
            this.m_videoTrackIndex = -1;
            this.m_format = null;
            this.m_duration = 0L;
            this.m_extractorInOriginalState = true;
            this.m_onlyDecodeKeyFrame = false;
        }
    }

    public int SeekVideoFrame(long j, long j2) {
        if (!IsValid()) {
            return 1;
        }
        long jMax = Math.max(j, 0L);
        long j3 = this.m_duration;
        if (jMax >= j3) {
            if (jMax >= 25000 + j3) {
                return 1;
            }
            jMax = j3 - 1;
        }
        long j4 = this.m_timestampOfLastCopiedFrame;
        if (j4 != Long.MIN_VALUE && Math.abs(jMax - j4) <= j2) {
            return 0;
        }
        int iSeekInternal = SeekInternal(jMax, j2);
        if (iSeekInternal == 0) {
            this.m_lastSeekTimestamp = jMax;
            this.m_lastSeekActualTimestamp = this.m_timestampOfLastCopiedFrame;
        } else {
            InvalidLastSeekTimestamp();
        }
        return iSeekInternal;
    }

    public int StartPlayback(long j, long j2) {
        if (!IsValid()) {
            return 1;
        }
        long jMax = Math.max(j, 0L);
        if (jMax >= this.m_duration) {
            return 1;
        }
        long j3 = this.m_lastSeekTimestamp;
        if (j3 != Long.MIN_VALUE && jMax == j3) {
            long j4 = this.m_lastSeekActualTimestamp;
            if (j4 != Long.MIN_VALUE) {
                jMax = j4;
            }
        }
        long j5 = this.m_timestampOfLastCopiedFrame;
        if (jMax == j5 && j5 == this.m_timestampOfLastDecodedFrame) {
            return 0;
        }
        int iSeekInternal = SeekInternal(jMax, j2);
        InvalidLastSeekTimestamp();
        return iSeekInternal;
    }

    public int GetNextVideoFrameForPlayback() {
        if (!IsValid()) {
            return 1;
        }
        int iDecodeToFrame = DecodeToFrame(Long.MIN_VALUE, 0L);
        InvalidLastSeekTimestamp();
        return iDecodeToFrame;
    }

    private boolean IsValid() {
        return this.m_decoder != null;
    }

    private boolean preferDecodeToImageReader(String str) {
        if (Build.MANUFACTURER.equals("OPPO") && Build.MODEL.equals("R15")) {
            return str.equals(MimeTypes.VIDEO_MPEG2);
        }
        return false;
    }

    private boolean SetupDecoder(String str) {
        if (preferDecodeToImageReader(str) && setupDecoderWithImageReader(str)) {
            return true;
        }
        return setupDecoderWithBuffers(str);
    }

    private boolean setupDecoderWithBuffers(String str) {
        try {
            this.m_decoder = MediaCodec.createDecoderByType(str);
            this.m_decoder.configure(this.m_format, (Surface) null, (MediaCrypto) null, 0);
            this.m_decoder.start();
            this.m_decoderStarted = true;
            this.m_decoderInputBuffers = this.m_decoder.getInputBuffers();
            this.m_decoderOutputBuffers = this.m_decoder.getOutputBuffers();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            CleanupDecoder();
            return false;
        }
    }

    private boolean setupDecoderWithImageReader(String str) {
        boolean z;
        if (Build.VERSION.SDK_INT < 19) {
            return false;
        }
        try {
            this.m_decoder = MediaCodec.createDecoderByType(str);
            int[] iArr = this.m_decoder.getCodecInfo().getCapabilitiesForType(str).colorFormats;
            int length = iArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                if (iArr[i] == 2135033992) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                Log.w(TAG, "We can't decode to ImageReader if COLOR_FormatYUV420Flexible is not supported!");
                this.m_decoder.release();
                this.m_decoder = null;
                return false;
            }
            this.m_format.setInteger("color-format", 2135033992);
            this.m_imageReader = ImageReader.newInstance(this.m_format.getInteger("width"), this.m_format.getInteger("height"), 35, 1);
            this.m_imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.cdv.io.NvAndroidVideoFileReaderSW.1
                @Override // android.media.ImageReader.OnImageAvailableListener
                public void onImageAvailable(ImageReader imageReader) {
                    synchronized (NvAndroidVideoFileReaderSW.this.m_frameSyncObject) {
                        NvAndroidVideoFileReaderSW.this.m_imageReady = true;
                        NvAndroidVideoFileReaderSW.this.m_frameSyncObject.notifyAll();
                    }
                }
            }, this.m_handler);
            this.m_decoder.configure(this.m_format, this.m_imageReader.getSurface(), (MediaCrypto) null, 0);
            this.m_decoder.start();
            this.m_decoderStarted = true;
            this.m_decoderUseSurface = true;
            this.m_decoderInputBuffers = this.m_decoder.getInputBuffers();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            CleanupDecoder();
            return false;
        }
    }

    private void CleanupDecoder() {
        if (this.m_decoder != null) {
            if (this.m_decoderStarted) {
                try {
                    if (this.m_sawInputEOS && !this.m_sawOutputEOS) {
                        DrainOutputBuffers();
                    }
                    if (this.m_inputBufferQueued) {
                        try {
                            this.m_decoder.flush();
                        } catch (Exception unused) {
                        }
                        this.m_inputBufferQueued = false;
                    }
                    this.m_decoder.stop();
                } catch (Exception e) {
                    Log.e(TAG, "" + e.getMessage());
                    e.printStackTrace();
                }
                this.m_decoderStarted = false;
                this.m_decoderInputBuffers = null;
            }
            this.m_decoder.release();
            this.m_decoder = null;
        }
        ImageReader imageReader = this.m_imageReader;
        if (imageReader != null) {
            imageReader.close();
            this.m_imageReader = null;
        }
        this.m_decoderUseSurface = false;
        this.m_timestampOfLastDecodedFrame = Long.MIN_VALUE;
        this.m_timestampOfLastCopiedFrame = Long.MIN_VALUE;
        this.m_pendingInputFrameCount = 0;
        this.m_sawInputEOS = false;
        this.m_sawOutputEOS = false;
    }

    private int SeekInternal(long j, long j2) {
        long j3 = this.m_timestampOfLastDecodedFrame;
        boolean z = true;
        if ((j3 == Long.MIN_VALUE || j <= j3 || j >= j3 + this.m_contiuousDecodingThreshold) && (!this.m_extractorInOriginalState || j >= this.m_contiuousDecodingThreshold)) {
            z = false;
        }
        if (this.m_onlyDecodeKeyFrame) {
            z = false;
        }
        if (!z) {
            try {
                this.m_extractor.seekTo(j, 0);
                if (this.m_sawInputEOS || this.m_sawOutputEOS) {
                    CleanupDecoder();
                    if (!SetupDecoder(this.m_format.getString(IMediaFormat.KEY_MIME))) {
                        return 2;
                    }
                } else if (this.m_inputBufferQueued) {
                    try {
                        this.m_decoder.flush();
                    } catch (Exception unused) {
                    }
                    this.m_inputBufferQueued = false;
                    this.m_pendingInputFrameCount = 0;
                }
            } catch (Exception e) {
                Log.e(TAG, "" + e.getMessage());
                e.printStackTrace();
                return 2;
            }
        }
        return DecodeToFrame(j, j2);
    }

    private int DecodeToFrame(long j, long j2) {
        try {
            return DoDecodeToFrame(j, j2);
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            CleanupDecoder();
            return 2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0225 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int DoDecodeToFrame(long r30, long r32) throws android.media.MediaCodec.CryptoException {
        /*
            Method dump skipped, instructions count: 599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cdv.io.NvAndroidVideoFileReaderSW.DoDecodeToFrame(long, long):int");
    }

    private Image AwaitNewImage() {
        synchronized (this.m_frameSyncObject) {
            while (!this.m_imageReady) {
                try {
                    this.m_frameSyncObject.wait(ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
                    if (!this.m_imageReady) {
                        Log.e(TAG, "ImageReader wait timed out!");
                        return null;
                    }
                } catch (InterruptedException e) {
                    Log.e(TAG, "" + e.getMessage());
                    e.printStackTrace();
                    return null;
                }
            }
            this.m_imageReady = false;
            try {
                return this.m_imageReader.acquireLatestImage();
            } catch (Exception e2) {
                Log.e(TAG, "" + e2.getMessage());
                e2.printStackTrace();
                return null;
            }
        }
    }

    private void DrainOutputBuffers() {
        if (!this.m_sawInputEOS || this.m_sawOutputEOS) {
            return;
        }
        int i = 0;
        while (!this.m_sawOutputEOS) {
            int iDequeueOutputBuffer = this.m_decoder.dequeueOutputBuffer(this.m_bufferInfo, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            i++;
            if (iDequeueOutputBuffer != -1 && iDequeueOutputBuffer != -3 && iDequeueOutputBuffer != -2) {
                if (iDequeueOutputBuffer < 0) {
                    Log.e(TAG, "DrainDecoderBuffers(): Unexpected result from decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
                    return;
                }
                if ((this.m_bufferInfo.flags & 4) != 0) {
                    this.m_sawOutputEOS = true;
                }
                this.m_decoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                i = 0;
            }
            if (i > 100) {
                Log.e(TAG, "DrainDecoderBuffers(): We have tried too many times and can't decode a frame!");
                return;
            }
        }
    }

    private void InvalidLastSeekTimestamp() {
        this.m_lastSeekTimestamp = Long.MIN_VALUE;
        this.m_lastSeekActualTimestamp = Long.MIN_VALUE;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void ParseMediaFormat(android.media.MediaFormat r14) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cdv.io.NvAndroidVideoFileReaderSW.ParseMediaFormat(android.media.MediaFormat):void");
    }
}
