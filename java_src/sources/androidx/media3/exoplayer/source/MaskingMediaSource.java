package androidx.media3.exoplayer.source;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.upstream.Allocator;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class MaskingMediaSource extends WrappingMediaSource {
    private boolean hasRealTimeline;
    private boolean hasStartedPreparing;
    private boolean isPrepared;
    private final Timeline.Period period;
    private MaskingTimeline timeline;

    @Nullable
    private MaskingMediaPeriod unpreparedMaskingMediaPeriod;
    private final boolean useLazyPreparation;
    private final Timeline.Window window;

    private static final class MaskingTimeline extends ForwardingTimeline {
        public static final Object MASKING_EXTERNAL_PERIOD_UID = new Object();

        @Nullable
        private final Object replacedInternalPeriodUid;

        @Nullable
        private final Object replacedInternalWindowUid;

        public static MaskingTimeline y(MediaItem mediaItem) {
            return new MaskingTimeline(new PlaceholderTimeline(mediaItem), Timeline.Window.SINGLE_WINDOW_UID, MASKING_EXTERNAL_PERIOD_UID);
        }

        public static MaskingTimeline z(Timeline timeline, @Nullable Object obj, @Nullable Object obj2) {
            return new MaskingTimeline(timeline, obj, obj2);
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public int f(Object obj) {
            Object obj2;
            Timeline timeline = this.timeline;
            if (MASKING_EXTERNAL_PERIOD_UID.equals(obj) && (obj2 = this.replacedInternalPeriodUid) != null) {
                obj = obj2;
            }
            return timeline.f(obj);
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
            this.timeline.k(i10, period, z6);
            if (Util.c(period.uid, this.replacedInternalPeriodUid) && z6) {
                period.uid = MASKING_EXTERNAL_PERIOD_UID;
            }
            return period;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Object q(int i10) {
            Object objQ = this.timeline.q(i10);
            return Util.c(objQ, this.replacedInternalPeriodUid) ? MASKING_EXTERNAL_PERIOD_UID : objQ;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Window s(int i10, Timeline.Window window, long j6) {
            this.timeline.s(i10, window, j6);
            if (Util.c(window.uid, this.replacedInternalWindowUid)) {
                window.uid = Timeline.Window.SINGLE_WINDOW_UID;
            }
            return window;
        }

        public MaskingTimeline x(Timeline timeline) {
            return new MaskingTimeline(timeline, this.replacedInternalWindowUid, this.replacedInternalPeriodUid);
        }

        private MaskingTimeline(Timeline timeline, @Nullable Object obj, @Nullable Object obj2) {
            super(timeline);
            this.replacedInternalWindowUid = obj;
            this.replacedInternalPeriodUid = obj2;
        }
    }

    @VisibleForTesting
    public static final class PlaceholderTimeline extends Timeline {
        private final MediaItem mediaItem;

        @Override // androidx.media3.common.Timeline
        public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
            period.x(z6 ? 0 : null, z6 ? MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID : null, 0, -9223372036854775807L, 0L, AdPlaybackState.NONE, true);
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public int m() {
            return 1;
        }

        @Override // androidx.media3.common.Timeline
        public int t() {
            return 1;
        }

        @Override // androidx.media3.common.Timeline
        public int f(Object obj) {
            return obj == MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID ? 0 : -1;
        }

        @Override // androidx.media3.common.Timeline
        public Object q(int i10) {
            return MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID;
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Window s(int i10, Timeline.Window window, long j6) {
            window.i(Timeline.Window.SINGLE_WINDOW_UID, this.mediaItem, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
            window.isPlaceholder = true;
            return window;
        }

        public PlaceholderTimeline(MediaItem mediaItem) {
            this.mediaItem = mediaItem;
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        ((MaskingMediaPeriod) mediaPeriod).m();
        if (mediaPeriod == this.unpreparedMaskingMediaPeriod) {
            this.unpreparedMaskingMediaPeriod = null;
        }
    }

    public Timeline H0() {
        return this.timeline;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void j0() {
        this.isPrepared = false;
        this.hasStartedPreparing = false;
        super.j0();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    private Object F0(Object obj) {
        return (this.timeline.replacedInternalPeriodUid == null || !this.timeline.replacedInternalPeriodUid.equals(obj)) ? obj : MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID;
    }

    private Object G0(Object obj) {
        return (this.timeline.replacedInternalPeriodUid == null || !obj.equals(MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID)) ? obj : this.timeline.replacedInternalPeriodUid;
    }

    private void I0(long j6) {
        MaskingMediaPeriod maskingMediaPeriod = this.unpreparedMaskingMediaPeriod;
        int iF = this.timeline.f(maskingMediaPeriod.id.periodUid);
        if (iF == -1) {
            return;
        }
        long j10 = this.timeline.j(iF, this.period).durationUs;
        if (j10 != -9223372036854775807L && j6 >= j10) {
            j6 = Math.max(0L, j10 - 1);
        }
        maskingMediaPeriod.l(j6);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    protected void A0(Timeline timeline) {
        long j6;
        MediaSource.MediaPeriodId mediaPeriodIdD;
        if (this.isPrepared) {
            this.timeline = this.timeline.x(timeline);
            MaskingMediaPeriod maskingMediaPeriod = this.unpreparedMaskingMediaPeriod;
            if (maskingMediaPeriod != null) {
                I0(maskingMediaPeriod.h());
            }
        } else {
            if (!timeline.u()) {
                timeline.r(0, this.window);
                long jE = this.window.e();
                Object obj = this.window.uid;
                MaskingMediaPeriod maskingMediaPeriod2 = this.unpreparedMaskingMediaPeriod;
                if (maskingMediaPeriod2 != null) {
                    long jI = maskingMediaPeriod2.i();
                    this.timeline.l(this.unpreparedMaskingMediaPeriod.id.periodUid, this.period);
                    long jR = this.period.r() + jI;
                    if (jR != this.timeline.r(0, this.window).e()) {
                        j6 = jR;
                    } else {
                        j6 = jE;
                    }
                } else {
                    j6 = jE;
                }
                Pair<Object, Long> pairN = timeline.n(this.window, this.period, 0, j6);
                Object obj2 = pairN.first;
                long jLongValue = ((Long) pairN.second).longValue();
                this.timeline = this.hasRealTimeline ? this.timeline.x(timeline) : MaskingTimeline.z(timeline, obj, obj2);
                MaskingMediaPeriod maskingMediaPeriod3 = this.unpreparedMaskingMediaPeriod;
                if (maskingMediaPeriod3 != null) {
                    I0(jLongValue);
                    MediaSource.MediaPeriodId mediaPeriodId = maskingMediaPeriod3.id;
                    mediaPeriodIdD = mediaPeriodId.d(G0(mediaPeriodId.periodUid));
                }
                this.hasRealTimeline = true;
                this.isPrepared = true;
                i0(this.timeline);
                if (mediaPeriodIdD != null) {
                    ((MaskingMediaPeriod) Assertions.e(this.unpreparedMaskingMediaPeriod)).b(mediaPeriodIdD);
                }
            }
            this.timeline = this.hasRealTimeline ? this.timeline.x(timeline) : MaskingTimeline.z(timeline, Timeline.Window.SINGLE_WINDOW_UID, MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID);
        }
        mediaPeriodIdD = null;
        this.hasRealTimeline = true;
        this.isPrepared = true;
        i0(this.timeline);
        if (mediaPeriodIdD != null) {
            ((MaskingMediaPeriod) Assertions.e(this.unpreparedMaskingMediaPeriod)).b(mediaPeriodIdD);
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public void D0() {
        if (this.useLazyPreparation) {
            return;
        }
        this.hasStartedPreparing = true;
        C0();
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    /* JADX INFO: renamed from: E0, reason: merged with bridge method [inline-methods] */
    public MaskingMediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        MaskingMediaPeriod maskingMediaPeriod = new MaskingMediaPeriod(mediaPeriodId, allocator, j6);
        maskingMediaPeriod.n(this.mediaSource);
        if (this.isPrepared) {
            maskingMediaPeriod.b(mediaPeriodId.d(G0(mediaPeriodId.periodUid)));
        } else {
            this.unpreparedMaskingMediaPeriod = maskingMediaPeriod;
            if (!this.hasStartedPreparing) {
                this.hasStartedPreparing = true;
                C0();
            }
        }
        return maskingMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    @Nullable
    protected MediaSource.MediaPeriodId u0(MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId.d(F0(mediaPeriodId.periodUid));
    }

    public MaskingMediaSource(MediaSource mediaSource, boolean z6) {
        boolean z10;
        super(mediaSource);
        if (z6 && mediaSource.r()) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.useLazyPreparation = z10;
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        Timeline timelineO = mediaSource.o();
        if (timelineO != null) {
            this.timeline = MaskingTimeline.z(timelineO, null, null);
            this.hasRealTimeline = true;
        } else {
            this.timeline = MaskingTimeline.y(mediaSource.j());
        }
    }
}
