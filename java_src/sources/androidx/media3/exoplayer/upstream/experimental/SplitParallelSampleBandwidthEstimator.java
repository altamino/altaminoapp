package androidx.media3.exoplayer.upstream.experimental;

import android.os.Handler;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public class SplitParallelSampleBandwidthEstimator implements BandwidthEstimator {
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

        public SplitParallelSampleBandwidthEstimator e() {
            return new SplitParallelSampleBandwidthEstimator(this);
        }
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

    private SplitParallelSampleBandwidthEstimator(Builder builder) {
        this.bandwidthStatistic = builder.bandwidthStatistic;
        this.minSamples = builder.minSamples;
        this.minBytesTransferred = builder.minBytesTransferred;
        this.clock = builder.clock;
        this.eventDispatcher = new BandwidthMeter.EventListener.EventDispatcher();
        this.bandwidthEstimate = Long.MIN_VALUE;
        this.lastReportedBandwidthEstimate = Long.MIN_VALUE;
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
        long jElapsedRealtime = this.clock.elapsedRealtime();
        long j6 = (int) (jElapsedRealtime - this.sampleStartTimeMs);
        if (j6 > 0) {
            this.bandwidthStatistic.a(this.sampleBytesTransferred, 1000 * j6);
            int i10 = this.totalSamplesAdded + 1;
            this.totalSamplesAdded = i10;
            if (i10 > this.minSamples && this.totalBytesTransferred > this.minBytesTransferred) {
                this.bandwidthEstimate = this.bandwidthStatistic.b();
            }
            h((int) j6, this.sampleBytesTransferred, this.bandwidthEstimate);
            this.sampleStartTimeMs = jElapsedRealtime;
            this.sampleBytesTransferred = 0L;
        }
        this.streamCount--;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void g(DataSource dataSource) {
        if (this.streamCount == 0) {
            this.sampleStartTimeMs = this.clock.elapsedRealtime();
        }
        this.streamCount++;
    }
}
