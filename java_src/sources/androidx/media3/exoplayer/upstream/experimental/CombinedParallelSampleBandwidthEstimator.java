package androidx.media3.exoplayer.upstream.experimental;

import android.os.Handler;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public class CombinedParallelSampleBandwidthEstimator implements BandwidthEstimator {
    private long bandwidthEstimate;
    private final BandwidthStatistic bandwidthStatistic;
    private final Clock clock;
    private final BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    private long lastReportedBandwidthEstimate;
    private final long minBytesTransferred;
    private final int minSamples;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private int streamCount;
    private long totalBytesTransferred;
    private int totalSamplesAdded;

    public static class Builder {
        private BandwidthStatistic bandwidthStatistic = new SlidingWeightedAverageBandwidthStatistic();
        private Clock clock = Clock.DEFAULT;
        private long minBytesTransferred;
        private int minSamples;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public long b() {
        return this.bandwidthEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void d(DataSource dataSource) {
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void f(DataSource dataSource, int i10) {
        long j6 = i10;
        this.sampleBytesTransferred += j6;
        this.totalBytesTransferred += j6;
    }

    private void h(int i10, long j6, long j10) {
        if (j10 != Long.MIN_VALUE) {
            if (i10 == 0 && j6 == 0 && j10 == this.lastReportedBandwidthEstimate) {
                return;
            }
            this.lastReportedBandwidthEstimate = j10;
            this.eventDispatcher.c(i10, j6, j10);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void a(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.e(eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void c(Handler handler, BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.b(handler, eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void e(DataSource dataSource) {
        Assertions.g(this.streamCount > 0);
        int i10 = this.streamCount - 1;
        this.streamCount = i10;
        if (i10 > 0) {
            return;
        }
        long jElapsedRealtime = (int) (this.clock.elapsedRealtime() - this.sampleStartTimeMs);
        if (jElapsedRealtime > 0) {
            this.bandwidthStatistic.a(this.sampleBytesTransferred, 1000 * jElapsedRealtime);
            int i11 = this.totalSamplesAdded + 1;
            this.totalSamplesAdded = i11;
            if (i11 > this.minSamples && this.totalBytesTransferred > this.minBytesTransferred) {
                this.bandwidthEstimate = this.bandwidthStatistic.b();
            }
            h((int) jElapsedRealtime, this.sampleBytesTransferred, this.bandwidthEstimate);
            this.sampleBytesTransferred = 0L;
        }
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void g(DataSource dataSource) {
        if (this.streamCount == 0) {
            this.sampleStartTimeMs = this.clock.elapsedRealtime();
        }
        this.streamCount++;
    }
}
