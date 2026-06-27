package com.narvii.chat.p2a.encoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.narvii.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;

@TargetApi(18)
/* loaded from: classes2.dex */
public class VideoEncoderCore {
    private static final int IFRAME_INTERVAL = 5;
    private static final String MIME_TYPE = "video/avc";
    private static final String TAG = "VideoEncoder";
    private static final boolean VERBOSE = false;
    private MediaCodec.BufferInfo mBufferInfo = new MediaCodec.BufferInfo();
    private MediaCodec mEncoder;
    private Surface mInputSurface;
    private MediaMuxerWrapper mMuxer;
    private boolean mMuxerStarted;
    private int mTrackIndex;

    public VideoEncoderCore(int i, int i2, int i3, int i4, MediaMuxerWrapper mediaMuxerWrapper) throws IOException {
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
        mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
        mediaFormatCreateVideoFormat.setInteger("bitrate", i4);
        mediaFormatCreateVideoFormat.setInteger("frame-rate", i3);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 5);
        this.mEncoder = MediaCodec.createEncoderByType("video/avc");
        this.mEncoder.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        this.mInputSurface = this.mEncoder.createInputSurface();
        this.mEncoder.start();
        this.mTrackIndex = -1;
        this.mMuxerStarted = false;
        this.mMuxer = mediaMuxerWrapper;
    }

    public Surface getInputSurface() {
        return this.mInputSurface;
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

    public void drainEncoder(boolean z) throws Exception {
        if (z) {
            this.mEncoder.signalEndOfInputStream();
        }
        ByteBuffer[] outputBuffers = this.mEncoder.getOutputBuffers();
        while (true) {
            int iDequeueOutputBuffer = this.mEncoder.dequeueOutputBuffer(this.mBufferInfo, 10000L);
            if (iDequeueOutputBuffer == -1) {
                if (!z) {
                    return;
                }
            } else if (iDequeueOutputBuffer == -3) {
                outputBuffers = this.mEncoder.getOutputBuffers();
            } else if (iDequeueOutputBuffer != -2 || z) {
                if (iDequeueOutputBuffer < 0) {
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
                        if (z) {
                            return;
                        }
                        Log.w(TAG, "reached end of stream unexpectedly");
                        return;
                    }
                }
            } else {
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
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
                this.mMuxerStarted = true;
            }
        }
    }
}
