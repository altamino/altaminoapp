package io.agora.rtc.audio;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.webkit.ProxyConfig;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.narvii.chat.video.RtcChatManager;
import io.agora.rtc.internal.Logging;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class MediaCodecAudioDecoder {
    private static int HTTP_REQUEST_TIMEOUT = 400;
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

    private boolean checkInfoChange() {
        try {
            MediaFormat outputFormat = this.mMediaCodec.getOutputFormat();
            int integer = outputFormat.getInteger("sample-rate");
            if (integer == 22050) {
                integer = 22000;
            } else if (integer == 11025) {
                integer = 11000;
            }
            int integer2 = outputFormat.getInteger("channel-count");
            boolean z6 = (this.mSampleRate == integer && this.mChannels == integer2) ? false : true;
            this.mSampleRate = integer;
            this.mChannels = integer2;
            return z6;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when checking file's new format");
            e.printStackTrace();
            return false;
        }
    }

    public boolean checkAACSupported() {
        try {
            for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
                if (!mediaCodecInfo.isEncoder() && mediaCodecInfo.getName().toLowerCase().contains("nvidia")) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when checking aac codec availability");
            e.printStackTrace();
            return false;
        }
    }

    public boolean createStreaming(String filename) {
        try {
            Logging.i(this.TAG, "Try to decode audio file : " + filename);
            this.mRetryCount = 0;
            boolean zStartsWith = filename.startsWith("/assets/");
            boolean zStartsWith2 = filename.toLowerCase().startsWith(ProxyConfig.MATCH_HTTP);
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.mExtractor = mediaExtractor;
            if (zStartsWith) {
                Context context = this.mContext;
                if (context == null) {
                    return false;
                }
                AssetFileDescriptor assetFileDescriptorOpenFd = context.getAssets().openFd(filename.substring(8));
                this.mExtractor.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
            } else if (zStartsWith2) {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(filename).openConnection()));
                    httpURLConnection.setConnectTimeout(HTTP_REQUEST_TIMEOUT);
                    httpURLConnection.setReadTimeout(HTTP_REQUEST_TIMEOUT);
                    httpURLConnection.connect();
                    if (httpURLConnection.getResponseCode() != 200) {
                        return false;
                    }
                    this.mExtractor.setDataSource(filename);
                } catch (SocketTimeoutException unused) {
                    Logging.e(this.TAG, "Connect timeout on URL : " + filename);
                    return false;
                } catch (IOException unused2) {
                    Logging.e(this.TAG, "Connect IOException on URL : " + filename);
                    return false;
                }
            } else {
                mediaExtractor.setDataSource(filename);
            }
            int trackCount = this.mExtractor.getTrackCount();
            for (int i10 = 0; i10 < trackCount; i10++) {
                this.mExtractor.unselectTrack(i10);
            }
            for (int i11 = 0; i11 < trackCount; i11++) {
                MediaFormat trackFormat = this.mExtractor.getTrackFormat(i11);
                this.mTrackFormat = trackFormat;
                String string = trackFormat.getString("mime");
                if (string.contains("audio/")) {
                    this.mExtractor.selectTrack(i11);
                    MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(string);
                    this.mMediaCodec = mediaCodecCreateDecoderByType;
                    mediaCodecCreateDecoderByType.configure(this.mTrackFormat, (Surface) null, (MediaCrypto) null, 0);
                    break;
                }
            }
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                mediaCodec.start();
            }
            this.mChannels = this.mTrackFormat.getInteger("channel-count");
            int integer = this.mTrackFormat.getInteger("sample-rate");
            this.mSampleRate = integer;
            if (integer == 22050) {
                this.mSampleRate = 22000;
            } else if (integer == 11025) {
                this.mSampleRate = 11000;
            }
            this.mFileLength = this.mTrackFormat.getLong("durationUs");
            return true;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when creating aac audio file decoder");
            e.printStackTrace();
            return false;
        }
    }

    public int decodeAACFrame(byte[] encoded_data) {
        int i10 = 0;
        try {
            int iDequeueInputBuffer = this.mAACDecoder.dequeueInputBuffer(200L);
            if (iDequeueInputBuffer >= 0) {
                ByteBuffer inputBuffer = this.mAACDecoder.getInputBuffer(iDequeueInputBuffer);
                inputBuffer.clear();
                inputBuffer.put(encoded_data);
                this.mAACDecoder.queueInputBuffer(iDequeueInputBuffer, 0, encoded_data.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mAACDecoder.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 || iDequeueOutputBuffer == -2 || iDequeueOutputBuffer == -1 || iDequeueOutputBuffer < 0) {
                return 0;
            }
            ByteBuffer outputBuffer = this.mAACDecoder.getOutputBuffer(iDequeueOutputBuffer);
            int i11 = bufferInfo.size;
            try {
                this.mAACOutputBuffer.position(0);
                outputBuffer.limit(i11);
                this.mAACOutputBuffer.put(outputBuffer);
                this.mAACDecoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                return i11;
            } catch (Exception e) {
                i10 = i11;
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
        }
        Logging.e(this.TAG, "Error when decoding aac stream");
        e.printStackTrace();
        return i10;
    }

    public int getChannelCount() {
        return this.mChannels;
    }

    public boolean getDecodeDataReadyFlag() {
        return this.mDecodedDataReady;
    }

    public long getFileLength() {
        return this.mFileLength;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    private void cloneByteBuffer(final ByteBuffer original) {
        try {
            ByteBuffer byteBuffer = this.mDecodedRAWBuffer;
            if (byteBuffer == null || byteBuffer.limit() != original.limit()) {
                ByteBuffer byteBuffer2 = this.mDecodedRAWBuffer;
                if (byteBuffer2 != null) {
                    byteBuffer2.clear();
                    this.mDecodedRAWBuffer = null;
                }
                this.mDecodedRAWBuffer = ByteBuffer.allocateDirect(original.limit());
            }
            this.mDecodedRAWBuffer.position(0);
            this.mDecodedRAWBuffer.put(original);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void cloneByteBufferByLength(final ByteBuffer original, int length) {
        try {
            ByteBuffer byteBuffer = this.mDecodedRAWBuffer;
            if (byteBuffer == null || byteBuffer.capacity() < length) {
                ByteBuffer byteBuffer2 = this.mDecodedRAWBuffer;
                if (byteBuffer2 != null) {
                    byteBuffer2.clear();
                    this.mDecodedRAWBuffer = null;
                }
                this.mDecodedRAWBuffer = ByteBuffer.allocateDirect(length);
            }
            this.mDecodedRAWBuffer.position(0);
            original.limit(length);
            this.mDecodedRAWBuffer.put(original);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean createAACStreaming(int sample_rate) {
        try {
            this.mAACDecoder = MediaCodec.createDecoderByType("audio/mp4a-latm");
            MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", sample_rate, 1);
            mediaFormatCreateAudioFormat.setInteger("sample-rate", sample_rate);
            mediaFormatCreateAudioFormat.setInteger("channel-count", 1);
            mediaFormatCreateAudioFormat.setByteBuffer("csd-0", ByteBuffer.wrap(new byte[]{com.google.common.base.c.DC2, -120}));
            this.mAACDecoder.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 0);
            MediaCodec mediaCodec = this.mAACDecoder;
            if (mediaCodec != null) {
                mediaCodec.start();
            }
            return true;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when creating aac decode stream");
            e.printStackTrace();
            return false;
        }
    }

    public boolean decodeFrame() {
        int iDequeueInputBuffer;
        int i10;
        try {
            if (!this.eoInputStream && (iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(0L)) >= 0) {
                int sampleData = this.mExtractor.readSampleData(this.mMediaCodec.getInputBuffer(iDequeueInputBuffer), 0);
                if (sampleData <= 0) {
                    this.eoInputStream = true;
                    i10 = 0;
                } else {
                    i10 = sampleData;
                }
                long sampleTime = this.mExtractor.getSampleTime();
                int sampleFlags = this.mExtractor.getSampleFlags();
                if (this.eoInputStream) {
                    sampleFlags |= 4;
                }
                this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, i10, sampleTime, sampleFlags);
                this.mExtractor.advance();
            }
            if (!this.eoOutputStream) {
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
                this.mDecodedDataReady = false;
                if (iDequeueOutputBuffer != -3 && iDequeueOutputBuffer != -2) {
                    if (iDequeueOutputBuffer != -1) {
                        this.mRetryCount = 0;
                        if (iDequeueOutputBuffer >= 0) {
                            if ((bufferInfo.flags & 4) == 4) {
                                this.eoOutputStream = true;
                            }
                            cloneByteBuffer(this.mMediaCodec.getOutputBuffer(iDequeueOutputBuffer));
                            this.mMediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                            this.mDecodedDataReady = true;
                        }
                    } else {
                        int i11 = this.mRetryCount + 1;
                        this.mRetryCount = i11;
                        if (i11 >= MAX_DECODER_RETRY_COUNT) {
                            Logging.e(this.TAG, "EAGAIN count=" + this.mRetryCount + " presentationTimeUs=" + bufferInfo.presentationTimeUs + " totalUs=" + this.mFileLength + " Force EOS");
                            this.eoOutputStream = true;
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

    public long getCurrentFilePosition() {
        return this.mExtractor.getSampleTime();
    }

    public void releaseAACStreaming() {
        try {
            MediaCodec mediaCodec = this.mAACDecoder;
            if (mediaCodec != null) {
                mediaCodec.stop();
                this.mAACDecoder.release();
                this.mAACDecoder = null;
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when releasing aac decode stream");
            e.printStackTrace();
        }
    }

    public void releaseStreaming() {
        try {
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                mediaCodec.stop();
                this.mMediaCodec.release();
                this.mMediaCodec = null;
            }
            MediaExtractor mediaExtractor = this.mExtractor;
            if (mediaExtractor != null) {
                mediaExtractor.release();
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

    public void setCurrentFilePosition(long position) {
        this.mExtractor.seekTo(position, 2);
    }
}
