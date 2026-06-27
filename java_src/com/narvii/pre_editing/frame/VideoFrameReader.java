package com.narvii.pre_editing.frame;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* compiled from: VideoFrameReader.kt */
/* loaded from: classes3.dex */
public final class VideoFrameReader {
    public static final Companion Companion = new Companion(null);
    private static final long TIMEOUT_USEC = 10000;
    private Decoder decoder;
    private final MediaExtractor extractor;
    private List<Pair<Long, FrameCallback>> frameToReadList;
    private boolean isReleased;
    private FrameRangeInfo rangeInfo;
    private long videoDuration;
    private int videoTrackIndex;
    private boolean working;

    /* compiled from: VideoFrameReader.kt */
    public interface FrameCallback {
        void onFrameBitmapLoaded(long j, Bitmap bitmap);
    }

    public VideoFrameReader(String srcPath, int i) throws IOException {
        Decoder decoder;
        Intrinsics.checkParameterIsNotNull(srcPath, "srcPath");
        this.extractor = new MediaExtractor();
        this.videoTrackIndex = -1;
        this.videoDuration = -1L;
        this.frameToReadList = new ArrayList();
        this.extractor.setDataSource(srcPath);
        this.videoTrackIndex = findVideoTrackIndex();
        this.rangeInfo = new FrameRangeInfo();
        int i2 = this.videoTrackIndex;
        if (i2 < 0 || Build.VERSION.SDK_INT < 17) {
            return;
        }
        this.extractor.selectTrack(i2);
        MediaFormat format = this.extractor.getTrackFormat(this.videoTrackIndex);
        try {
            Intrinsics.checkExpressionValueIsNotNull(format, "format");
            decoder = new Decoder(format, i);
        } catch (Exception e) {
            Log.e("VideoFrameReader init error", e);
            decoder = null;
        }
        this.decoder = decoder;
        this.videoDuration = format.getLong("durationUs") * 1;
    }

    public /* synthetic */ VideoFrameReader(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? 240 : i);
    }

    /* compiled from: VideoFrameReader.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void start(List<Long> timeMsList, FrameCallback callback) {
        Intrinsics.checkParameterIsNotNull(timeMsList, "timeMsList");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        if (Build.VERSION.SDK_INT >= 17) {
            this.working = true;
            this.frameToReadList.clear();
            Iterator<Long> it = timeMsList.iterator();
            while (it.hasNext()) {
                this.frameToReadList.add(new Pair<>(Long.valueOf(it.next().longValue() * 1000), callback));
            }
            pollNextFrame();
        }
    }

    public final void clear() {
        Decoder decoder;
        this.isReleased = true;
        this.frameToReadList.clear();
        this.extractor.release();
        if (Build.VERSION.SDK_INT < 17 || (decoder = this.decoder) == null) {
            return;
        }
        decoder.release();
    }

    public final boolean isWorking() {
        return this.working;
    }

    private final void pollNextFrame() {
        final Bitmap frame;
        if (!this.frameToReadList.isEmpty() && !this.isReleased) {
            final Pair<Long, FrameCallback> pairRemove = this.frameToReadList.remove(0);
            try {
                frame = getFrame(pairRemove.getFirst().longValue(), !this.frameToReadList.isEmpty() ? this.frameToReadList.get(0).getFirst().longValue() : -1L);
            } catch (Exception e) {
                Log.e("VideoFrameReader retrieve frame error", e);
                frame = null;
            }
            Utils.handler.post(new Runnable() { // from class: com.narvii.pre_editing.frame.VideoFrameReader.pollNextFrame.1
                @Override // java.lang.Runnable
                public final void run() {
                    ((FrameCallback) pairRemove.getSecond()).onFrameBitmapLoaded(((Number) pairRemove.getFirst()).longValue() / 1000, frame);
                }
            });
            pollNextFrame();
            return;
        }
        this.working = false;
    }

    private final Bitmap getFrame(long j, long j2) throws MediaCodec.CryptoException {
        Decoder decoder;
        if (this.videoTrackIndex >= 0 && !this.isReleased) {
            this.rangeInfo.seekTo(j, j2, this.extractor);
            if (this.rangeInfo.getFlushDecoder() && (decoder = this.decoder) != null) {
                decoder.flush();
            }
            Decoder decoder2 = this.decoder;
            if (decoder2 != null) {
                boolean zTryExtractFrame = false;
                while (!zTryExtractFrame) {
                    int iDequeueInputBuffer = decoder2.dequeueInputBuffer(TIMEOUT_USEC);
                    if (iDequeueInputBuffer >= 0) {
                        int sampleData = this.extractor.readSampleData(decoder2.getInputBuffer(iDequeueInputBuffer), 0);
                        if (sampleData < 0) {
                            decoder2.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                        } else if (this.extractor.getSampleTrackIndex() == this.videoTrackIndex) {
                            decoder2.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, this.extractor.getSampleTime(), 0);
                            this.extractor.advance();
                        }
                    }
                    zTryExtractFrame = decoder2.tryExtractFrame(this.rangeInfo.getKeyFrameIsOkay(), j);
                }
                return decoder2.getVideoBitmap();
            }
        }
        return null;
    }

    private final int findVideoTrackIndex() {
        int trackCount = this.extractor.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            String mime = this.extractor.getTrackFormat(i).getString(IMediaFormat.KEY_MIME);
            Intrinsics.checkExpressionValueIsNotNull(mime, "mime");
            if (StringsKt__StringsJVMKt.startsWith$default(mime, "video/", false, 2, null)) {
                return i;
            }
        }
        return -1;
    }

    /* compiled from: VideoFrameReader.kt */
    private static final class Decoder {
        private final MediaCodec.BufferInfo bufferInfo;
        private MediaCodec codec;
        private ByteBuffer[] decoderInputBuffers;
        private CodecOutputSurface outputSurface;
        private final int rotation;
        private Bitmap videoBitmap;

        public Decoder(MediaFormat format, int i) throws IOException {
            int integer;
            Intrinsics.checkParameterIsNotNull(format, "format");
            this.bufferInfo = new MediaCodec.BufferInfo();
            int integer2 = format.getInteger("width");
            int integer3 = format.getInteger("height");
            if (format.containsKey("rotation-degrees")) {
                integer = format.getInteger("rotation-degrees");
                format.setInteger("rotation-degrees", 0);
            } else {
                integer = 0;
            }
            this.rotation = integer;
            int iMin = Math.min(integer3, i);
            int i2 = (integer2 * iMin) / integer3;
            this.outputSurface = new CodecOutputSurface(i2, iMin);
            MediaCodec mediaCodec = MediaCodec.createDecoderByType(format.getString(IMediaFormat.KEY_MIME));
            format.setInteger("width", i2);
            format.setInteger("height", iMin);
            mediaCodec.configure(format, this.outputSurface.getSurface(), (MediaCrypto) null, 0);
            Intrinsics.checkExpressionValueIsNotNull(mediaCodec, "mediaCodec");
            this.codec = mediaCodec;
            mediaCodec.start();
            ByteBuffer[] inputBuffers = this.codec.getInputBuffers();
            Intrinsics.checkExpressionValueIsNotNull(inputBuffers, "codec.inputBuffers");
            this.decoderInputBuffers = inputBuffers;
        }

        public final Bitmap getVideoBitmap() {
            return this.videoBitmap;
        }

        public final void setVideoBitmap(Bitmap bitmap) {
            this.videoBitmap = bitmap;
        }

        public final int dequeueInputBuffer(long j) {
            return this.codec.dequeueInputBuffer(j);
        }

        public final ByteBuffer getInputBuffer(int i) {
            return this.decoderInputBuffers[i];
        }

        public final void queueInputBuffer(int i, int i2, int i3, long j, int i4) throws MediaCodec.CryptoException {
            this.codec.queueInputBuffer(i, i2, i3, j, i4);
        }

        public final void flush() {
            this.codec.flush();
        }

        public final void release() {
            this.codec.release();
        }

        public final boolean tryExtractFrame(boolean z, long j) {
            int iDequeueOutputBuffer = this.codec.dequeueOutputBuffer(this.bufferInfo, VideoFrameReader.TIMEOUT_USEC);
            if (iDequeueOutputBuffer == -1 || iDequeueOutputBuffer == -3 || iDequeueOutputBuffer == -2) {
                return false;
            }
            if (iDequeueOutputBuffer < 0) {
                return true;
            }
            boolean z2 = (this.bufferInfo.flags & 4) != 0;
            boolean z3 = this.bufferInfo.size != 0;
            this.codec.releaseOutputBuffer(iDequeueOutputBuffer, z3);
            if (!z3 || (!z && this.bufferInfo.presentationTimeUs < j)) {
                return z2;
            }
            try {
                this.outputSurface.awaitNewImage();
            } catch (RuntimeException unused) {
            }
            this.outputSurface.drawImage(true);
            CodecOutputSurface codecOutputSurface = this.outputSurface;
            Bitmap rawOutput = Bitmap.createBitmap(codecOutputSurface.mWidth, codecOutputSurface.mHeight, Bitmap.Config.ARGB_8888);
            this.outputSurface.updateBitmap(rawOutput);
            if (this.rotation != 0) {
                Matrix matrix = new Matrix();
                matrix.postRotate(this.rotation);
                Intrinsics.checkExpressionValueIsNotNull(rawOutput, "rawOutput");
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(rawOutput, 0, 0, rawOutput.getWidth(), rawOutput.getHeight(), matrix, true);
                rawOutput.recycle();
                rawOutput = bitmapCreateBitmap;
            }
            this.videoBitmap = rawOutput;
            return true;
        }
    }

    /* compiled from: VideoFrameReader.kt */
    private static final class FrameRangeInfo {
        private static boolean ACCEPT_KEY_FRAME_IN_RANGE;
        public static final Companion Companion = new Companion(null);
        private static boolean KEY_FRAME_ONLY = true;
        private boolean flushDecoder;
        private boolean keyFrameIsOkay;
        private long startNextSyncPts = -1;
        private long endNextSyncPts = -1;

        public final boolean getKeyFrameIsOkay() {
            return this.keyFrameIsOkay;
        }

        public final void setKeyFrameIsOkay(boolean z) {
            this.keyFrameIsOkay = z;
        }

        public final boolean getFlushDecoder() {
            return this.flushDecoder;
        }

        public final void setFlushDecoder(boolean z) {
            this.flushDecoder = z;
        }

        /* compiled from: VideoFrameReader.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final boolean getKEY_FRAME_ONLY() {
                return FrameRangeInfo.KEY_FRAME_ONLY;
            }

            public final void setKEY_FRAME_ONLY(boolean z) {
                FrameRangeInfo.KEY_FRAME_ONLY = z;
            }

            public final boolean getACCEPT_KEY_FRAME_IN_RANGE() {
                return FrameRangeInfo.ACCEPT_KEY_FRAME_IN_RANGE;
            }

            public final void setACCEPT_KEY_FRAME_IN_RANGE(boolean z) {
                FrameRangeInfo.ACCEPT_KEY_FRAME_IN_RANGE = z;
            }
        }

        public final void seekTo(long j, long j2, MediaExtractor extractor) {
            Intrinsics.checkParameterIsNotNull(extractor, "extractor");
            if (KEY_FRAME_ONLY) {
                extractor.seekTo(j, 0);
                this.keyFrameIsOkay = true;
                this.flushDecoder = true;
                return;
            }
            if (j == 0) {
                this.endNextSyncPts = seekToKeyFrameAfter(extractor, j2);
                this.startNextSyncPts = seekToKeyFrameBefore(extractor, j2);
                extractor.seekTo(0L, 0);
                this.keyFrameIsOkay = true;
                this.flushDecoder = false;
                return;
            }
            if (this.endNextSyncPts > j2) {
                if (this.startNextSyncPts > extractor.getSampleTime()) {
                    this.startNextSyncPts = seekToKeyFrameBefore(extractor, j);
                    this.keyFrameIsOkay = false;
                    this.flushDecoder = true;
                    return;
                } else {
                    this.keyFrameIsOkay = false;
                    this.flushDecoder = false;
                    return;
                }
            }
            this.endNextSyncPts = seekToKeyFrameAfter(extractor, j2);
            this.startNextSyncPts = seekToKeyFrameBefore(extractor, j2);
            if (ACCEPT_KEY_FRAME_IN_RANGE) {
                extractor.seekTo(j, 1);
                this.keyFrameIsOkay = true;
                this.flushDecoder = true;
            } else {
                extractor.seekTo(j, 0);
                this.keyFrameIsOkay = false;
                this.flushDecoder = true;
            }
        }

        private final long seekToKeyFrameAfter(MediaExtractor mediaExtractor, long j) {
            mediaExtractor.seekTo(j, 1);
            return mediaExtractor.getSampleTime();
        }

        private final long seekToKeyFrameBefore(MediaExtractor mediaExtractor, long j) {
            mediaExtractor.seekTo(j, 0);
            return mediaExtractor.getSampleTime();
        }
    }
}
