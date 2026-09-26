package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.collect.m0;
import com.google.common.collect.n0;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class MergingMediaSource extends CompositeMediaSource<Integer> {
    private static final int PERIOD_COUNT_UNSET = -1;
    private static final MediaItem PLACEHOLDER_MEDIA_ITEM = new MediaItem.Builder().e("MergingMediaSource").a();
    private final boolean adjustPeriodTimeOffsets;
    private final boolean clipDurations;
    private final Map<Object, Long> clippedDurationsUs;
    private final m0<Object, ClippingMediaPeriod> clippedMediaPeriods;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final MediaSource[] mediaSources;

    @Nullable
    private IllegalMergeException mergeError;
    private final ArrayList<MediaSource> pendingTimelineSources;
    private int periodCount;
    private long[][] periodTimeOffsetsUs;
    private final Timeline[] timelines;

    public MergingMediaSource(MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }

    private static final class ClippedTimeline extends ForwardingTimeline {
        private final long[] periodDurationsUs;
        private final long[] windowDurationsUs;

        public ClippedTimeline(Timeline timeline, Map<Object, Long> map) {
            super(timeline);
            int iT = timeline.t();
            this.windowDurationsUs = new long[timeline.t()];
            Timeline.Window window = new Timeline.Window();
            for (int i10 = 0; i10 < iT; i10++) {
                this.windowDurationsUs[i10] = timeline.r(i10, window).durationUs;
            }
            int iM = timeline.m();
            this.periodDurationsUs = new long[iM];
            Timeline.Period period = new Timeline.Period();
            for (int i11 = 0; i11 < iM; i11++) {
                timeline.k(i11, period, true);
                long jLongValue = ((Long) Assertions.e(map.get(period.uid))).longValue();
                long[] jArr = this.periodDurationsUs;
                jLongValue = jLongValue == Long.MIN_VALUE ? period.durationUs : jLongValue;
                jArr[i11] = jLongValue;
                long j6 = period.durationUs;
                if (j6 != -9223372036854775807L) {
                    long[] jArr2 = this.windowDurationsUs;
                    int i12 = period.windowIndex;
                    jArr2[i12] = jArr2[i12] - (j6 - jLongValue);
                }
            }
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
            super.k(i10, period, z6);
            period.durationUs = this.periodDurationsUs[i10];
            return period;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x001e  */
        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Window s(int i10, Timeline.Window window, long j6) {
            long jMin;
            super.s(i10, window, j6);
            long j10 = this.windowDurationsUs[i10];
            window.durationUs = j10;
            if (j10 != -9223372036854775807L) {
                long j11 = window.defaultPositionUs;
                if (j11 != -9223372036854775807L) {
                    jMin = Math.min(j11, j10);
                } else {
                    jMin = window.defaultPositionUs;
                }
            } else {
                jMin = window.defaultPositionUs;
            }
            window.defaultPositionUs = jMin;
            return window;
        }
    }

    public static final class IllegalMergeException extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        public IllegalMergeException(int i10) {
            this.reason = i10;
        }
    }

    public MergingMediaSource(boolean z6, MediaSource... mediaSourceArr) {
        this(z6, false, mediaSourceArr);
    }

    private void u0() {
        Timeline.Period period = new Timeline.Period();
        for (int i10 = 0; i10 < this.periodCount; i10++) {
            long j6 = -this.timelines[0].j(i10, period).r();
            int i11 = 1;
            while (true) {
                Timeline[] timelineArr = this.timelines;
                if (i11 < timelineArr.length) {
                    this.periodTimeOffsetsUs[i10][i11] = j6 - (-timelineArr[i11].j(i10, period).r());
                    i11++;
                }
            }
        }
    }

    private void x0() {
        Timeline[] timelineArr;
        Timeline.Period period = new Timeline.Period();
        for (int i10 = 0; i10 < this.periodCount; i10++) {
            int i11 = 0;
            long j6 = Long.MIN_VALUE;
            while (true) {
                timelineArr = this.timelines;
                if (i11 >= timelineArr.length) {
                    break;
                }
                long jN = timelineArr[i11].j(i10, period).n();
                if (jN != -9223372036854775807L) {
                    long j10 = jN + this.periodTimeOffsetsUs[i10][i11];
                    if (j6 == Long.MIN_VALUE || j10 < j6) {
                        j6 = j10;
                    }
                }
                i11++;
            }
            Object objQ = timelineArr[0].q(i10);
            this.clippedDurationsUs.put(objQ, Long.valueOf(j6));
            Iterator<ClippingMediaPeriod> it = this.clippedMediaPeriods.q(objQ).iterator();
            while (it.hasNext()) {
                it.next().l(0L, j6);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        if (this.clipDurations) {
            ClippingMediaPeriod clippingMediaPeriod = (ClippingMediaPeriod) mediaPeriod;
            for (Map.Entry<Object, ClippingMediaPeriod> entry : this.clippedMediaPeriods.o()) {
                if (entry.getValue().equals(clippingMediaPeriod)) {
                    this.clippedMediaPeriods.remove(entry.getKey(), entry.getValue());
                    break;
                }
            }
            mediaPeriod = clippingMediaPeriod.mediaPeriod;
        }
        MergingMediaPeriod mergingMediaPeriod = (MergingMediaPeriod) mediaPeriod;
        int i10 = 0;
        while (true) {
            MediaSource[] mediaSourceArr = this.mediaSources;
            if (i10 >= mediaSourceArr.length) {
                return;
            }
            mediaSourceArr[i10].A(mergingMediaPeriod.b(i10));
            i10++;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        int length = this.mediaSources.length;
        MediaPeriod[] mediaPeriodArr = new MediaPeriod[length];
        int iF = this.timelines[0].f(mediaPeriodId.periodUid);
        for (int i10 = 0; i10 < length; i10++) {
            mediaPeriodArr[i10] = this.mediaSources[i10].M(mediaPeriodId.d(this.timelines[i10].q(iF)), allocator, j6 - this.periodTimeOffsetsUs[iF][i10]);
        }
        MergingMediaPeriod mergingMediaPeriod = new MergingMediaPeriod(this.compositeSequenceableLoaderFactory, this.periodTimeOffsetsUs[iF], mediaPeriodArr);
        if (!this.clipDurations) {
            return mergingMediaPeriod;
        }
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(mergingMediaPeriod, true, 0L, ((Long) Assertions.e(this.clippedDurationsUs.get(mediaPeriodId.periodUid))).longValue());
        this.clippedMediaPeriods.put(mediaPeriodId.periodUid, clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        MediaSource[] mediaSourceArr = this.mediaSources;
        return mediaSourceArr.length > 0 ? mediaSourceArr[0].j() : PLACEHOLDER_MEDIA_ITEM;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalMergeException illegalMergeException = this.mergeError;
        if (illegalMergeException != null) {
            throw illegalMergeException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: w0, reason: merged with bridge method [inline-methods] */
    public void q0(Integer num, MediaSource mediaSource, Timeline timeline) {
        if (this.mergeError != null) {
            return;
        }
        if (this.periodCount == -1) {
            this.periodCount = timeline.m();
        } else if (timeline.m() != this.periodCount) {
            this.mergeError = new IllegalMergeException(0);
            return;
        }
        if (this.periodTimeOffsetsUs.length == 0) {
            this.periodTimeOffsetsUs = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.periodCount, this.timelines.length);
        }
        this.pendingTimelineSources.remove(mediaSource);
        this.timelines[num.intValue()] = timeline;
        if (this.pendingTimelineSources.isEmpty()) {
            if (this.adjustPeriodTimeOffsets) {
                u0();
            }
            Timeline clippedTimeline = this.timelines[0];
            if (this.clipDurations) {
                x0();
                clippedTimeline = new ClippedTimeline(clippedTimeline, this.clippedDurationsUs);
            }
            i0(clippedTimeline);
        }
    }

    public MergingMediaSource(boolean z6, boolean z10, MediaSource... mediaSourceArr) {
        this(z6, z10, new DefaultCompositeSequenceableLoaderFactory(), mediaSourceArr);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void h0(@Nullable TransferListener transferListener) {
        super.h0(transferListener);
        for (int i10 = 0; i10 < this.mediaSources.length; i10++) {
            s0(Integer.valueOf(i10), this.mediaSources[i10]);
        }
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
        super.j0();
        Arrays.fill(this.timelines, (Object) null);
        this.periodCount = -1;
        this.mergeError = null;
        this.pendingTimelineSources.clear();
        Collections.addAll(this.pendingTimelineSources, this.mediaSources);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    @Nullable
    /* JADX INFO: renamed from: v0, reason: merged with bridge method [inline-methods] */
    public MediaSource.MediaPeriodId n0(Integer num, MediaSource.MediaPeriodId mediaPeriodId) {
        if (num.intValue() != 0) {
            return null;
        }
        return mediaPeriodId;
    }

    public MergingMediaSource(boolean z6, boolean z10, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, MediaSource... mediaSourceArr) {
        this.adjustPeriodTimeOffsets = z6;
        this.clipDurations = z10;
        this.mediaSources = mediaSourceArr;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.pendingTimelineSources = new ArrayList<>(Arrays.asList(mediaSourceArr));
        this.periodCount = -1;
        this.timelines = new Timeline[mediaSourceArr.length];
        this.periodTimeOffsetsUs = new long[0][];
        this.clippedDurationsUs = new HashMap();
        this.clippedMediaPeriods = n0.a().a().e();
    }
}
