package io.agora.rtc.audio;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import io.agora.rtc.internal.Logging;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes11.dex */
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

    private void addADTStoPacket(byte[] packet, int packetLen) {
        packet[0] = -1;
        packet[1] = -7;
        packet[2] = (byte) 84;
        packet[3] = (byte) (64 + (packetLen >> 11));
        packet[4] = (byte) ((packetLen & 2047) >> 3);
        packet[5] = (byte) (((packetLen & 7) << 5) + 31);
        packet[6] = -4;
    }

    public int encodeAACFrame(byte[] data) {
        int i10 = 0;
        try {
            int iDequeueInputBuffer = this.mAACEncoder.dequeueInputBuffer(2000L);
            if (iDequeueInputBuffer != -1) {
                ByteBuffer inputBuffer = this.mAACEncoder.getInputBuffer(iDequeueInputBuffer);
                inputBuffer.clear();
                inputBuffer.put(data);
                this.mAACEncoder.queueInputBuffer(iDequeueInputBuffer, 0, data.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mAACEncoder.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer < 0) {
                return 0;
            }
            int i11 = bufferInfo.size;
            ByteBuffer outputBuffer = this.mAACEncoder.getOutputBuffer(iDequeueOutputBuffer);
            int i12 = (bufferInfo.flags & 2) == 2 ? 0 : bufferInfo.size;
            try {
                outputBuffer.position(bufferInfo.offset);
                outputBuffer.limit(bufferInfo.offset + i11);
                this.mAACEncodedBuffer.position(0);
                this.mAACEncodedBuffer.put(outputBuffer);
                this.mAACEncoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                return i12;
            } catch (Exception e) {
                e = e;
                i10 = i12;
            }
        } catch (Exception e2) {
            e = e2;
        }
        Logging.e(this.TAG, "Error when encoding aac stream");
        e.printStackTrace();
        return i10;
    }

    public boolean createAACStreaming(int sampleRate, int channels, int encodeRate) {
        try {
            Logging.i(this.TAG, "Encoding aac with fs = " + sampleRate + ", bitrate = " + encodeRate);
            this.mAACEncoder = MediaCodec.createEncoderByType("audio/mp4a-latm");
            MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", sampleRate, channels);
            this.mAACFormat = mediaFormatCreateAudioFormat;
            mediaFormatCreateAudioFormat.setInteger("aac-profile", 2);
            this.mAACFormat.setInteger("sample-rate", sampleRate);
            this.mAACFormat.setInteger("channel-count", channels);
            this.mAACFormat.setInteger("bitrate", encodeRate);
            this.mAACEncoder.configure(this.mAACFormat, (Surface) null, (MediaCrypto) null, 1);
            MediaCodec mediaCodec = this.mAACEncoder;
            if (mediaCodec != null) {
                mediaCodec.start();
            }
            return true;
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when creating aac encode stream");
            e.printStackTrace();
            return false;
        }
    }

    public boolean createStreaming(String filename, int sampleRate, int channels, int quality) {
        try {
            Logging.i(this.TAG, "Recording aac with fs = " + sampleRate + ", ch = " + channels + ", quality = " + quality);
            String strSubstring = filename.substring(filename.length() + (-3));
            int i10 = 16000;
            if (strSubstring.equalsIgnoreCase("3gp") || strSubstring.equalsIgnoreCase("amr")) {
                if (sampleRate == 8000) {
                    this.mMediaCodec = MediaCodec.createEncoderByType("audio/3gpp");
                    MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/3gpp", sampleRate, channels);
                    this.mTrackFormat = mediaFormatCreateAudioFormat;
                    mediaFormatCreateAudioFormat.setInteger("bitrate", 12200);
                    this.mCodecString = "audio/3gpp";
                } else if (sampleRate == 16000) {
                    this.mMediaCodec = MediaCodec.createEncoderByType("audio/amr-wb");
                    MediaFormat mediaFormatCreateAudioFormat2 = MediaFormat.createAudioFormat("audio/amr-wb", sampleRate, channels);
                    this.mTrackFormat = mediaFormatCreateAudioFormat2;
                    mediaFormatCreateAudioFormat2.setInteger("bitrate", 23850);
                    this.mCodecString = "audio/amr-wb";
                }
            } else {
                if (!strSubstring.equalsIgnoreCase("aac")) {
                    return false;
                }
                if (quality != 0) {
                    i10 = quality != 1 ? 50000 : 25000;
                }
                this.mMediaCodec = MediaCodec.createEncoderByType("audio/mp4a-latm");
                MediaFormat mediaFormatCreateAudioFormat3 = MediaFormat.createAudioFormat("audio/mp4a-latm", sampleRate, channels);
                this.mTrackFormat = mediaFormatCreateAudioFormat3;
                mediaFormatCreateAudioFormat3.setInteger("aac-profile", 2);
                this.mTrackFormat.setInteger("sample-rate", sampleRate);
                this.mTrackFormat.setInteger("channel-count", channels);
                this.mTrackFormat.setInteger("bitrate", i10);
                this.mCodecString = "audio/mp4a-latm";
            }
            this.mMediaCodec.configure(this.mTrackFormat, (Surface) null, (MediaCrypto) null, 1);
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                mediaCodec.start();
            }
            File file = new File(filename);
            this.outputFile = file;
            touch(file);
            try {
                this.outputStream = new BufferedOutputStream(new FileOutputStream(this.outputFile));
                Logging.i(this.TAG, "outputStream initialized");
            } catch (Exception e) {
                e.printStackTrace();
            }
            String str = this.mCodecString;
            if (str == "audio/3gpp") {
                this.outputStream.write(new byte[]{35, 33, 65, 77, 82, 10});
            } else if (str == "audio/amr-wb") {
                this.outputStream.write(new byte[]{35, 33, 65, 77, 82, 45, 87, 66, 10});
            }
            return true;
        } catch (Exception e2) {
            Logging.e(this.TAG, "Error when creating aac file encoder");
            e2.printStackTrace();
            return false;
        }
    }

    public void encodeFrame(byte[] data) {
        try {
            int iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(2000L);
            if (iDequeueInputBuffer != -1) {
                ByteBuffer inputBuffer = this.mMediaCodec.getInputBuffer(iDequeueInputBuffer);
                inputBuffer.clear();
                inputBuffer.put(data);
                this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, data.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            while (iDequeueOutputBuffer >= 0) {
                int i10 = bufferInfo.size;
                ByteBuffer outputBuffer = this.mMediaCodec.getOutputBuffer(iDequeueOutputBuffer);
                outputBuffer.position(bufferInfo.offset);
                outputBuffer.limit(bufferInfo.offset + i10);
                String str = this.mCodecString;
                if (str == "audio/mp4a-latm") {
                    int i11 = i10 + 7;
                    byte[] bArr = new byte[i11];
                    addADTStoPacket(bArr, i11);
                    outputBuffer.get(bArr, 7, i10);
                    outputBuffer.position(bufferInfo.offset);
                    this.outputStream.write(bArr, 0, i11);
                } else if (str == "audio/3gpp" || str == "audio/amr-wb") {
                    byte[] bArr2 = new byte[i10];
                    outputBuffer.get(bArr2, 0, i10);
                    outputBuffer.position(bufferInfo.offset);
                    this.outputStream.write(bArr2, 0, i10);
                }
                this.mMediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when encoding aac file");
            e.printStackTrace();
        }
    }

    public void releaseAACStreaming() {
        try {
            MediaCodec mediaCodec = this.mAACEncoder;
            if (mediaCodec != null) {
                mediaCodec.stop();
                this.mAACEncoder.release();
                this.mAACEncoder = null;
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when releasing aac encode stream");
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
            BufferedOutputStream bufferedOutputStream = this.outputStream;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.flush();
                this.outputStream.close();
                this.outputStream = null;
            }
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when releasing aac file encoder");
            e.printStackTrace();
        }
    }

    public boolean setAACEncodeBitrate(int bitrate) {
        Logging.w(this.TAG, "Set hw aac bitrate = " + bitrate);
        try {
            MediaCodec mediaCodec = this.mAACEncoder;
            if (mediaCodec != null) {
                mediaCodec.stop();
                this.mAACFormat.setInteger("bitrate", bitrate);
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

    public void setChannelCount(int channels) {
        try {
            this.mTrackFormat.setInteger("channel-count", channels);
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when setting aac file encoder channel count");
            e.printStackTrace();
        }
    }

    public void setSampleRate(int sample_rate) {
        try {
            this.mTrackFormat.setInteger("sample-rate", sample_rate);
        } catch (Exception e) {
            Logging.e(this.TAG, "Error when setting aac file encoder sample rate");
            e.printStackTrace();
        }
    }

    private void touch(File f) {
        try {
            if (!f.exists()) {
                f.createNewFile();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
