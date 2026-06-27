package io.agora.rtc.audio;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.chat.video.RtcChatManager;
import io.agora.rtc.internal.Logging;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.ByteBuffer;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* loaded from: classes4.dex */
public class MediaCodecAudioDecoder {
    private static int HTTP_REQUEST_TIMEOUT = 3000;
    private static int MAX_DECODER_RETRY_COUNT = 300;
    private ByteBuffer mDecodedRAWBuffer;
    private long mFileLength;
    private ByteBuffer[] mInputBuffers;
    private ByteBuffer[] mOutputBuffers;
    private Context mContext = null;
    private MediaCodec mMediaCodec = null;
    private MediaExtractor mExtractor = null;
    private MediaFormat mTrackFormat = null;
    private boolean mDecodedDataReady = false;
    private boolean eoInputStream = false;
    private boolean eoOutputStream = false;
    private int mSampleRate = RtcChatManager.SAMPLE_RATE;
    private int mChannels = 2;
    private int mRetryCount = 0;
    private MediaCodec mAACDecoder = null;
    private ByteBuffer mAACOutputBuffer = ByteBuffer.allocateDirect(4096);
    private String TAG = "MediaCodec Audio Decoder";

    public boolean createStreaming(String str) throws IOException {
        try {
            Logging.i(this.TAG, "Try to decode audio file : " + str);
            this.mRetryCount = 0;
            boolean zStartsWith = str.startsWith("/assets/");
            boolean zStartsWith2 = str.toLowerCase().startsWith("http");
            this.mExtractor = new MediaExtractor();
            if (zStartsWith) {
                if (this.mContext == null) {
                    return false;
                }
                AssetFileDescriptor assetFileDescriptorOpenFd = this.mContext.getAssets().openFd(str.substring(8));
                this.mExtractor.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
            } else if (zStartsWith2) {
                try {
                    HttpURLConnection.setFollowRedirects(false);
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                    httpURLConnection.setConnectTimeout(HTTP_REQUEST_TIMEOUT);
                    httpURLConnection.setReadTimeout(HTTP_REQUEST_TIMEOUT);
                    httpURLConnection.connect();
                    if (httpURLConnection.getResponseCode() != 200) {
                        return false;
                    }
                    this.mExtractor.setDataSource(str);
                } catch (SocketTimeoutException unused) {
                    Logging.e(this.TAG, "Connect timeout on URL : " + str);
                    return false;
                } catch (IOException unused2) {
                    Logging.e(this.TAG, "Connect IOException on URL : " + str);
                    return false;
                }
            } else {
                this.mExtractor.setDataSource(str);
            }
            int trackCount = this.mExtractor.getTrackCount();
            for (int i = 0; i < trackCount; i++) {
                this.mExtractor.unselectTrack(i);
            }
            int i2 = 0;
            while (true) {
                if (i2 >= trackCount) {
                    break;
                }
                this.mTrackFormat = this.mExtractor.getTrackFormat(i2);
                String string = this.mTrackFormat.getString(IMediaFormat.KEY_MIME);
                if (string.contains("audio/")) {
                    this.mExtractor.selectTrack(i2);
                    this.mMediaCodec = MediaCodec.createDecoderByType(string);
                    this.mMediaCodec.configure(this.mTrackFormat, (Surface) null, (MediaCrypto) null, 0);
                    break;
                }
                i2++;
            }
            if (this.mMediaCodec != null) {
                this.mMediaCodec.start();
            }
            this.mChannels = this.mTrackFormat.getInteger("channel-count");
            this.mSampleRate = this.mTrackFormat.getInteger("sample-rate");
            this.mFileLength = this.mTrackFormat.getLong("durationUs");
            return true;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when creating aac audio file decoder");
            e.printStackTrace();
            return false;
        }
    }

    public int getChannelCount() {
        return this.mChannels;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public long getFileLength() {
        return this.mFileLength;
    }

    public long getCurrentFilePosition() {
        return this.mExtractor.getSampleTime();
    }

    public void setCurrentFilePosition(long j) {
        this.mExtractor.seekTo(j, 2);
    }

    public boolean getDecodeDataReadyFlag() {
        return this.mDecodedDataReady;
    }

    public void releaseStreaming() {
        try {
            if (this.mMediaCodec != null) {
                this.mMediaCodec.stop();
                this.mMediaCodec.release();
                this.mMediaCodec = null;
            }
            if (this.mExtractor != null) {
                this.mExtractor.release();
                this.mExtractor = null;
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when releasing audio file stream");
            e.printStackTrace();
        }
        this.eoOutputStream = false;
        this.eoInputStream = false;
    }

    public void rewindStreaming() {
        try {
            this.mExtractor.seekTo(0L, 1);
            this.mMediaCodec.flush();
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when rewinding audio file stream");
            e.printStackTrace();
        }
        this.eoInputStream = false;
        this.eoOutputStream = false;
        this.mDecodedDataReady = false;
    }

    public boolean decodeFrame() throws MediaCodec.CryptoException {
        int iDequeueInputBuffer;
        ByteBuffer inputBuffer;
        int i;
        try {
            if (!this.eoInputStream && (iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(0L)) >= 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    inputBuffer = this.mMediaCodec.getInputBuffer(iDequeueInputBuffer);
                } else {
                    this.mInputBuffers = this.mMediaCodec.getInputBuffers();
                    inputBuffer = this.mInputBuffers[iDequeueInputBuffer];
                }
                int sampleData = this.mExtractor.readSampleData(inputBuffer, 0);
                if (sampleData <= 0) {
                    this.eoInputStream = true;
                    i = 0;
                } else {
                    i = sampleData;
                }
                long sampleTime = this.mExtractor.getSampleTime();
                int sampleFlags = this.mExtractor.getSampleFlags();
                if (this.eoInputStream) {
                    sampleFlags |= 4;
                }
                this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, i, sampleTime, sampleFlags);
                this.mExtractor.advance();
            }
            if (!this.eoOutputStream) {
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
                this.mDecodedDataReady = false;
                if (iDequeueOutputBuffer != -3 && iDequeueOutputBuffer != -2) {
                    if (iDequeueOutputBuffer == -1) {
                        this.mRetryCount++;
                        if (this.mRetryCount >= MAX_DECODER_RETRY_COUNT && (Build.BRAND.toLowerCase().contains("meizu") || Build.MANUFACTURER.toLowerCase().contains("meizu") || Build.BRAND.toLowerCase().contains("vivo") || Build.MANUFACTURER.toLowerCase().contains("vivo"))) {
                            Logging.e(this.TAG, "EAGAIN count=" + this.mRetryCount + " presentationTimeUs=" + bufferInfo.presentationTimeUs + " totalUs=" + this.mFileLength + " Force EOS");
                            this.eoOutputStream = true;
                        }
                    } else {
                        this.mRetryCount = 0;
                        if (iDequeueOutputBuffer >= 0) {
                            if ((bufferInfo.flags & 4) == 4) {
                                this.eoOutputStream = true;
                            }
                            if (Build.VERSION.SDK_INT >= 21) {
                                cloneByteBuffer(this.mMediaCodec.getOutputBuffer(iDequeueOutputBuffer));
                            } else {
                                this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                                cloneByteBufferByLength(this.mOutputBuffers[iDequeueOutputBuffer], bufferInfo.size);
                            }
                            this.mMediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                            this.mDecodedDataReady = true;
                        }
                    }
                }
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when decoding audio file stream");
            e.printStackTrace();
        }
        return this.eoOutputStream;
    }

    private boolean checkInfoChange() {
        if (Build.VERSION.SDK_INT < 19) {
            return false;
        }
        try {
            MediaFormat outputFormat = this.mMediaCodec.getOutputFormat();
            int integer = outputFormat.getInteger("sample-rate");
            int integer2 = outputFormat.getInteger("channel-count");
            boolean z = (this.mSampleRate == integer && this.mChannels == integer2) ? false : true;
            this.mSampleRate = integer;
            this.mChannels = integer2;
            return z;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when checking file's new format");
            e.printStackTrace();
            return false;
        }
    }

    private void cloneByteBuffer(ByteBuffer byteBuffer) {
        try {
            if (this.mDecodedRAWBuffer == null || this.mDecodedRAWBuffer.limit() != byteBuffer.limit()) {
                if (this.mDecodedRAWBuffer != null) {
                    this.mDecodedRAWBuffer.clear();
                    this.mDecodedRAWBuffer = null;
                }
                this.mDecodedRAWBuffer = ByteBuffer.allocateDirect(byteBuffer.limit());
            }
            this.mDecodedRAWBuffer.position(0);
            this.mDecodedRAWBuffer.put(byteBuffer);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void cloneByteBufferByLength(ByteBuffer byteBuffer, int i) {
        try {
            if (this.mDecodedRAWBuffer == null || this.mDecodedRAWBuffer.capacity() < i) {
                if (this.mDecodedRAWBuffer != null) {
                    this.mDecodedRAWBuffer.clear();
                    this.mDecodedRAWBuffer = null;
                }
                this.mDecodedRAWBuffer = ByteBuffer.allocateDirect(i);
            }
            this.mDecodedRAWBuffer.position(0);
            byteBuffer.limit(i);
            this.mDecodedRAWBuffer.put(byteBuffer);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean checkAACSupported() {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
                    if (!mediaCodecInfo.isEncoder() && mediaCodecInfo.getName().toLowerCase().contains("nvidia")) {
                        return false;
                    }
                }
            } else {
                int codecCount = MediaCodecList.getCodecCount();
                for (int i = 0; i < codecCount; i++) {
                    MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                    if (!codecInfoAt.isEncoder() && codecInfoAt.getName().toLowerCase().contains("nvidia")) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when checking aac codec availability");
            e.printStackTrace();
            return false;
        }
    }

    public boolean createAACStreaming(int i) {
        try {
            this.mAACDecoder = MediaCodec.createDecoderByType(MimeTypes.AUDIO_AAC);
            MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AAC, i, 1);
            mediaFormatCreateAudioFormat.setInteger("sample-rate", i);
            mediaFormatCreateAudioFormat.setInteger("channel-count", 1);
            mediaFormatCreateAudioFormat.setByteBuffer("csd-0", ByteBuffer.wrap(new byte[]{18, -120}));
            this.mAACDecoder.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 0);
            if (this.mAACDecoder != null) {
                this.mAACDecoder.start();
            }
            return true;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when creating aac decode stream");
            e.printStackTrace();
            return false;
        }
    }

    public void releaseAACStreaming() {
        try {
            if (this.mAACDecoder != null) {
                this.mAACDecoder.stop();
                this.mAACDecoder.release();
                this.mAACDecoder = null;
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when releasing aac decode stream");
            e.printStackTrace();
        }
    }

    public int decodeAACFrame(byte[] bArr) throws MediaCodec.CryptoException {
        ByteBuffer outputBuffer;
        ByteBuffer inputBuffer;
        int i = 0;
        try {
            int iDequeueInputBuffer = this.mAACDecoder.dequeueInputBuffer(200L);
            if (iDequeueInputBuffer >= 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    inputBuffer = this.mAACDecoder.getInputBuffer(iDequeueInputBuffer);
                } else {
                    inputBuffer = this.mAACDecoder.getInputBuffers()[iDequeueInputBuffer];
                }
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.mAACDecoder.queueInputBuffer(iDequeueInputBuffer, 0, bArr.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mAACDecoder.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 || iDequeueOutputBuffer == -2 || iDequeueOutputBuffer == -1 || iDequeueOutputBuffer < 0) {
                return 0;
            }
            if (Build.VERSION.SDK_INT >= 21) {
                outputBuffer = this.mAACDecoder.getOutputBuffer(iDequeueOutputBuffer);
            } else {
                outputBuffer = this.mAACDecoder.getOutputBuffers()[iDequeueOutputBuffer];
            }
            int i2 = bufferInfo.size;
            try {
                this.mAACOutputBuffer.position(0);
                outputBuffer.limit(i2);
                this.mAACOutputBuffer.put(outputBuffer);
                this.mAACDecoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                return i2;
            } catch (Exception e) {
                i = i2;
                e = e;
                Logging.e(this.TAG, "Error when decoding aac stream");
                e.printStackTrace();
                return i;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
