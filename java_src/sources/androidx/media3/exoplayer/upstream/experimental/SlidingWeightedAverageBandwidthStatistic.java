package androidx.media3.exoplayer.upstream.experimental;

import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayDeque;
import java.util.Deque;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public class SlidingWeightedAverageBandwidthStatistic implements BandwidthStatistic {
    public static final int DEFAULT_MAX_SAMPLES_COUNT = 10;
    private double bitrateWeightProductSum;
    private final Clock clock;
    private final SampleEvictionFunction sampleEvictionFunction;
    private final ArrayDeque<Sample> samples;
    private double weightSum;

    public interface SampleEvictionFunction {
        boolean a(Deque<Sample> deque);
    }

    public SlidingWeightedAverageBandwidthStatistic() {
        this(d(10L));
    }

    public static class Sample {
        public final long bitrate;
        public final long timeAddedMs;
        public final double weight;

        public Sample(long j6, double d, long j10) {
            this.bitrate = j6;
            this.weight = d;
            this.timeAddedMs = j10;
        }
    }

    public SlidingWeightedAverageBandwidthStatistic(SampleEvictionFunction sampleEvictionFunction) {
        this(sampleEvictionFunction, Clock.DEFAULT);
    }

    public static SampleEvictionFunction d(final long j6) {
        return new SampleEvictionFunction() { // from class: androidx.media3.exoplayer.upstream.experimental.a
            @Override // androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction
            public final boolean a(Deque deque) {
                return SlidingWeightedAverageBandwidthStatistic.e(j6, deque);
            }
        };
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void a(long j6, long j10) {
        while (this.sampleEvictionFunction.a(this.samples)) {
            Sample sampleRemove = this.samples.remove();
            double d = this.bitrateWeightProductSum;
            double d2 = sampleRemove.bitrate;
            double d6 = sampleRemove.weight;
            this.bitrateWeightProductSum = d - (d2 * d6);
            this.weightSum -= d6;
        }
        Sample sample = new Sample((j6 * 8000000) / j10, Math.sqrt(j6), this.clock.elapsedRealtime());
        this.samples.add(sample);
        double d7 = this.bitrateWeightProductSum;
        double d10 = sample.bitrate;
        double d11 = sample.weight;
        this.bitrateWeightProductSum = d7 + (d10 * d11);
        this.weightSum += d11;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public long b() {
        if (this.samples.isEmpty()) {
            return Long.MIN_VALUE;
        }
        return (long) (this.bitrateWeightProductSum / this.weightSum);
    }

    @VisibleForTesting
    SlidingWeightedAverageBandwidthStatistic(SampleEvictionFunction sampleEvictionFunction, Clock clock) {
        this.samples = new ArrayDeque<>();
        this.sampleEvictionFunction = sampleEvictionFunction;
        this.clock = clock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean e(long j6, Deque deque) {
        if (deque.size() >= j6) {
            return true;
        }
        return false;
    }
}
