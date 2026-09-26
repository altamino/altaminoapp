package com.narvii.pre_editing.frame;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import androidx.annotation.RequiresApi;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoFrameReader {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long TIMEOUT_USEC = 10000;

    @Nullable
    private Decoder decoder;

    @NotNull
    private final MediaExtractor extractor;

    @NotNull
    private List<u<Long, FrameCallback>> frameToReadList;
    private boolean isReleased;

    @NotNull
    private FrameRangeInfo rangeInfo;
    private long videoDuration;
    private int videoTrackIndex;
    private boolean working;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @RequiresApi
    private static final class Decoder {

        @NotNull
        private final MediaCodec.BufferInfo bufferInfo;

        @NotNull
        private MediaCodec codec;

        @NotNull
        private ByteBuffer[] decoderInputBuffers;

        @NotNull
        private CodecOutputSurface outputSurface;
        private final int rotation;

        @Nullable
        private Bitmap videoBitmap;

        @Nullable
        public final Bitmap getVideoBitmap() {
            return this.videoBitmap;
        }

        public final void setVideoBitmap(@Nullable Bitmap bitmap) {
            this.videoBitmap = bitmap;
        }

        public Decoder(@NotNull MediaFormat format, int i10) throws IOException {
            int integer;
            t.j(format, "format");
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
            int iMin = Math.min(integer3, i10);
            int i11 = (integer2 * iMin) / integer3;
            this.outputSurface = new CodecOutputSurface(i11, iMin);
            String string = format.getString("mime");
            MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(string == null ? "" : string);
            t.i(mediaCodecCreateDecoderByType, "createDecoderByType(...)");
            format.setInteger("width", i11);
            format.setInteger("height", iMin);
            mediaCodecCreateDecoderByType.configure(format, this.outputSurface.getSurface(), (MediaCrypto) null, 0);
            this.codec = mediaCodecCreateDecoderByType;
            mediaCodecCreateDecoderByType.start();
            ByteBuffer[] inputBuffers = this.codec.getInputBuffers();
            t.i(inputBuffers, "getInputBuffers(...)");
            this.decoderInputBuffers = inputBuffers;
        }

        public final int dequeueInputBuffer(long j6) {
            return this.codec.dequeueInputBuffer(j6);
        }

        public final void flush() {
            this.codec.flush();
        }

        @NotNull
        public final ByteBuffer getInputBuffer(int i10) {
            return this.decoderInputBuffers[i10];
        }

        public final void queueInputBuffer(int i10, int i11, int i12, long j6, int i13) {
            this.codec.queueInputBuffer(i10, i11, i12, j6, i13);
        }

        public final void release() {
            this.codec.release();
        }

        public final boolean tryExtractFrame(boolean z6, long j6) {
            int iDequeueOutputBuffer = this.codec.dequeueOutputBuffer(this.bufferInfo, 10000L);
            if (iDequeueOutputBuffer == -1 || iDequeueOutputBuffer == -3 || iDequeueOutputBuffer == -2) {
                return false;
            }
            if (iDequeueOutputBuffer < 0) {
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.bufferInfo;
            boolean z10 = (bufferInfo.flags & 4) != 0;
            boolean z11 = bufferInfo.size != 0;
            this.codec.releaseOutputBuffer(iDequeueOutputBuffer, z11);
            if (!z11 || (!z6 && this.bufferInfo.presentationTimeUs < j6)) {
                return z10;
            }
            try {
                this.outputSurface.awaitNewImage();
            } catch (RuntimeException unused) {
            }
            this.outputSurface.drawImage(true);
            CodecOutputSurface codecOutputSurface = this.outputSurface;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(codecOutputSurface.mWidth, codecOutputSurface.mHeight, Bitmap.Config.ARGB_8888);
            t.i(bitmapCreateBitmap, "createBitmap(...)");
            this.outputSurface.updateBitmap(bitmapCreateBitmap);
            if (this.rotation != 0) {
                Matrix matrix = new Matrix();
                matrix.postRotate(this.rotation);
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, true);
                t.i(bitmapCreateBitmap2, "createBitmap(...)");
                bitmapCreateBitmap.recycle();
                bitmapCreateBitmap = bitmapCreateBitmap2;
            }
            this.videoBitmap = bitmapCreateBitmap;
            return true;
        }
    }

    public interface FrameCallback {
        void onFrameBitmapLoaded(long j6, @Nullable Bitmap bitmap);
    }

    private static final class FrameRangeInfo {
        private static boolean ACCEPT_KEY_FRAME_IN_RANGE;

        @NotNull
        public static final Companion Companion = new Companion(null);
        private static boolean KEY_FRAME_ONLY = true;
        private boolean flushDecoder;
        private boolean keyFrameIsOkay;
        private long startNextSyncPts = -1;
        private long endNextSyncPts = -1;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            public final boolean getACCEPT_KEY_FRAME_IN_RANGE() {
                return FrameRangeInfo.ACCEPT_KEY_FRAME_IN_RANGE;
            }

            public final boolean getKEY_FRAME_ONLY() {
                return FrameRangeInfo.KEY_FRAME_ONLY;
            }

            public final void setACCEPT_KEY_FRAME_IN_RANGE(boolean z6) {
                FrameRangeInfo.ACCEPT_KEY_FRAME_IN_RANGE = z6;
            }

            public final void setKEY_FRAME_ONLY(boolean z6) {
                FrameRangeInfo.KEY_FRAME_ONLY = z6;
            }
        }

        private final long seekToKeyFrameAfter(MediaExtractor mediaExtractor, long j6) {
            mediaExtractor.seekTo(j6, 1);
            return mediaExtractor.getSampleTime();
        }

        private final long seekToKeyFrameBefore(MediaExtractor mediaExtractor, long j6) {
            mediaExtractor.seekTo(j6, 0);
            return mediaExtractor.getSampleTime();
        }

        public final boolean getFlushDecoder() {
            return this.flushDecoder;
        }

        public final boolean getKeyFrameIsOkay() {
            return this.keyFrameIsOkay;
        }

        public final void setFlushDecoder(boolean z6) {
            this.flushDecoder = z6;
        }

        public final void setKeyFrameIsOkay(boolean z6) {
            this.keyFrameIsOkay = z6;
        }

        public final void seekTo(long j6, long j10, @NotNull MediaExtractor extractor) {
            t.j(extractor, "extractor");
            if (KEY_FRAME_ONLY) {
                extractor.seekTo(j6, 0);
                this.keyFrameIsOkay = true;
                this.flushDecoder = true;
                return;
            }
            if (j6 == 0) {
                this.endNextSyncPts = seekToKeyFrameAfter(extractor, j10);
                this.startNextSyncPts = seekToKeyFrameBefore(extractor, j10);
                extractor.seekTo(0L, 0);
                this.keyFrameIsOkay = true;
                this.flushDecoder = false;
                return;
            }
            if (this.endNextSyncPts > j10) {
                if (this.startNextSyncPts <= extractor.getSampleTime()) {
                    this.keyFrameIsOkay = false;
                    this.flushDecoder = false;
                    return;
                } else {
                    this.startNextSyncPts = seekToKeyFrameBefore(extractor, j6);
                    this.keyFrameIsOkay = false;
                    this.flushDecoder = true;
                    return;
                }
            }
            this.endNextSyncPts = seekToKeyFrameAfter(extractor, j10);
            this.startNextSyncPts = seekToKeyFrameBefore(extractor, j10);
            if (ACCEPT_KEY_FRAME_IN_RANGE) {
                extractor.seekTo(j6, 1);
                this.keyFrameIsOkay = true;
                this.flushDecoder = true;
            } else {
                extractor.seekTo(j6, 0);
                this.keyFrameIsOkay = false;
                this.flushDecoder = true;
            }
        }
    }

    public VideoFrameReader(@NotNull String srcPath, int i10) throws IOException {
        Decoder decoder;
        t.j(srcPath, "srcPath");
        MediaExtractor mediaExtractor = new MediaExtractor();
        this.extractor = mediaExtractor;
        this.videoTrackIndex = -1;
        this.videoDuration = -1L;
        this.frameToReadList = new ArrayList();
        mediaExtractor.setDataSource(srcPath);
        this.videoTrackIndex = findVideoTrackIndex();
        this.rangeInfo = new FrameRangeInfo();
        int i11 = this.videoTrackIndex;
        if (i11 >= 0) {
            mediaExtractor.selectTrack(i11);
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(this.videoTrackIndex);
            t.i(trackFormat, "getTrackFormat(...)");
            try {
                decoder = new Decoder(trackFormat, i10);
            } catch (Exception e) {
                Log.e("VideoFrameReader init error", e);
                decoder = null;
            }
            this.decoder = decoder;
            this.videoDuration = trackFormat.getLong("durationUs");
        }
    }

    public final void clear() {
        this.isReleased = true;
        this.frameToReadList.clear();
        this.extractor.release();
        Decoder decoder = this.decoder;
        if (decoder != null) {
            decoder.release();
        }
    }

    public final boolean isWorking() {
        return this.working;
    }

    private final int findVideoTrackIndex() {
        int trackCount = this.extractor.getTrackCount();
        for (int i10 = 0; i10 < trackCount; i10++) {
            MediaFormat trackFormat = this.extractor.getTrackFormat(i10);
            t.i(trackFormat, "getTrackFormat(...)");
            String string = trackFormat.getString("mime");
            if (string == null) {
                return -1;
            }
            if (kotlin.text.t.K(string, "video/", false, 2, null)) {
                return i10;
            }
        }
        return -1;
    }

    @RequiresApi
    private final Bitmap getFrame(long j6, long j10) {
        Decoder decoder;
        if (this.videoTrackIndex >= 0 && !this.isReleased) {
            this.rangeInfo.seekTo(j6, j10, this.extractor);
            if (this.rangeInfo.getFlushDecoder() && (decoder = this.decoder) != null) {
                decoder.flush();
            }
            Decoder decoder2 = this.decoder;
            if (decoder2 != null) {
                do {
                    int iDequeueInputBuffer = decoder2.dequeueInputBuffer(10000L);
                    if (iDequeueInputBuffer >= 0) {
                        int sampleData = this.extractor.readSampleData(decoder2.getInputBuffer(iDequeueInputBuffer), 0);
                        if (sampleData < 0) {
                            decoder2.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                        } else if (this.extractor.getSampleTrackIndex() == this.videoTrackIndex) {
                            decoder2.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, this.extractor.getSampleTime(), 0);
                            this.extractor.advance();
                        }
                    }
                } while (!decoder2.tryExtractFrame(this.rangeInfo.getKeyFrameIsOkay(), j6));
                return decoder2.getVideoBitmap();
            }
        }
        return null;
    }

    @RequiresApi
    private final void pollNextFrame() {
        final Bitmap frame;
        if (this.frameToReadList.isEmpty() || this.isReleased) {
            this.working = false;
            return;
        }
        final u<Long, FrameCallback> uVarRemove = this.frameToReadList.remove(0);
        try {
            frame = getFrame(uVarRemove.c().longValue(), !this.frameToReadList.isEmpty() ? this.frameToReadList.get(0).c().longValue() : -1L);
        } catch (Exception e) {
            Log.e("VideoFrameReader retrieve frame error", e);
            frame = null;
        }
        Utils.handler.post(new Runnable() { // from class: com.narvii.pre_editing.frame.a
            @Override // java.lang.Runnable
            public final void run() {
                VideoFrameReader.pollNextFrame$lambda$0(uVarRemove, frame);
            }
        });
        pollNextFrame();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void pollNextFrame$lambda$0(u curFrameInfo, Bitmap bitmap) {
        t.j(curFrameInfo, "$curFrameInfo");
        ((FrameCallback) curFrameInfo.d()).onFrameBitmapLoaded(((Number) curFrameInfo.c()).longValue() / ((long) 1000), bitmap);
    }

    public final void start(@NotNull List<Long> timeMsList, @NotNull FrameCallback callback) {
        t.j(timeMsList, "timeMsList");
        t.j(callback, "callback");
        this.working = true;
        this.frameToReadList.clear();
        Iterator<Long> it = timeMsList.iterator();
        while (it.hasNext()) {
            this.frameToReadList.add(new u<>(Long.valueOf(it.next().longValue() * ((long) 1000)), callback));
        }
        pollNextFrame();
    }

    public /* synthetic */ VideoFrameReader(String str, int i10, int i11, k kVar) {
        this(str, (i11 & 2) != 0 ? 240 : i10);
    }
}
