package androidx.media3.exoplayer.source;

import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public abstract class ForwardingTimeline extends Timeline {
    protected final Timeline timeline;

    @Override // androidx.media3.common.Timeline
    public int e(boolean z6) {
        return this.timeline.e(z6);
    }

    @Override // androidx.media3.common.Timeline
    public int f(Object obj) {
        return this.timeline.f(obj);
    }

    @Override // androidx.media3.common.Timeline
    public int g(boolean z6) {
        return this.timeline.g(z6);
    }

    @Override // androidx.media3.common.Timeline
    public int i(int i10, int i11, boolean z6) {
        return this.timeline.i(i10, i11, z6);
    }

    @Override // androidx.media3.common.Timeline
    public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
        return this.timeline.k(i10, period, z6);
    }

    @Override // androidx.media3.common.Timeline
    public int m() {
        return this.timeline.m();
    }

    @Override // androidx.media3.common.Timeline
    public int p(int i10, int i11, boolean z6) {
        return this.timeline.p(i10, i11, z6);
    }

    @Override // androidx.media3.common.Timeline
    public Object q(int i10) {
        return this.timeline.q(i10);
    }

    @Override // androidx.media3.common.Timeline
    public Timeline.Window s(int i10, Timeline.Window window, long j6) {
        return this.timeline.s(i10, window, j6);
    }

    @Override // androidx.media3.common.Timeline
    public int t() {
        return this.timeline.t();
    }

    public ForwardingTimeline(Timeline timeline) {
        this.timeline = timeline;
    }
}
