package com.narvii.editor.cropping.dynamic.offscreen;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class VideoDecoder {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String TAG = "VideoDecoder";

    @NotNull
    private File mFile;

    @Nullable
    private FrameCallback mFrameCallback;
    private MediaCodec mMediaCodec;

    @NotNull
    private MediaExtractor mMediaExtractor;

    @NotNull
    private MediaFormat mMediaFormat;

    @Nullable
    private Surface mOutputSurface;
    private int mVideoHeight;
    private int mVideoTrack;
    private int mVideoWidth;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Nullable
    public final FrameCallback getMFrameCallback() {
        return this.mFrameCallback;
    }

    @Nullable
    public final Surface getMOutputSurface() {
        return this.mOutputSurface;
    }

    public final int getMVideoHeight() {
        return this.mVideoHeight;
    }

    public final int getMVideoWidth() {
        return this.mVideoWidth;
    }

    public final void setMFrameCallback(@Nullable FrameCallback frameCallback) {
        this.mFrameCallback = frameCallback;
    }

    public final void setMOutputSurface(@Nullable Surface surface) {
        this.mOutputSurface = surface;
    }

    public final void setMVideoHeight(int i10) {
        this.mVideoHeight = i10;
    }

    public final void setMVideoWidth(int i10) {
        this.mVideoWidth = i10;
    }

    public VideoDecoder(@NotNull File file) throws IOException {
        t.j(file, "file");
        this.mFile = file;
        MediaExtractor mediaExtractor = new MediaExtractor();
        this.mMediaExtractor = mediaExtractor;
        this.mVideoTrack = -1;
        this.mVideoWidth = -1;
        this.mVideoHeight = -1;
        mediaExtractor.setDataSource(file.toString());
        int trackCount = this.mMediaExtractor.getTrackCount();
        if (trackCount >= 0) {
            int i10 = 0;
            while (true) {
                MediaFormat trackFormat = this.mMediaExtractor.getTrackFormat(i10);
                t.i(trackFormat, "getTrackFormat(...)");
                String string = trackFormat.getString("mime");
                if (string != null && kotlin.text.t.K(string, "video/", false, 2, null)) {
                    this.mVideoTrack = i10;
                    break;
                } else if (i10 == trackCount) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        int i11 = this.mVideoTrack;
        if (i11 == -1) {
            throw new RuntimeException("file contains no video track, please check");
        }
        this.mMediaExtractor.selectTrack(i11);
        MediaFormat trackFormat2 = this.mMediaExtractor.getTrackFormat(this.mVideoTrack);
        t.i(trackFormat2, "getTrackFormat(...)");
        this.mMediaFormat = trackFormat2;
        this.mVideoWidth = trackFormat2.getInteger("width");
        this.mVideoHeight = this.mMediaFormat.getInteger("height");
    }

    public final void decode(@NotNull Context context) throws IOException {
        FrameCallback frameCallback;
        MediaCodec mediaCodec;
        MediaCodec mediaCodec2;
        t.j(context, "context");
        if (!this.mFile.canRead()) {
            throw new FileNotFoundException("video file not exist");
        }
        VideoDecoder$decode$logEvent$1 videoDecoder$decode$logEvent$1 = new VideoDecoder$decode$logEvent$1(context);
        String string = this.mMediaFormat.getString("mime");
        if (string == null) {
            videoDecoder$decode$logEvent$1.invoke("mime type is null");
            return;
        }
        MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(string);
        t.i(mediaCodecCreateDecoderByType, "createDecoderByType(...)");
        this.mMediaCodec = mediaCodecCreateDecoderByType;
        MediaCodec mediaCodec3 = null;
        if (mediaCodecCreateDecoderByType == null) {
            t.B("mMediaCodec");
            mediaCodecCreateDecoderByType = null;
        }
        mediaCodecCreateDecoderByType.reset();
        MediaCodec mediaCodec4 = this.mMediaCodec;
        if (mediaCodec4 == null) {
            t.B("mMediaCodec");
            mediaCodec4 = null;
        }
        mediaCodec4.configure(this.mMediaFormat, this.mOutputSurface, (MediaCrypto) null, 0);
        MediaCodec mediaCodec5 = this.mMediaCodec;
        if (mediaCodec5 == null) {
            t.B("mMediaCodec");
            mediaCodec5 = null;
        }
        mediaCodec5.start();
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        FrameCallback frameCallback2 = this.mFrameCallback;
        if (frameCallback2 != null) {
            frameCallback2.decodeFrameBegin();
        }
        boolean z6 = false;
        boolean z10 = false;
        while (!z6 && !OffScreenFlag.Companion.getStopRenderThread()) {
            if (!z10) {
                MediaCodec mediaCodec6 = this.mMediaCodec;
                if (mediaCodec6 == null) {
                    t.B("mMediaCodec");
                    mediaCodec6 = null;
                }
                int iDequeueInputBuffer = mediaCodec6.dequeueInputBuffer(0L);
                if (iDequeueInputBuffer > 0) {
                    MediaCodec mediaCodec7 = this.mMediaCodec;
                    if (mediaCodec7 == null) {
                        t.B("mMediaCodec");
                        mediaCodec7 = null;
                    }
                    ByteBuffer inputBuffer = mediaCodec7.getInputBuffer(iDequeueInputBuffer);
                    if (inputBuffer == null) {
                        videoDecoder$decode$logEvent$1.invoke("input buffer is null");
                        return;
                    }
                    int sampleData = this.mMediaExtractor.readSampleData(inputBuffer, 0);
                    if (sampleData < 0) {
                        MediaCodec mediaCodec8 = this.mMediaCodec;
                        if (mediaCodec8 == null) {
                            t.B("mMediaCodec");
                            mediaCodec2 = null;
                        } else {
                            mediaCodec2 = mediaCodec8;
                        }
                        mediaCodec2.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                        z10 = true;
                    } else {
                        this.mMediaExtractor.getSampleTrackIndex();
                        long sampleTime = this.mMediaExtractor.getSampleTime();
                        MediaCodec mediaCodec9 = this.mMediaCodec;
                        if (mediaCodec9 == null) {
                            t.B("mMediaCodec");
                            mediaCodec = null;
                        } else {
                            mediaCodec = mediaCodec9;
                        }
                        mediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, sampleTime, 0);
                        this.mMediaExtractor.advance();
                    }
                }
            }
            if (!z6) {
                MediaCodec mediaCodec10 = this.mMediaCodec;
                if (mediaCodec10 == null) {
                    t.B("mMediaCodec");
                    mediaCodec10 = null;
                }
                int iDequeueOutputBuffer = mediaCodec10.dequeueOutputBuffer(bufferInfo, 0L);
                if (iDequeueOutputBuffer == -1) {
                    continue;
                } else if (iDequeueOutputBuffer == -2) {
                    MediaCodec mediaCodec11 = this.mMediaCodec;
                    if (mediaCodec11 == null) {
                        t.B("mMediaCodec");
                        mediaCodec11 = null;
                    }
                    t.i(mediaCodec11.getOutputFormat(), "getOutputFormat(...)");
                } else if (iDequeueOutputBuffer == -3) {
                    continue;
                } else {
                    if (iDequeueOutputBuffer < 0) {
                        throw new RuntimeException("unexpected result from decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer);
                    }
                    if ((bufferInfo.flags & 4) != 0) {
                        Log.d(TAG, "output EOS");
                        z6 = true;
                    }
                    boolean z11 = bufferInfo.size != 0;
                    MediaCodec mediaCodec12 = this.mMediaCodec;
                    if (mediaCodec12 == null) {
                        t.B("mMediaCodec");
                        mediaCodec12 = null;
                    }
                    mediaCodec12.releaseOutputBuffer(iDequeueOutputBuffer, z11);
                    if (z11) {
                        long j6 = bufferInfo.presentationTimeUs;
                        if (j6 >= 0 && (frameCallback = this.mFrameCallback) != null) {
                            frameCallback.decodeOneFrame(j6);
                        }
                    }
                }
            }
        }
        MediaCodec mediaCodec13 = this.mMediaCodec;
        if (mediaCodec13 == null) {
            t.B("mMediaCodec");
            mediaCodec13 = null;
        }
        mediaCodec13.stop();
        MediaCodec mediaCodec14 = this.mMediaCodec;
        if (mediaCodec14 == null) {
            t.B("mMediaCodec");
        } else {
            mediaCodec3 = mediaCodec14;
        }
        mediaCodec3.release();
        this.mMediaExtractor.release();
        FrameCallback frameCallback3 = this.mFrameCallback;
        if (frameCallback3 != null) {
            frameCallback3.decodeFrameEnd();
        }
    }
}
