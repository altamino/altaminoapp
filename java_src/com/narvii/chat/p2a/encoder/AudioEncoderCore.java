package com.narvii.chat.p2a.encoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;

@TargetApi(16)
/* loaded from: classes2.dex */
public class AudioEncoderCore {
    private static final int BIT_RATE = 128000;
    private static final int FRAMES_PER_BUFFER = 24;
    private static final String MIME_TYPE = "audio/mp4a-latm";
    private static final int SAMPLES_PER_FRAME = 2048;
    private static final int SAMPLE_RATE = 44100;
    private static final String TAG = "AudioEncoder";
    private static final int TIMEOUT_USEC = 10000;
    private static final boolean VERBOSE = false;
    private MediaCodec.BufferInfo mBufferInfo = new MediaCodec.BufferInfo();
    private MediaCodec mEncoder;
    private MediaMuxerWrapper mMuxer;
    private boolean mMuxerStarted;
    private int mTrackIndex;

    public AudioEncoderCore(MediaMuxerWrapper mediaMuxerWrapper) {
        MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", 44100, 1);
        mediaFormatCreateAudioFormat.setInteger("aac-profile", 2);
        mediaFormatCreateAudioFormat.setInteger("channel-mask", 16);
        mediaFormatCreateAudioFormat.setInteger("bitrate", BIT_RATE);
        mediaFormatCreateAudioFormat.setInteger("channel-count", 1);
        try {
            this.mEncoder = MediaCodec.createEncoderByType("audio/mp4a-latm");
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.mEncoder.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 1);
        this.mEncoder.start();
        this.mTrackIndex = -1;
        this.mMuxerStarted = false;
        this.mMuxer = mediaMuxerWrapper;
    }

    protected void encode(ByteBuffer byteBuffer, int i, long j) throws Exception {
        int iDequeueInputBuffer;
        ByteBuffer[] inputBuffers = this.mEncoder.getInputBuffers();
        do {
            iDequeueInputBuffer = this.mEncoder.dequeueInputBuffer(10000L);
        } while (iDequeueInputBuffer < 0);
        ByteBuffer byteBuffer2 = inputBuffers[iDequeueInputBuffer];
        byteBuffer2.clear();
        if (byteBuffer != null) {
            byteBuffer2.put(byteBuffer);
        }
        if (i <= 0) {
            this.mEncoder.queueInputBuffer(iDequeueInputBuffer, 0, 0, j, 4);
        } else {
            this.mEncoder.queueInputBuffer(iDequeueInputBuffer, 0, i, j, 0);
        }
    }

    public void drainEncoder() throws Exception {
        ByteBuffer[] outputBuffers = this.mEncoder.getOutputBuffers();
        while (true) {
            int iDequeueOutputBuffer = this.mEncoder.dequeueOutputBuffer(this.mBufferInfo, 10000L);
            if (iDequeueOutputBuffer == -1) {
                return;
            }
            if (iDequeueOutputBuffer == -3) {
                outputBuffers = this.mEncoder.getOutputBuffers();
            } else if (iDequeueOutputBuffer == -2) {
                if (this.mMuxerStarted) {
                    throw new RuntimeException("format changed twice");
                }
                MediaFormat outputFormat = this.mEncoder.getOutputFormat();
                Log.d(TAG, "encoder output format changed: " + outputFormat);
                this.mTrackIndex = this.mMuxer.addTrack(outputFormat);
                if (!this.mMuxer.start()) {
                    synchronized (this.mMuxer) {
                        while (!this.mMuxer.isStarted()) {
                            try {
                                this.mMuxer.wait(100L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
                this.mMuxerStarted = true;
            } else if (iDequeueOutputBuffer < 0) {
                Log.w(TAG, "unexpected result from encoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
            } else {
                ByteBuffer byteBuffer = outputBuffers[iDequeueOutputBuffer];
                if (byteBuffer == null) {
                    throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer + " was null");
                }
                MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
                if ((bufferInfo.flags & 2) != 0) {
                    bufferInfo.size = 0;
                }
                MediaCodec.BufferInfo bufferInfo2 = this.mBufferInfo;
                if (bufferInfo2.size != 0) {
                    if (!this.mMuxerStarted) {
                        throw new RuntimeException("muxer hasn't started");
                    }
                    byteBuffer.position(bufferInfo2.offset);
                    MediaCodec.BufferInfo bufferInfo3 = this.mBufferInfo;
                    byteBuffer.limit(bufferInfo3.offset + bufferInfo3.size);
                    this.mMuxer.writeSampleData(this.mTrackIndex, byteBuffer, this.mBufferInfo);
                }
                this.mEncoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                if ((this.mBufferInfo.flags & 4) != 0) {
                    return;
                }
            }
        }
    }

    public void release() {
        MediaCodec mediaCodec = this.mEncoder;
        if (mediaCodec != null) {
            mediaCodec.stop();
            this.mEncoder.release();
            this.mEncoder = null;
        }
        MediaMuxerWrapper mediaMuxerWrapper = this.mMuxer;
        if (mediaMuxerWrapper != null) {
            mediaMuxerWrapper.stop();
            this.mMuxer = null;
        }
    }
}
