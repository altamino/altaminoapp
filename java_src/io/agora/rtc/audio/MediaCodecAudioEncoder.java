package io.agora.rtc.audio;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.util.MimeTypes;
import io.agora.rtc.internal.Logging;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes4.dex */
public class MediaCodecAudioEncoder {
    private ByteBuffer[] mAACInputBuffers;
    private ByteBuffer[] mAACOutputBuffers;
    private ByteBuffer[] mInputBuffers;
    private ByteBuffer[] mOutputBuffers;
    private MediaCodec mMediaCodec = null;
    private MediaFormat mTrackFormat = null;
    private String mCodecString = null;
    private File outputFile = null;
    private BufferedOutputStream outputStream = null;
    private MediaCodec mAACEncoder = null;
    private MediaFormat mAACFormat = null;
    private ByteBuffer mAACEncodedBuffer = ByteBuffer.allocateDirect(1024);
    private String TAG = "MediaCodec Audio Encoder";

    public boolean createStreaming(String str, int i, int i2, int i3) {
        try {
            Logging.i(this.TAG, "Recording aac with fs = " + i + ", ch = " + i2 + ", quality = " + i3);
            String strSubstring = str.substring(str.length() - 3);
            if (strSubstring.equalsIgnoreCase("3gp") || strSubstring.equalsIgnoreCase("amr")) {
                if (i == 8000) {
                    this.mMediaCodec = MediaCodec.createEncoderByType(MimeTypes.AUDIO_AMR_NB);
                    this.mTrackFormat = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AMR_NB, i, i2);
                    this.mTrackFormat.setInteger("bitrate", 12200);
                    this.mCodecString = MimeTypes.AUDIO_AMR_NB;
                } else if (i == 16000) {
                    this.mMediaCodec = MediaCodec.createEncoderByType(MimeTypes.AUDIO_AMR_WB);
                    this.mTrackFormat = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AMR_WB, i, i2);
                    this.mTrackFormat.setInteger("bitrate", 23850);
                    this.mCodecString = MimeTypes.AUDIO_AMR_WB;
                }
            } else {
                if (!strSubstring.equalsIgnoreCase("aac")) {
                    return false;
                }
                int i4 = i3 != 0 ? i3 != 1 ? DefaultLoadControl.DEFAULT_MAX_BUFFER_MS : 25000 : 16000;
                this.mMediaCodec = MediaCodec.createEncoderByType(MimeTypes.AUDIO_AAC);
                this.mTrackFormat = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AAC, i, i2);
                int[] iArr = {2, 5, 39};
                this.mTrackFormat.setInteger("aac-profile", 2);
                this.mTrackFormat.setInteger("sample-rate", i);
                this.mTrackFormat.setInteger("channel-count", i2);
                this.mTrackFormat.setInteger("bitrate", i4);
                this.mCodecString = MimeTypes.AUDIO_AAC;
            }
            this.mMediaCodec.configure(this.mTrackFormat, (Surface) null, (MediaCrypto) null, 1);
            if (this.mMediaCodec != null) {
                this.mMediaCodec.start();
            }
            this.outputFile = new File(str);
            touch(this.outputFile);
            try {
                this.outputStream = new BufferedOutputStream(new FileOutputStream(this.outputFile));
                Logging.i(this.TAG, "outputStream initialized");
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.mCodecString == MimeTypes.AUDIO_AMR_NB) {
                this.outputStream.write(new byte[]{35, 33, 65, 77, 82, 10});
            } else if (this.mCodecString == MimeTypes.AUDIO_AMR_WB) {
                this.outputStream.write(new byte[]{35, 33, 65, 77, 82, 45, 87, 66, 10});
            }
            return true;
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when creating aac file encoder");
            e2.printStackTrace();
            return false;
        }
    }

    public void setChannelCount(int i) {
        try {
            this.mTrackFormat.setInteger("channel-count", i);
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when setting aac file encoder channel count");
            e.printStackTrace();
        }
    }

    public void setSampleRate(int i) {
        try {
            this.mTrackFormat.setInteger("sample-rate", i);
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when setting aac file encoder sample rate");
            e.printStackTrace();
        }
    }

    public void releaseStreaming() throws IOException {
        try {
            if (this.mMediaCodec != null) {
                this.mMediaCodec.stop();
                this.mMediaCodec.release();
                this.mMediaCodec = null;
            }
            if (this.outputStream != null) {
                this.outputStream.flush();
                this.outputStream.close();
                this.outputStream = null;
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when releasing aac file encoder");
            e.printStackTrace();
        }
    }

    public void encodeFrame(byte[] bArr) throws MediaCodec.CryptoException, IOException {
        ByteBuffer outputBuffer;
        ByteBuffer inputBuffer;
        try {
            int iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(2000L);
            if (iDequeueInputBuffer != -1) {
                if (Build.VERSION.SDK_INT >= 21) {
                    inputBuffer = this.mMediaCodec.getInputBuffer(iDequeueInputBuffer);
                } else {
                    this.mInputBuffers = this.mMediaCodec.getInputBuffers();
                    inputBuffer = this.mInputBuffers[iDequeueInputBuffer];
                }
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, bArr.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            while (iDequeueOutputBuffer >= 0) {
                int i = bufferInfo.size;
                if (Build.VERSION.SDK_INT >= 21) {
                    outputBuffer = this.mMediaCodec.getOutputBuffer(iDequeueOutputBuffer);
                } else {
                    this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                    outputBuffer = this.mOutputBuffers[iDequeueOutputBuffer];
                }
                outputBuffer.position(bufferInfo.offset);
                outputBuffer.limit(bufferInfo.offset + i);
                if (this.mCodecString == MimeTypes.AUDIO_AAC) {
                    int i2 = i + 7;
                    byte[] bArr2 = new byte[i2];
                    addADTStoPacket(bArr2, i2);
                    outputBuffer.get(bArr2, 7, i);
                    outputBuffer.position(bufferInfo.offset);
                    this.outputStream.write(bArr2, 0, bArr2.length);
                } else if (this.mCodecString == MimeTypes.AUDIO_AMR_NB || this.mCodecString == MimeTypes.AUDIO_AMR_WB) {
                    byte[] bArr3 = new byte[i];
                    outputBuffer.get(bArr3, 0, i);
                    outputBuffer.position(bufferInfo.offset);
                    this.outputStream.write(bArr3, 0, bArr3.length);
                }
                this.mMediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when encoding aac file");
            e.printStackTrace();
        }
    }

    private void addADTStoPacket(byte[] bArr, int i) {
        bArr[0] = -1;
        bArr[1] = -7;
        bArr[2] = (byte) 84;
        bArr[3] = (byte) (64 + (i >> 11));
        bArr[4] = (byte) ((i & 2047) >> 3);
        bArr[5] = (byte) (((i & 7) << 5) + 31);
        bArr[6] = -4;
    }

    private void touch(File file) throws IOException {
        try {
            if (file.exists()) {
                return;
            }
            file.createNewFile();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean createAACStreaming(int i, int i2, int i3) {
        try {
            Logging.i(this.TAG, "Encoding aac with fs = " + i + ", bitrate = " + i3);
            this.mAACEncoder = MediaCodec.createEncoderByType(MimeTypes.AUDIO_AAC);
            this.mAACFormat = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AAC, i, i2);
            int[] iArr = {2, 5, 39};
            this.mAACFormat.setInteger("aac-profile", 2);
            this.mAACFormat.setInteger("sample-rate", i);
            this.mAACFormat.setInteger("channel-count", i2);
            this.mAACFormat.setInteger("bitrate", i3);
            this.mAACEncoder.configure(this.mAACFormat, (Surface) null, (MediaCrypto) null, 1);
            if (this.mAACEncoder != null) {
                this.mAACEncoder.start();
            }
            return true;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when creating aac encode stream");
            e.printStackTrace();
            return false;
        }
    }

    public boolean setAACEncodeBitrate(int i) {
        Logging.w(this.TAG, "Set hw aac bitrate = " + i);
        try {
            if (this.mAACEncoder != null) {
                this.mAACEncoder.stop();
                this.mAACFormat.setInteger("bitrate", i);
                this.mAACEncoder.configure(this.mAACFormat, (Surface) null, (MediaCrypto) null, 1);
                this.mAACEncoder.start();
            }
            return true;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when setting aac encode bitrate");
            e.printStackTrace();
            return false;
        }
    }

    public void releaseAACStreaming() {
        try {
            if (this.mAACEncoder != null) {
                this.mAACEncoder.stop();
                this.mAACEncoder.release();
                this.mAACEncoder = null;
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when releasing aac encode stream");
            e.printStackTrace();
        }
    }

    public int encodeAACFrame(byte[] bArr) throws MediaCodec.CryptoException {
        ByteBuffer outputBuffer;
        ByteBuffer inputBuffer;
        int i = 0;
        try {
            int iDequeueInputBuffer = this.mAACEncoder.dequeueInputBuffer(2000L);
            if (iDequeueInputBuffer != -1) {
                if (Build.VERSION.SDK_INT >= 21) {
                    inputBuffer = this.mAACEncoder.getInputBuffer(iDequeueInputBuffer);
                } else {
                    this.mAACInputBuffers = this.mAACEncoder.getInputBuffers();
                    inputBuffer = this.mAACInputBuffers[iDequeueInputBuffer];
                }
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.mAACEncoder.queueInputBuffer(iDequeueInputBuffer, 0, bArr.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mAACEncoder.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer < 0) {
                return 0;
            }
            int i2 = bufferInfo.size;
            if (Build.VERSION.SDK_INT >= 21) {
                outputBuffer = this.mAACEncoder.getOutputBuffer(iDequeueOutputBuffer);
            } else {
                this.mAACOutputBuffers = this.mAACEncoder.getOutputBuffers();
                outputBuffer = this.mAACOutputBuffers[iDequeueOutputBuffer];
            }
            int i3 = (bufferInfo.flags & 2) == 2 ? 0 : bufferInfo.size;
            try {
                outputBuffer.position(bufferInfo.offset);
                outputBuffer.limit(bufferInfo.offset + i2);
                this.mAACEncodedBuffer.position(0);
                this.mAACEncodedBuffer.put(outputBuffer);
                this.mAACEncoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                return i3;
            } catch (Exception e) {
                e = e;
                i = i3;
                Logging.e(this.TAG, "Error when encoding aac stream");
                e.printStackTrace();
                return i;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
