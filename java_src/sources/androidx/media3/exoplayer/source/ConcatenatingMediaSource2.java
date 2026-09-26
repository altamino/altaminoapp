package androidx.media3.exoplayer.source;

import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class ConcatenatingMediaSource2 extends CompositeMediaSource<Integer> {
    private static final int MSG_UPDATE_TIMELINE = 0;
    private final MediaItem mediaItem;
    private final IdentityHashMap<MediaPeriod, MediaSourceHolder> mediaSourceByMediaPeriod;
    private final com.google.common.collect.a0<MediaSourceHolder> mediaSourceHolders;

    @Nullable
    private Handler playbackThreadHandler;
    private boolean timelineUpdateScheduled;

    public static final class Builder {
        private int index;

        @Nullable
        private MediaItem mediaItem;

        @Nullable
        private MediaSource.Factory mediaSourceFactory;
        private final com.google.common.collect.a0.a<MediaSourceHolder> mediaSourceHoldersBuilder = com.google.common.collect.a0.r();
    }

    private static final class ConcatenatedTimeline extends Timeline {
        private final long defaultPositionUs;
        private final long durationUs;
        private final com.google.common.collect.a0<Integer> firstPeriodIndices;
        private final boolean isDynamic;
        private final boolean isSeekable;

        @Nullable
        private final Object manifest;
        private final MediaItem mediaItem;
        private final com.google.common.collect.a0<Long> periodOffsetsInWindowUs;
        private final com.google.common.collect.a0<Timeline> timelines;

        @Override // androidx.media3.common.Timeline
        public int t() {
            return 1;
        }

        private int w(int i10) {
            return Util.g(this.firstPeriodIndices, Integer.valueOf(i10 + 1), false, false);
        }

        @Override // androidx.media3.common.Timeline
        public final int f(Object obj) {
            if (!(obj instanceof Pair) || !(((Pair) obj).first instanceof Integer)) {
                return -1;
            }
            int iZ0 = ConcatenatingMediaSource2.z0(obj);
            int iF = this.timelines.get(iZ0).f(ConcatenatingMediaSource2.B0(obj));
            if (iF == -1) {
                return -1;
            }
            return this.firstPeriodIndices.get(iZ0).intValue() + iF;
        }

        @Override // androidx.media3.common.Timeline
        public int m() {
            return this.periodOffsetsInWindowUs.size();
        }

        @Override // androidx.media3.common.Timeline
        public final Timeline.Window s(int i10, Timeline.Window window, long j6) {
            return window.i(Timeline.Window.SINGLE_WINDOW_UID, this.mediaItem, this.manifest, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.isSeekable, this.isDynamic, null, this.defaultPositionUs, this.durationUs, 0, m() - 1, -this.periodOffsetsInWindowUs.get(0).longValue());
        }

        public ConcatenatedTimeline(MediaItem mediaItem, com.google.common.collect.a0<Timeline> a0Var, com.google.common.collect.a0<Integer> a0Var2, com.google.common.collect.a0<Long> a0Var3, boolean z6, boolean z10, long j6, long j10, @Nullable Object obj) {
            this.mediaItem = mediaItem;
            this.timelines = a0Var;
            this.firstPeriodIndices = a0Var2;
            this.periodOffsetsInWindowUs = a0Var3;
            this.isSeekable = z6;
            this.isDynamic = z10;
            this.durationUs = j6;
            this.defaultPositionUs = j10;
            this.manifest = obj;
        }

        @Override // androidx.media3.common.Timeline
        public final Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
            int iW = w(i10);
            this.timelines.get(iW).k(i10 - this.firstPeriodIndices.get(iW).intValue(), period, z6);
            period.windowIndex = 0;
            period.positionInWindowUs = this.periodOffsetsInWindowUs.get(i10).longValue();
            if (z6) {
                period.uid = ConcatenatingMediaSource2.E0(iW, Assertions.e(period.uid));
            }
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public final Timeline.Period l(Object obj, Timeline.Period period) {
            int iZ0 = ConcatenatingMediaSource2.z0(obj);
            Object objB0 = ConcatenatingMediaSource2.B0(obj);
            Timeline timeline = this.timelines.get(iZ0);
            int iIntValue = this.firstPeriodIndices.get(iZ0).intValue() + timeline.f(objB0);
            timeline.l(objB0, period);
            period.windowIndex = 0;
            period.positionInWindowUs = this.periodOffsetsInWindowUs.get(iIntValue).longValue();
            period.uid = obj;
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public final Object q(int i10) {
            int iW = w(i10);
            return ConcatenatingMediaSource2.E0(iW, this.timelines.get(iW).q(i10 - this.firstPeriodIndices.get(iW).intValue()));
        }
    }

    private static int A0(long j6, int i10) {
        return (int) (j6 % ((long) i10));
    }

    private static long C0(long j6, int i10, int i11) {
        return (j6 * ((long) i10)) + ((long) i11);
    }

    private static long G0(long j6, int i10) {
        return j6 / ((long) i10);
    }

    private void L0() {
        this.timelineUpdateScheduled = false;
        ConcatenatedTimeline concatenatedTimelineI0 = I0();
        if (concatenatedTimelineI0 != null) {
            i0(concatenatedTimelineI0);
        }
    }

    private void y0() {
        for (int i10 = 0; i10 < this.mediaSourceHolders.size(); i10++) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i10);
            if (mediaSourceHolder.activeMediaPeriods == 0) {
                l0(Integer.valueOf(mediaSourceHolder.index));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public int p0(Integer num, int i10) {
        return 0;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void e0() {
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return this.mediaItem;
    }

    static final class MediaSourceHolder {
        public int activeMediaPeriods;
        public final int index;
        public final long initialPlaceholderDurationUs;
        public final MaskingMediaSource mediaSource;

        public MediaSourceHolder(MediaSource mediaSource, int i10, long j6) {
            this.mediaSource = new MaskingMediaSource(mediaSource, false);
            this.index = i10;
            this.initialPlaceholderDurationUs = j6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object B0(Object obj) {
        return ((Pair) obj).second;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean H0(Message message) {
        if (message.what != 0) {
            return true;
        }
        L0();
        return true;
    }

    @Nullable
    private ConcatenatedTimeline I0() {
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
        com.google.common.collect.a0.a aVarR2 = com.google.common.collect.a0.r();
        com.google.common.collect.a0.a aVarR3 = com.google.common.collect.a0.r();
        boolean z6 = true;
        boolean z10 = true;
        boolean z11 = true;
        int i10 = 0;
        Object obj = null;
        int iM = 0;
        long j6 = 0;
        boolean z12 = false;
        long j10 = 0;
        long j11 = 0;
        boolean z13 = false;
        while (i10 < this.mediaSourceHolders.size()) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i10);
            Timeline timelineH0 = mediaSourceHolder.mediaSource.H0();
            Assertions.b(timelineH0.u() ^ z6, "Can't concatenate empty child Timeline.");
            aVarR.d(timelineH0);
            aVarR2.d(Integer.valueOf(iM));
            iM += timelineH0.m();
            int i11 = 0;
            while (i11 < timelineH0.t()) {
                timelineH0.r(i11, window);
                if (!z13) {
                    obj = window.manifest;
                    z13 = true;
                }
                z10 = z10 && Util.c(obj, window.manifest);
                long j12 = window.durationUs;
                if (j12 == -9223372036854775807L) {
                    j12 = mediaSourceHolder.initialPlaceholderDurationUs;
                    if (j12 == -9223372036854775807L) {
                        return null;
                    }
                }
                j10 += j12;
                if (mediaSourceHolder.index == 0 && i11 == 0) {
                    j11 = window.defaultPositionUs;
                    j6 = -window.positionInFirstPeriodUs;
                } else {
                    Assertions.b(window.positionInFirstPeriodUs == 0, "Can't concatenate windows. A window has a non-zero offset in a period.");
                }
                z11 &= window.isSeekable || window.isPlaceholder;
                z12 |= window.isDynamic;
                i11++;
                i10 = i10;
            }
            int i12 = i10;
            int iM2 = timelineH0.m();
            int i13 = 0;
            while (i13 < iM2) {
                aVarR3.d(Long.valueOf(j6));
                timelineH0.j(i13, period);
                long j13 = period.durationUs;
                if (j13 == -9223372036854775807L) {
                    Assertions.b(iM2 == 1, "Can't concatenate multiple periods with unknown duration in one window.");
                    long j14 = window.durationUs;
                    if (j14 == -9223372036854775807L) {
                        j14 = mediaSourceHolder.initialPlaceholderDurationUs;
                    }
                    j13 = j14 + window.positionInFirstPeriodUs;
                }
                j6 += j13;
                i13++;
                aVarR = aVarR;
                period = period;
            }
            i10 = i12 + 1;
            z6 = true;
        }
        return new ConcatenatedTimeline(this.mediaItem, aVarR.k(), aVarR2.k(), aVarR3.k(), z11, z12, j10, j11, z10 ? obj : null);
    }

    private void K0() {
        if (this.timelineUpdateScheduled) {
            return;
        }
        ((Handler) Assertions.e(this.playbackThreadHandler)).obtainMessage(0).sendToTarget();
        this.timelineUpdateScheduled = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int z0(Object obj) {
        return ((Integer) ((Pair) obj).first).intValue();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Assertions.e(this.mediaSourceByMediaPeriod.remove(mediaPeriod));
        mediaSourceHolder.mediaSource.A(mediaPeriod);
        mediaSourceHolder.activeMediaPeriods--;
        if (this.mediaSourceByMediaPeriod.isEmpty()) {
            return;
        }
        y0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    @Nullable
    /* JADX INFO: renamed from: D0, reason: merged with bridge method [inline-methods] */
    public MediaSource.MediaPeriodId n0(Integer num, MediaSource.MediaPeriodId mediaPeriodId) {
        if (num.intValue() != A0(mediaPeriodId.windowSequenceNumber, this.mediaSourceHolders.size())) {
            return null;
        }
        return mediaPeriodId.d(E0(num.intValue(), mediaPeriodId.periodUid)).e(G0(mediaPeriodId.windowSequenceNumber, this.mediaSourceHolders.size()));
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(z0(mediaPeriodId.periodUid));
        MediaSource.MediaPeriodId mediaPeriodIdE = mediaPeriodId.d(B0(mediaPeriodId.periodUid)).e(C0(mediaPeriodId.windowSequenceNumber, this.mediaSourceHolders.size(), mediaSourceHolder.index));
        m0(Integer.valueOf(mediaSourceHolder.index));
        mediaSourceHolder.activeMediaPeriods++;
        MaskingMediaPeriod maskingMediaPeriodM = mediaSourceHolder.mediaSource.M(mediaPeriodIdE, allocator, j6);
        this.mediaSourceByMediaPeriod.put(maskingMediaPeriodM, mediaSourceHolder);
        y0();
        return maskingMediaPeriodM;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object E0(int i10, Object obj) {
        return Pair.create(Integer.valueOf(i10), obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public void q0(Integer num, MediaSource mediaSource, Timeline timeline) {
        K0();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void h0(@Nullable TransferListener transferListener) {
        super.h0(transferListener);
        this.playbackThreadHandler = new Handler(new Handler.Callback() { // from class: androidx.media3.exoplayer.source.c
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f603a.H0(message);
            }
        });
        for (int i10 = 0; i10 < this.mediaSourceHolders.size(); i10++) {
            s0(Integer.valueOf(i10), this.mediaSourceHolders.get(i10).mediaSource);
        }
        K0();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
        super.j0();
        Handler handler = this.playbackThreadHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.playbackThreadHandler = null;
        }
        this.timelineUpdateScheduled = false;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    @Nullable
    public Timeline o() {
        return I0();
    }
}
