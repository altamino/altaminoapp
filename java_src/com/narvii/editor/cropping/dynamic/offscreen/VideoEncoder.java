package com.narvii.editor.cropping.dynamic.offscreen;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.view.Surface;
import com.narvii.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoEncoder.kt */
/* loaded from: classes2.dex */
public final class VideoEncoder {
    public static final Companion Companion = new Companion(null);
    public static final int FRAME_RATE = 30;
    public static final int I_FRAME_INTERVAL = 1;
    public static final String MIME_TYPE = "video/avc";
    private static final String TAG = "VideoEncoder";
    private MediaFormat format;
    private final int height;
    private MediaCodec.BufferInfo mBufferInfo;
    private MediaCodec mEncoder;
    private int mFrameIndex;
    private Surface mInputSurface;
    private MediaMuxer mMuxer;
    private boolean mMuxerStarted;
    private int mTrackIndex;
    private boolean mediaCodecInitFailed;
    private final int width;

    public VideoEncoder(int i, int i2, int i3, File outputFile) throws IOException {
        Intrinsics.checkParameterIsNotNull(outputFile, "outputFile");
        this.width = i;
        this.height = i2;
        this.mBufferInfo = new MediaCodec.BufferInfo();
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", this.width, this.height);
        Intrinsics.checkExpressionValueIsNotNull(mediaFormatCreateVideoFormat, "MediaFormat.createVideoF…MIME_TYPE, width, height)");
        this.format = mediaFormatCreateVideoFormat;
        this.mTrackIndex = -1;
        this.format.setInteger("color-format", 2130708361);
        this.format.setInteger("bitrate", i3);
        this.format.setInteger("frame-rate", 30);
        this.format.setInteger("i-frame-interval", 1);
        this.format.setInteger("bitrate-mode", 1);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/avc");
        Intrinsics.checkExpressionValueIsNotNull(mediaCodecCreateEncoderByType, "MediaCodec.createEncoderByType(MIME_TYPE)");
        this.mEncoder = mediaCodecCreateEncoderByType;
        this.mMuxer = new MediaMuxer(outputFile.toString(), 0);
        try {
            this.mEncoder.configure(this.format, (Surface) null, (MediaCrypto) null, 1);
        } catch (MediaCodec.CodecException e) {
            Log.e("Video Encoder configure exception", e);
            this.mediaCodecInitFailed = true;
            this.mMuxer.release();
        }
        if (this.mediaCodecInitFailed) {
            return;
        }
        this.mInputSurface = this.mEncoder.createInputSurface();
        this.mEncoder.start();
        this.mTrackIndex = -1;
        this.mMuxerStarted = false;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    /* compiled from: VideoEncoder.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final Surface getMInputSurface() {
        return this.mInputSurface;
    }

    public final void setMInputSurface(Surface surface) {
        this.mInputSurface = surface;
    }

    public final boolean getMediaCodecInitFailed() {
        return this.mediaCodecInitFailed;
    }

    public final void setMediaCodecInitFailed(boolean z) {
        this.mediaCodecInitFailed = z;
    }

    public final void release() {
        Surface surface = this.mInputSurface;
        if (surface != null) {
            surface.release();
        }
        this.mEncoder.stop();
        this.mEncoder.release();
        this.mMuxer.stop();
        this.mMuxer.release();
    }

    public final void drainEncoderWithNoTimeOut(boolean z) {
        if (z) {
            this.mEncoder.signalEndOfInputStream();
        }
        while (true) {
            int iDequeueOutputBuffer = this.mEncoder.dequeueOutputBuffer(this.mBufferInfo, 0L);
            if (iDequeueOutputBuffer == -1) {
                if (!z) {
                    return;
                }
            } else if (iDequeueOutputBuffer == -2) {
                if (this.mMuxerStarted) {
                    throw new RuntimeException("format changed twice");
                }
                this.mTrackIndex = this.mMuxer.addTrack(this.mEncoder.getOutputFormat());
                this.mMuxer.start();
                this.mMuxerStarted = true;
            } else if (iDequeueOutputBuffer < 0) {
                continue;
            } else {
                ByteBuffer outputBuffer = this.mEncoder.getOutputBuffer(iDequeueOutputBuffer);
                if (outputBuffer == null) {
                    throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer + " is null");
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
                    outputBuffer.position(bufferInfo2.offset);
                    MediaCodec.BufferInfo bufferInfo3 = this.mBufferInfo;
                    outputBuffer.limit(bufferInfo3.offset + bufferInfo3.size);
                    this.mMuxer.writeSampleData(this.mTrackIndex, outputBuffer, this.mBufferInfo);
                }
                this.mEncoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                if ((this.mBufferInfo.flags & 4) != 0) {
                    return;
                }
            }
        }
    }
}
