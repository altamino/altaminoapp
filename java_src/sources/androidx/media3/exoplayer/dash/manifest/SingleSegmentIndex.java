package androidx.media3.exoplayer.dash.manifest;

import androidx.media3.exoplayer.dash.DashSegmentIndex;

/* JADX INFO: loaded from: classes.dex */
final class SingleSegmentIndex implements DashSegmentIndex {
    private final RangedUri uri;

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long a(long j6, long j10) {
        return j10;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long b(long j6, long j10) {
        return 0L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long c(long j6, long j10) {
        return -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long d(long j6, long j10) {
        return 0L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long e(long j6) {
        return 1L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long f() {
        return 0L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public RangedUri g(long j6) {
        return this.uri;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getTimeUs(long j6) {
        return 0L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public boolean h() {
        return true;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long i(long j6, long j10) {
        return 1L;
    }

    public SingleSegmentIndex(RangedUri rangedUri) {
        this.uri = rangedUri;
    }
}
