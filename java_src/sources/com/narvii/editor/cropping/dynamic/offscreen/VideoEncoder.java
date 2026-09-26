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
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class VideoEncoder {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int FRAME_RATE = 30;
    public static final int I_FRAME_INTERVAL = 1;

    @NotNull
    public static final String MIME_TYPE = "video/avc";

    @NotNull
    private static final String TAG = "VideoEncoder";

    @NotNull
    private MediaFormat format;
    private final int height;

    @NotNull
    private MediaCodec.BufferInfo mBufferInfo;

    @NotNull
    private MediaCodec mEncoder;
    private int mFrameIndex;

    @Nullable
    private Surface mInputSurface;

    @NotNull
    private MediaMuxer mMuxer;
    private boolean mMuxerStarted;
    private int mTrackIndex;
    private boolean mediaCodecInitFailed;
    private final int width;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final int getHeight() {
        return this.height;
    }

    @Nullable
    public final Surface getMInputSurface() {
        return this.mInputSurface;
    }

    public final boolean getMediaCodecInitFailed() {
        return this.mediaCodecInitFailed;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setMInputSurface(@Nullable Surface surface) {
        this.mInputSurface = surface;
    }

    public final void setMediaCodecInitFailed(boolean z6) {
        this.mediaCodecInitFailed = z6;
    }

    public VideoEncoder(int i10, int i11, int i12, @NotNull File outputFile) throws IOException {
        t.j(outputFile, "outputFile");
        this.width = i10;
        this.height = i11;
        this.mBufferInfo = new MediaCodec.BufferInfo();
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i10, i11);
        t.i(mediaFormatCreateVideoFormat, "createVideoFormat(...)");
        this.format = mediaFormatCreateVideoFormat;
        this.mTrackIndex = -1;
        mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
        this.format.setInteger("bitrate", i12);
        this.format.setInteger("frame-rate", 30);
        this.format.setInteger("i-frame-interval", 1);
        this.format.setInteger("bitrate-mode", 1);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/avc");
        t.i(mediaCodecCreateEncoderByType, "createEncoderByType(...)");
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

    public final void drainEncoderWithNoTimeOut(boolean z6) {
        if (z6) {
            this.mEncoder.signalEndOfInputStream();
        }
        while (true) {
            int iDequeueOutputBuffer = this.mEncoder.dequeueOutputBuffer(this.mBufferInfo, 0L);
            if (iDequeueOutputBuffer == -1) {
                if (!z6) {
                    return;
                }
            } else if (iDequeueOutputBuffer == -2) {
                if (this.mMuxerStarted) {
                    throw new RuntimeException("format changed twice");
                }
                MediaFormat outputFormat = this.mEncoder.getOutputFormat();
                t.i(outputFormat, "getOutputFormat(...)");
                this.mTrackIndex = this.mMuxer.addTrack(outputFormat);
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
                if (bufferInfo.size != 0) {
                    if (!this.mMuxerStarted) {
                        throw new RuntimeException("muxer hasn't started");
                    }
                    outputBuffer.position(bufferInfo.offset);
                    MediaCodec.BufferInfo bufferInfo2 = this.mBufferInfo;
                    outputBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                    this.mMuxer.writeSampleData(this.mTrackIndex, outputBuffer, this.mBufferInfo);
                }
                this.mEncoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                if ((this.mBufferInfo.flags & 4) != 0) {
                    return;
                }
            }
        }
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
}
