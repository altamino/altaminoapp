package androidx.media3.exoplayer.dash;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.dash.manifest.RangedUri;
import androidx.media3.extractor.ChunkIndex;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class DashWrappingSegmentIndex implements DashSegmentIndex {
    private final ChunkIndex chunkIndex;
    private final long timeOffsetUs;

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long b(long j6, long j10) {
        return 0L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long c(long j6, long j10) {
        return -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long f() {
        return 0L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public boolean h() {
        return true;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long a(long j6, long j10) {
        return this.chunkIndex.durationsUs[(int) j6];
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long d(long j6, long j10) {
        return this.chunkIndex.b(j6 + this.timeOffsetUs);
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long e(long j6) {
        return this.chunkIndex.length;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public RangedUri g(long j6) {
        ChunkIndex chunkIndex = this.chunkIndex;
        int i10 = (int) j6;
        return new RangedUri(null, chunkIndex.offsets[i10], chunkIndex.sizes[i10]);
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getTimeUs(long j6) {
        return this.chunkIndex.timesUs[(int) j6] - this.timeOffsetUs;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long i(long j6, long j10) {
        return this.chunkIndex.length;
    }

    public DashWrappingSegmentIndex(ChunkIndex chunkIndex, long j6) {
        this.chunkIndex = chunkIndex;
        this.timeOffsetUs = j6;
    }
}
