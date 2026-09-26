package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.core.os.EnvironmentCompat;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class ClippingMediaSource extends WrappingMediaSource {
    private final boolean allowDynamicClippingUpdates;

    @Nullable
    private IllegalClippingException clippingError;

    @Nullable
    private ClippingTimeline clippingTimeline;
    private final boolean enableInitialDiscontinuity;
    private final long endUs;
    private final ArrayList<ClippingMediaPeriod> mediaPeriods;
    private long periodEndUs;
    private long periodStartUs;
    private final boolean relativeToDefaultPosition;
    private final long startUs;
    private final Timeline.Window window;

    private static final class ClippingTimeline extends ForwardingTimeline {
        private final long durationUs;
        private final long endUs;
        private final boolean isDynamic;
        private final long startUs;

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
            this.timeline.k(0, period, z6);
            long jR = period.r() - this.startUs;
            long j6 = this.durationUs;
            return period.w(period.id, period.uid, 0, j6 == -9223372036854775807L ? -9223372036854775807L : j6 - jR, jR);
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Window s(int i10, Timeline.Window window, long j6) {
            this.timeline.s(0, window, 0L);
            long j10 = window.positionInFirstPeriodUs;
            long j11 = this.startUs;
            window.positionInFirstPeriodUs = j10 + j11;
            window.durationUs = this.durationUs;
            window.isDynamic = this.isDynamic;
            long j12 = window.defaultPositionUs;
            if (j12 != -9223372036854775807L) {
                long jMax = Math.max(j12, j11);
                window.defaultPositionUs = jMax;
                long j13 = this.endUs;
                if (j13 != -9223372036854775807L) {
                    jMax = Math.min(jMax, j13);
                }
                window.defaultPositionUs = jMax - this.startUs;
            }
            long jQ1 = Util.q1(this.startUs);
            long j14 = window.presentationStartTimeMs;
            if (j14 != -9223372036854775807L) {
                window.presentationStartTimeMs = j14 + jQ1;
            }
            long j15 = window.windowStartTimeMs;
            if (j15 != -9223372036854775807L) {
                window.windowStartTimeMs = j15 + jQ1;
            }
            return window;
        }

        public ClippingTimeline(Timeline timeline, long j6, long j10) throws IllegalClippingException {
            long jMax;
            long j11;
            super(timeline);
            boolean z6 = false;
            if (timeline.m() == 1) {
                Timeline.Window windowR = timeline.r(0, new Timeline.Window());
                long jMax2 = Math.max(0L, j6);
                if (!windowR.isPlaceholder && jMax2 != 0 && !windowR.isSeekable) {
                    throw new IllegalClippingException(1);
                }
                if (j10 == Long.MIN_VALUE) {
                    jMax = windowR.durationUs;
                } else {
                    jMax = Math.max(0L, j10);
                }
                long j12 = windowR.durationUs;
                if (j12 != -9223372036854775807L) {
                    jMax = jMax > j12 ? j12 : jMax;
                    if (jMax2 > jMax) {
                        throw new IllegalClippingException(2);
                    }
                }
                this.startUs = jMax2;
                this.endUs = jMax;
                if (jMax == -9223372036854775807L) {
                    j11 = -9223372036854775807L;
                } else {
                    j11 = jMax - jMax2;
                }
                this.durationUs = j11;
                if (windowR.isDynamic && (jMax == -9223372036854775807L || (j12 != -9223372036854775807L && jMax == j12))) {
                    z6 = true;
                }
                this.isDynamic = z6;
                return;
            }
            throw new IllegalClippingException(0);
        }
    }

    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        private static String a(int i10) {
            if (i10 == 0) {
                return "invalid period count";
            }
            if (i10 != 1) {
                return i10 != 2 ? EnvironmentCompat.MEDIA_UNKNOWN : "start exceeds end";
            }
            return "not seekable to start";
        }

        public IllegalClippingException(int i10) {
            super("Illegal clipping: " + a(i10));
            this.reason = i10;
        }
    }

    public ClippingMediaSource(MediaSource mediaSource, long j6, long j10) {
        this(mediaSource, j6, j10, true, false, false);
    }

    private void E0(Timeline timeline) {
        long j6;
        long j10;
        timeline.r(0, this.window);
        long jG = this.window.g();
        if (this.clippingTimeline == null || this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            long j11 = this.startUs;
            long j12 = this.endUs;
            if (this.relativeToDefaultPosition) {
                long jE = this.window.e();
                j11 += jE;
                j12 += jE;
            }
            this.periodStartUs = jG + j11;
            this.periodEndUs = this.endUs != Long.MIN_VALUE ? jG + j12 : Long.MIN_VALUE;
            int size = this.mediaPeriods.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mediaPeriods.get(i10).l(this.periodStartUs, this.periodEndUs);
            }
            j6 = j11;
            j10 = j12;
        } else {
            long j13 = this.periodStartUs - jG;
            j10 = this.endUs != Long.MIN_VALUE ? this.periodEndUs - jG : Long.MIN_VALUE;
            j6 = j13;
        }
        try {
            ClippingTimeline clippingTimeline = new ClippingTimeline(timeline, j6, j10);
            this.clippingTimeline = clippingTimeline;
            i0(clippingTimeline);
        } catch (IllegalClippingException e) {
            this.clippingError = e;
            for (int i11 = 0; i11 < this.mediaPeriods.size(); i11++) {
                this.mediaPeriods.get(i11).j(this.clippingError);
            }
        }
    }

    public ClippingMediaSource(MediaSource mediaSource, long j6) {
        this(mediaSource, 0L, j6, true, false, true);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        Assertions.g(this.mediaPeriods.remove(mediaPeriod));
        this.mediaSource.A(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
        if (!this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            return;
        }
        E0(((ClippingTimeline) Assertions.e(this.clippingTimeline)).timeline);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    protected void A0(Timeline timeline) {
        if (this.clippingError != null) {
            return;
        }
        E0(timeline);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(this.mediaSource.M(mediaPeriodId, allocator, j6), this.enableInitialDiscontinuity, this.periodStartUs, this.periodEndUs);
        this.mediaPeriods.add(clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    public ClippingMediaSource(MediaSource mediaSource, long j6, long j10, boolean z6, boolean z10, boolean z11) {
        super((MediaSource) Assertions.e(mediaSource));
        Assertions.a(j6 >= 0);
        this.startUs = j6;
        this.endUs = j10;
        this.enableInitialDiscontinuity = z6;
        this.allowDynamicClippingUpdates = z10;
        this.relativeToDefaultPosition = z11;
        this.mediaPeriods = new ArrayList<>();
        this.window = new Timeline.Window();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
        super.j0();
        this.clippingError = null;
        this.clippingTimeline = null;
    }
}
