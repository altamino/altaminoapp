package com.cdv.io;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.scene.poll.ScenePollPlayView;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.concurrent.Semaphore;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* loaded from: classes.dex */
public class NvAndroidVideoFileReader implements SurfaceTexture.OnFrameAvailableListener {
    private static final int ERROR_EOF = 1;
    private static final int ERROR_FAIL = 2;
    private static final int ERROR_OK = 0;
    private static final String TAG = "NvAndroidVideoFileReader";
    private static Method m_setOnFrameAvailableListener2;
    private static final boolean m_verbose = false;
    private AssetManager m_assetManager;
    private MediaCodec.BufferInfo m_bufferInfo;
    private Handler m_handler;
    private Semaphore m_surfaceTextureCreationSemaphore;
    private int m_texId;
    private String m_videoFilePath;
    private MediaExtractor m_extractor = null;
    private int m_videoTrackIndex = -1;
    private MediaFormat m_format = null;
    private long m_duration = 0;
    private boolean m_extractorInOriginalState = true;
    private SurfaceTexture m_surfaceTexture = null;
    private Surface m_surface = null;
    private MediaCodec m_decoder = null;
    private boolean m_decoderSetupFailed = false;
    private boolean m_decoderStarted = false;
    ByteBuffer[] m_decoderInputBuffers = null;
    private Object m_frameSyncObject = new Object();
    private boolean m_frameAvailable = false;
    private long m_timestampOfLastDecodedFrame = Long.MIN_VALUE;
    private long m_timestampOfCurTexFrame = Long.MIN_VALUE;
    private boolean m_firstPlaybackTexFrameUnconsumed = false;
    private boolean m_inputBufferQueued = false;
    private int m_pendingInputFrameCount = 0;
    private boolean m_sawInputEOS = false;
    private boolean m_sawOutputEOS = false;
    private long m_timestampOfLastInputFrame = Long.MIN_VALUE;
    private long m_lastSeekTimestamp = Long.MIN_VALUE;
    private long m_lastSeekActualTimestamp = Long.MIN_VALUE;
    private int m_usedTemporalLayer = -1;
    private long m_temporalLayerEndTime = -1;
    private long m_contiuousDecodingThreshold = 1500000;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                m_setOnFrameAvailableListener2 = SurfaceTexture.class.getDeclaredMethod("setOnFrameAvailableListener", SurfaceTexture.OnFrameAvailableListener.class, Handler.class);
                Log.d(TAG, "New SurfaceTexture.setOnFrameAvailableListener() method is available!");
            } catch (Exception unused) {
                m_setOnFrameAvailableListener2 = null;
            }
        }
    }

    NvAndroidVideoFileReader(Handler handler) {
        this.m_handler = null;
        this.m_bufferInfo = null;
        this.m_handler = handler;
        this.m_bufferInfo = new MediaCodec.BufferInfo();
    }

    public boolean OpenFile(String str, int i, AssetManager assetManager, int i2, long j) throws IllegalAccessException, InterruptedException, IOException, IllegalArgumentException, InvocationTargetException {
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
            this.m_videoFilePath = str;
            this.m_assetManager = assetManager;
            int trackCount = this.m_extractor.getTrackCount();
            int i3 = 0;
            while (true) {
                if (i3 >= trackCount) {
                    break;
                }
                if (this.m_extractor.getTrackFormat(i3).getString(IMediaFormat.KEY_MIME).startsWith("video/")) {
                    this.m_videoTrackIndex = i3;
                    break;
                }
                i3++;
            }
            int i4 = this.m_videoTrackIndex;
            if (i4 < 0) {
                Log.e(TAG, "Failed to find a video track from " + str);
                CloseFile();
                return false;
            }
            this.m_extractor.selectTrack(i4);
            this.m_format = this.m_extractor.getTrackFormat(this.m_videoTrackIndex);
            if (Build.VERSION.SDK_INT == 16) {
                this.m_format.setInteger("max-input-size", 0);
            }
            if (Build.VERSION.SDK_INT >= 23 && i2 >= 0) {
                this.m_format.setInteger("operating-rate", i2 > 0 ? i2 : 120);
            }
            try {
                this.m_duration = this.m_format.getLong("durationUs");
                String string = this.m_format.getString(IMediaFormat.KEY_MIME);
                try {
                    if (m_setOnFrameAvailableListener2 != null) {
                        this.m_surfaceTexture = new SurfaceTexture(i);
                        m_setOnFrameAvailableListener2.invoke(this.m_surfaceTexture, this, this.m_handler);
                    } else {
                        this.m_surfaceTextureCreationSemaphore = new Semaphore(0);
                        this.m_texId = i;
                        this.m_handler.post(new Runnable() { // from class: com.cdv.io.NvAndroidVideoFileReader.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    NvAndroidVideoFileReader.this.m_surfaceTexture = new SurfaceTexture(NvAndroidVideoFileReader.this.m_texId);
                                    NvAndroidVideoFileReader.this.m_surfaceTextureCreationSemaphore.release();
                                } catch (Exception e) {
                                    Log.e(NvAndroidVideoFileReader.TAG, "" + e.getMessage());
                                    e.printStackTrace();
                                }
                            }
                        });
                        this.m_surfaceTextureCreationSemaphore.acquire();
                        this.m_surfaceTextureCreationSemaphore = null;
                        this.m_texId = 0;
                        if (this.m_surfaceTexture == null) {
                            CloseFile();
                            return false;
                        }
                        this.m_surfaceTexture.setOnFrameAvailableListener(this);
                    }
                    this.m_surface = new Surface(this.m_surfaceTexture);
                    this.m_decoderSetupFailed = false;
                    if (!SetupDecoder(string)) {
                        this.m_decoderSetupFailed = true;
                        CloseFile();
                        return false;
                    }
                    this.m_contiuousDecodingThreshold = j;
                    this.m_usedTemporalLayer = -1;
                    this.m_temporalLayerEndTime = -1L;
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
        } catch (Exception e3) {
            Log.e(TAG, "" + e3.getMessage());
            e3.printStackTrace();
            CloseFile();
            return false;
        }
    }

    public boolean hasDecoderSetupFailed() {
        return this.m_decoderSetupFailed;
    }

    public void CloseFile() {
        InvalidLastSeekTimestamp();
        CleanupDecoder();
        Surface surface = this.m_surface;
        if (surface != null) {
            surface.release();
            this.m_surface = null;
        }
        SurfaceTexture surfaceTexture = this.m_surfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.release();
            this.m_surfaceTexture = null;
        }
        MediaExtractor mediaExtractor = this.m_extractor;
        if (mediaExtractor != null) {
            mediaExtractor.release();
            this.m_extractor = null;
            this.m_videoTrackIndex = -1;
            this.m_format = null;
            this.m_duration = 0L;
            this.m_extractorInOriginalState = true;
        }
        this.m_usedTemporalLayer = -1;
        this.m_temporalLayerEndTime = -1L;
        this.m_videoFilePath = null;
        this.m_assetManager = null;
    }

    public void SetDecodeTemporalLayer(int i, long j) {
        if (i == this.m_usedTemporalLayer) {
            return;
        }
        this.m_temporalLayerEndTime = j;
        this.m_usedTemporalLayer = i;
    }

    public int SeekVideoFrame(long j, long j2) {
        if (!IsValid()) {
            return 1;
        }
        long jMax = Math.max(j, 0L);
        long j3 = this.m_duration;
        if (jMax >= j3) {
            if (jMax >= 40000 + j3) {
                return 1;
            }
            jMax = j3 - 1;
        }
        long j4 = this.m_timestampOfCurTexFrame;
        if (j4 != Long.MIN_VALUE && Math.abs(jMax - j4) <= j2) {
            return 0;
        }
        int iSeekInternal = SeekInternal(jMax, j2);
        if (iSeekInternal == 0) {
            this.m_lastSeekTimestamp = jMax;
            this.m_lastSeekActualTimestamp = this.m_timestampOfCurTexFrame;
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
        long j5 = this.m_timestampOfCurTexFrame;
        if (jMax == j5 && j5 == this.m_timestampOfLastDecodedFrame) {
            this.m_firstPlaybackTexFrameUnconsumed = true;
            return 0;
        }
        int iSeekInternal = SeekInternal(jMax, j2);
        InvalidLastSeekTimestamp();
        if (iSeekInternal != 0) {
            return iSeekInternal;
        }
        this.m_firstPlaybackTexFrameUnconsumed = true;
        return 0;
    }

    public int GetNextVideoFrameForPlayback() {
        if (!IsValid()) {
            return 1;
        }
        if (!this.m_firstPlaybackTexFrameUnconsumed) {
            int iDecodeToFrame = DecodeToFrame(Long.MIN_VALUE, 0L);
            InvalidLastSeekTimestamp();
            if (iDecodeToFrame != 0) {
                return iDecodeToFrame;
            }
        } else {
            this.m_firstPlaybackTexFrameUnconsumed = false;
        }
        return 0;
    }

    public long GetTimestampOfCurrentTextureFrame() {
        return this.m_timestampOfCurTexFrame;
    }

    public void GetTransformMatrixOfSurfaceTexture(float[] fArr) {
        SurfaceTexture surfaceTexture = this.m_surfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.getTransformMatrix(fArr);
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.m_frameSyncObject) {
            if (this.m_frameAvailable) {
                Log.e(TAG, "m_frameAvailable already set, frame could be dropped!");
            }
            this.m_frameAvailable = true;
            this.m_frameSyncObject.notifyAll();
        }
    }

    private boolean IsValid() {
        return this.m_decoder != null;
    }

    private boolean recreateMediaExtractor() throws IOException {
        try {
            this.m_extractor.release();
            this.m_extractor = new MediaExtractor();
            if (this.m_assetManager == null) {
                this.m_extractor.setDataSource(this.m_videoFilePath);
            } else {
                AssetFileDescriptor assetFileDescriptorOpenFd = this.m_assetManager.openFd(this.m_videoFilePath);
                this.m_extractor.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
                assetFileDescriptorOpenFd.close();
            }
            this.m_extractor.selectTrack(this.m_videoTrackIndex);
            this.m_extractorInOriginalState = true;
            return true;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            this.m_extractor = null;
            this.m_videoTrackIndex = -1;
            this.m_format = null;
            this.m_duration = 0L;
            this.m_extractorInOriginalState = true;
            CloseFile();
            return false;
        }
    }

    private boolean SetupDecoder(String str) {
        try {
            this.m_decoder = MediaCodec.createDecoderByType(str);
            this.m_decoder.configure(this.m_format, this.m_surface, (MediaCrypto) null, 0);
            this.m_decoder.start();
            this.m_decoderStarted = true;
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
        this.m_timestampOfLastDecodedFrame = Long.MIN_VALUE;
        this.m_timestampOfCurTexFrame = Long.MIN_VALUE;
        this.m_firstPlaybackTexFrameUnconsumed = false;
        this.m_pendingInputFrameCount = 0;
        this.m_timestampOfLastInputFrame = Long.MIN_VALUE;
        this.m_sawInputEOS = false;
        this.m_sawOutputEOS = false;
    }

    private int SeekInternal(long j, long j2) {
        long j3 = this.m_timestampOfLastDecodedFrame;
        boolean z = true;
        if ((j3 == Long.MIN_VALUE || j <= j3 || j >= j3 + this.m_contiuousDecodingThreshold) && (!this.m_extractorInOriginalState || j >= this.m_contiuousDecodingThreshold)) {
            z = false;
        }
        if (!z) {
            try {
                this.m_extractor.seekTo(j, 0);
                if (this.m_extractor.getSampleTime() < 0 && j < this.m_duration - 100000) {
                    Log.w(TAG, "Try to recreate MediaExtractor!");
                    if (!recreateMediaExtractor()) {
                        Log.e(TAG, "Failed to recreate MediaExtractor!");
                        CloseFile();
                        return 2;
                    }
                    this.m_extractor.seekTo(j, 0);
                }
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

    private int DoDecodeToFrame(long j, long j2) throws MediaCodec.CryptoException {
        boolean z;
        int iDequeueInputBuffer;
        int sampleData;
        long sampleTime;
        int iMax = Math.max(this.m_decoderInputBuffers.length / 3, 2);
        boolean z2 = false;
        int i = 0;
        do {
            boolean z3 = true;
            if (this.m_sawOutputEOS) {
                if (j != Long.MIN_VALUE) {
                    long j3 = this.m_timestampOfCurTexFrame;
                    if (j3 != Long.MIN_VALUE) {
                        if (z2) {
                            return 0;
                        }
                        if (this.m_sawInputEOS) {
                            long j4 = this.m_timestampOfLastInputFrame;
                            if (j4 != Long.MIN_VALUE && j3 >= j4) {
                                return 0;
                            }
                        }
                    }
                }
                return 1;
            }
            if (!this.m_sawInputEOS && (iDequeueInputBuffer = this.m_decoder.dequeueInputBuffer(4000L)) >= 0) {
                ByteBuffer byteBuffer = this.m_decoderInputBuffers[iDequeueInputBuffer];
                while (true) {
                    sampleData = this.m_extractor.readSampleData(byteBuffer, 0);
                    if (sampleData < 0) {
                        this.m_decoder.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                        this.m_sawInputEOS = true;
                        break;
                    }
                    if (this.m_extractor.getSampleTrackIndex() != this.m_videoTrackIndex) {
                        Log.w(TAG, "WEIRD: got sample from track " + this.m_extractor.getSampleTrackIndex() + ", expected " + this.m_videoTrackIndex);
                    }
                    sampleTime = this.m_extractor.getSampleTime();
                    if (((this.m_extractor.getSampleFlags() & 1) != 0) || !canSkipFrame(byteBuffer, sampleTime)) {
                        break;
                    }
                    this.m_extractor.advance();
                    this.m_extractorInOriginalState = false;
                }
                this.m_timestampOfLastInputFrame = sampleTime;
                this.m_decoder.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, sampleTime, 0);
                this.m_inputBufferQueued = true;
                this.m_pendingInputFrameCount++;
                this.m_extractor.advance();
                this.m_extractorInOriginalState = false;
            }
            int iDequeueOutputBuffer = this.m_decoder.dequeueOutputBuffer(this.m_bufferInfo, (this.m_pendingInputFrameCount > iMax || this.m_sawInputEOS) ? 4000 : 0);
            i++;
            if (iDequeueOutputBuffer != -1 && iDequeueOutputBuffer != -3) {
                if (iDequeueOutputBuffer == -2) {
                    this.m_decoder.getOutputFormat();
                } else {
                    if (iDequeueOutputBuffer < 0) {
                        Log.e(TAG, "Unexpected result from decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
                        return 2;
                    }
                    if ((this.m_bufferInfo.flags & 4) != 0) {
                        this.m_sawOutputEOS = true;
                    }
                    if (this.m_sawOutputEOS) {
                        z = false;
                        z3 = false;
                    } else {
                        this.m_timestampOfLastDecodedFrame = this.m_bufferInfo.presentationTimeUs;
                        this.m_pendingInputFrameCount--;
                        if (j == Long.MIN_VALUE) {
                            i = 0;
                            z = false;
                        } else {
                            boolean z4 = this.m_timestampOfLastDecodedFrame >= j - j2;
                            if (!z4 && this.m_sawInputEOS) {
                                long j5 = this.m_timestampOfLastInputFrame;
                                if (j5 != Long.MIN_VALUE && this.m_timestampOfLastDecodedFrame >= j5) {
                                    z2 = true;
                                    i = 0;
                                    z = true;
                                }
                            }
                            z3 = z4;
                            i = 0;
                            z = false;
                        }
                    }
                    if (z3) {
                        synchronized (this.m_frameSyncObject) {
                            this.m_frameAvailable = false;
                        }
                    }
                    this.m_decoder.releaseOutputBuffer(iDequeueOutputBuffer, z3);
                    if (z3) {
                        if (AwaitNewImage()) {
                            this.m_timestampOfCurTexFrame = this.m_bufferInfo.presentationTimeUs;
                            if (!z) {
                                return 0;
                            }
                        } else {
                            Log.e(TAG, "Render decoded frame to surface texture failed!");
                            return 2;
                        }
                    }
                }
            }
        } while (i <= 100);
        Log.e(TAG, "We have tried too many times and can't decode a frame!");
        return 2;
    }

    private boolean canSkipFrame(ByteBuffer byteBuffer, long j) {
        if (byteBuffer == null || this.m_usedTemporalLayer <= 0 || j >= this.m_temporalLayerEndTime) {
            return false;
        }
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        int i = bArr[4] & 31;
        if (bArr[0] == 0 && bArr[1] == 0 && bArr[2] == 0 && bArr[3] == 1 && (i == 14 || i == 20)) {
            if (!(((bArr[5] & 255) >> 7) > 0) || (((bArr[7] & 255) >> 5) & 7) <= this.m_usedTemporalLayer) {
                return false;
            }
        } else if (this.m_usedTemporalLayer <= 0) {
            return false;
        }
        return true;
    }

    private boolean AwaitNewImage() {
        synchronized (this.m_frameSyncObject) {
            while (!this.m_frameAvailable) {
                try {
                    this.m_frameSyncObject.wait(ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
                    if (!this.m_frameAvailable) {
                        Log.e(TAG, "Frame wait timed out!");
                        return false;
                    }
                } catch (InterruptedException e) {
                    Log.e(TAG, "" + e.getMessage());
                    e.printStackTrace();
                    return false;
                }
            }
            this.m_frameAvailable = false;
            try {
                this.m_surfaceTexture.updateTexImage();
                return true;
            } catch (Exception e2) {
                Log.e(TAG, "" + e2.getMessage());
                e2.printStackTrace();
                return false;
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
}
