package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.AbstractConcatenatedTimeline;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
@Deprecated
public final class LoopingMediaSource extends WrappingMediaSource {
    private final Map<MediaSource.MediaPeriodId, MediaSource.MediaPeriodId> childMediaPeriodIdToMediaPeriodId;
    private final int loopCount;
    private final Map<MediaPeriod, MediaSource.MediaPeriodId> mediaPeriodToChildMediaPeriodId;

    private static final class InfinitelyLoopingTimeline extends ForwardingTimeline {
        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public int i(int i10, int i11, boolean z6) {
            int i12 = this.timeline.i(i10, i11, z6);
            return i12 == -1 ? e(z6) : i12;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public int p(int i10, int i11, boolean z6) {
            int iP = this.timeline.p(i10, i11, z6);
            return iP == -1 ? g(z6) : iP;
        }

        public InfinitelyLoopingTimeline(Timeline timeline) {
            super(timeline);
        }
    }

    private static final class LoopingTimeline extends AbstractConcatenatedTimeline {
        private final int childPeriodCount;
        private final Timeline childTimeline;
        private final int childWindowCount;
        private final int loopCount;

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int D(int i10) {
            return i10 * this.childPeriodCount;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int E(int i10) {
            return i10 * this.childWindowCount;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected Timeline H(int i10) {
            return this.childTimeline;
        }

        @Override // androidx.media3.common.Timeline
        public int m() {
            return this.childPeriodCount * this.loopCount;
        }

        @Override // androidx.media3.common.Timeline
        public int t() {
            return this.childWindowCount * this.loopCount;
        }

        public LoopingTimeline(Timeline timeline, int i10) {
            super(false, new ShuffleOrder.UnshuffledShuffleOrder(i10));
            this.childTimeline = timeline;
            int iM = timeline.m();
            this.childPeriodCount = iM;
            this.childWindowCount = timeline.t();
            this.loopCount = i10;
            if (iM > 0) {
                Assertions.h(i10 <= Integer.MAX_VALUE / iM, "LoopingMediaSource contains too many periods");
            }
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int w(Object obj) {
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int x(int i10) {
            return i10 / this.childPeriodCount;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int y(int i10) {
            return i10 / this.childWindowCount;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected Object B(int i10) {
            return Integer.valueOf(i10);
        }
    }

    public LoopingMediaSource(MediaSource mediaSource) {
        this(mediaSource, Integer.MAX_VALUE);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean r() {
        return false;
    }

    public LoopingMediaSource(MediaSource mediaSource, int i10) {
        super(new MaskingMediaSource(mediaSource, false));
        Assertions.a(i10 > 0);
        this.loopCount = i10;
        this.childMediaPeriodIdToMediaPeriodId = new HashMap();
        this.mediaPeriodToChildMediaPeriodId = new HashMap();
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        this.mediaSource.A(mediaPeriod);
        MediaSource.MediaPeriodId mediaPeriodIdRemove = this.mediaPeriodToChildMediaPeriodId.remove(mediaPeriod);
        if (mediaPeriodIdRemove != null) {
            this.childMediaPeriodIdToMediaPeriodId.remove(mediaPeriodIdRemove);
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    protected void A0(Timeline timeline) {
        i0(this.loopCount != Integer.MAX_VALUE ? new LoopingTimeline(timeline, this.loopCount) : new InfinitelyLoopingTimeline(timeline));
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        if (this.loopCount == Integer.MAX_VALUE) {
            return this.mediaSource.M(mediaPeriodId, allocator, j6);
        }
        MediaSource.MediaPeriodId mediaPeriodIdD = mediaPeriodId.d(AbstractConcatenatedTimeline.z(mediaPeriodId.periodUid));
        this.childMediaPeriodIdToMediaPeriodId.put(mediaPeriodIdD, mediaPeriodId);
        MediaPeriod mediaPeriodM = this.mediaSource.M(mediaPeriodIdD, allocator, j6);
        this.mediaPeriodToChildMediaPeriodId.put(mediaPeriodM, mediaPeriodIdD);
        return mediaPeriodM;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    @Nullable
    public Timeline o() {
        MaskingMediaSource maskingMediaSource = (MaskingMediaSource) this.mediaSource;
        return this.loopCount != Integer.MAX_VALUE ? new LoopingTimeline(maskingMediaSource.H0(), this.loopCount) : new InfinitelyLoopingTimeline(maskingMediaSource.H0());
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    @Nullable
    protected MediaSource.MediaPeriodId u0(MediaSource.MediaPeriodId mediaPeriodId) {
        return this.loopCount != Integer.MAX_VALUE ? this.childMediaPeriodIdToMediaPeriodId.get(mediaPeriodId) : mediaPeriodId;
    }
}
