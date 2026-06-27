package com.narvii.editor.cropping.dynamic.offscreen;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* compiled from: VideoDecoder.kt */
/* loaded from: classes2.dex */
public final class VideoDecoder {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "VideoDecoder";
    private File mFile;
    private FrameCallback mFrameCallback;
    private MediaCodec mMediaCodec;
    private MediaExtractor mMediaExtractor;
    private MediaFormat mMediaFormat;
    private Surface mOutputSurface;
    private int mVideoHeight;
    private int mVideoTrack;
    private int mVideoWidth;

    public VideoDecoder(File file) throws IOException {
        Intrinsics.checkParameterIsNotNull(file, "file");
        this.mFile = file;
        this.mMediaExtractor = new MediaExtractor();
        this.mVideoTrack = -1;
        this.mVideoWidth = -1;
        this.mVideoHeight = -1;
        this.mMediaExtractor.setDataSource(file.toString());
        int trackCount = this.mMediaExtractor.getTrackCount();
        if (trackCount >= 0) {
            int i = 0;
            while (true) {
                String mime = this.mMediaExtractor.getTrackFormat(i).getString(IMediaFormat.KEY_MIME);
                Intrinsics.checkExpressionValueIsNotNull(mime, "mime");
                if (!StringsKt__StringsJVMKt.startsWith$default(mime, "video/", false, 2, null)) {
                    if (i == trackCount) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    this.mVideoTrack = i;
                    break;
                }
            }
        }
        int i2 = this.mVideoTrack;
        if (i2 == -1) {
            throw new RuntimeException("file contains no video track, please check");
        }
        this.mMediaExtractor.selectTrack(i2);
        MediaFormat trackFormat = this.mMediaExtractor.getTrackFormat(this.mVideoTrack);
        Intrinsics.checkExpressionValueIsNotNull(trackFormat, "mMediaExtractor.getTrackFormat(mVideoTrack)");
        this.mMediaFormat = trackFormat;
        this.mVideoWidth = this.mMediaFormat.getInteger("width");
        this.mVideoHeight = this.mMediaFormat.getInteger("height");
    }

    /* compiled from: VideoDecoder.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final Surface getMOutputSurface() {
        return this.mOutputSurface;
    }

    public final void setMOutputSurface(Surface surface) {
        this.mOutputSurface = surface;
    }

    public final int getMVideoWidth() {
        return this.mVideoWidth;
    }

    public final void setMVideoWidth(int i) {
        this.mVideoWidth = i;
    }

    public final int getMVideoHeight() {
        return this.mVideoHeight;
    }

    public final void setMVideoHeight(int i) {
        this.mVideoHeight = i;
    }

    public final FrameCallback getMFrameCallback() {
        return this.mFrameCallback;
    }

    public final void setMFrameCallback(FrameCallback frameCallback) {
        this.mFrameCallback = frameCallback;
    }

    public final void decode() throws MediaCodec.CryptoException, IOException {
        FrameCallback frameCallback;
        if (!this.mFile.canRead()) {
            throw new FileNotFoundException("video file not exist");
        }
        MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(this.mMediaFormat.getString(IMediaFormat.KEY_MIME));
        Intrinsics.checkExpressionValueIsNotNull(mediaCodecCreateDecoderByType, "MediaCodec.createDecoder…ng(MediaFormat.KEY_MIME))");
        this.mMediaCodec = mediaCodecCreateDecoderByType;
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
            throw null;
        }
        mediaCodec.reset();
        MediaCodec mediaCodec2 = this.mMediaCodec;
        if (mediaCodec2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
            throw null;
        }
        mediaCodec2.configure(this.mMediaFormat, this.mOutputSurface, (MediaCrypto) null, 0);
        MediaCodec mediaCodec3 = this.mMediaCodec;
        if (mediaCodec3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
            throw null;
        }
        mediaCodec3.start();
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        FrameCallback frameCallback2 = this.mFrameCallback;
        if (frameCallback2 != null) {
            frameCallback2.decodeFrameBegin();
        }
        boolean z = false;
        boolean z2 = false;
        while (!z && !OffScreenFlag.Companion.getStopRenderThread()) {
            if (!z2) {
                MediaCodec mediaCodec4 = this.mMediaCodec;
                if (mediaCodec4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
                    throw null;
                }
                int iDequeueInputBuffer = mediaCodec4.dequeueInputBuffer(0L);
                if (iDequeueInputBuffer > 0) {
                    MediaCodec mediaCodec5 = this.mMediaCodec;
                    if (mediaCodec5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
                        throw null;
                    }
                    int sampleData = this.mMediaExtractor.readSampleData(mediaCodec5.getInputBuffer(iDequeueInputBuffer), 0);
                    if (sampleData < 0) {
                        MediaCodec mediaCodec6 = this.mMediaCodec;
                        if (mediaCodec6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
                            throw null;
                        }
                        mediaCodec6.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                        z2 = true;
                    } else {
                        this.mMediaExtractor.getSampleTrackIndex();
                        int i = this.mVideoTrack;
                        long sampleTime = this.mMediaExtractor.getSampleTime();
                        MediaCodec mediaCodec7 = this.mMediaCodec;
                        if (mediaCodec7 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
                            throw null;
                        }
                        mediaCodec7.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, sampleTime, 0);
                        this.mMediaExtractor.advance();
                    }
                }
            }
            if (!z) {
                MediaCodec mediaCodec8 = this.mMediaCodec;
                if (mediaCodec8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
                    throw null;
                }
                int iDequeueOutputBuffer = mediaCodec8.dequeueOutputBuffer(bufferInfo, 0L);
                if (iDequeueOutputBuffer == -1) {
                    continue;
                } else if (iDequeueOutputBuffer == -2) {
                    MediaCodec mediaCodec9 = this.mMediaCodec;
                    if (mediaCodec9 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
                        throw null;
                    }
                    mediaCodec9.getOutputFormat();
                } else if (iDequeueOutputBuffer == -3) {
                    continue;
                } else {
                    if (iDequeueOutputBuffer < 0) {
                        throw new RuntimeException("unexpected result from decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
                    }
                    if ((bufferInfo.flags & 4) != 0) {
                        Log.d(TAG, "output EOS");
                        z = true;
                    }
                    boolean z3 = bufferInfo.size != 0;
                    MediaCodec mediaCodec10 = this.mMediaCodec;
                    if (mediaCodec10 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
                        throw null;
                    }
                    mediaCodec10.releaseOutputBuffer(iDequeueOutputBuffer, z3);
                    if (z3) {
                        long j = bufferInfo.presentationTimeUs;
                        if (j >= 0 && (frameCallback = this.mFrameCallback) != null) {
                            frameCallback.decodeOneFrame(j);
                        }
                    }
                }
            }
        }
        MediaCodec mediaCodec11 = this.mMediaCodec;
        if (mediaCodec11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
            throw null;
        }
        mediaCodec11.stop();
        MediaCodec mediaCodec12 = this.mMediaCodec;
        if (mediaCodec12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mMediaCodec");
            throw null;
        }
        mediaCodec12.release();
        this.mMediaExtractor.release();
        FrameCallback frameCallback3 = this.mFrameCallback;
        if (frameCallback3 != null) {
            frameCallback3.decodeFrameEnd();
        }
    }
}
