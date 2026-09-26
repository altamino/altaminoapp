package androidx.media3.exoplayer.upstream.experimental;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayDeque;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public class SlidingPercentileBandwidthStatistic implements BandwidthStatistic {
    public static final int DEFAULT_MAX_SAMPLES_COUNT = 10;
    public static final double DEFAULT_PERCENTILE = 0.5d;
    private long bitrateEstimate;
    private final int maxSampleCount;
    private final double percentile;
    private final ArrayDeque<Sample> samples;
    private final TreeSet<Sample> sortedSamples;
    private double weightSum;

    private static class Sample implements Comparable<Sample> {
        private final long bitrate;
        private final double weight;

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(Sample sample) {
            return Util.o(this.bitrate, sample.bitrate);
        }

        public Sample(long j6, double d) {
            this.bitrate = j6;
            this.weight = d;
        }
    }

    public SlidingPercentileBandwidthStatistic() {
        this(10, 0.5d);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public long b() {
        return this.bitrateEstimate;
    }

    public SlidingPercentileBandwidthStatistic(int i10, double d) {
        Assertions.a(d >= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE && d <= 1.0d);
        this.maxSampleCount = i10;
        this.percentile = d;
        this.samples = new ArrayDeque<>();
        this.sortedSamples = new TreeSet<>();
        this.bitrateEstimate = Long.MIN_VALUE;
    }

    private long c() {
        if (this.samples.isEmpty()) {
            return Long.MIN_VALUE;
        }
        double d = this.weightSum * this.percentile;
        double d2 = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        long j6 = 0;
        double d6 = 0.0d;
        for (Sample sample : this.sortedSamples) {
            double d7 = d2 + (sample.weight / 2.0d);
            if (d7 >= d) {
                return j6 == 0 ? sample.bitrate : j6 + ((long) (((sample.bitrate - j6) * (d - d6)) / (d7 - d6)));
            }
            j6 = sample.bitrate;
            d2 = (sample.weight / 2.0d) + d7;
            d6 = d7;
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void a(long j6, long j10) {
        while (this.samples.size() >= this.maxSampleCount) {
            Sample sampleRemove = this.samples.remove();
            this.sortedSamples.remove(sampleRemove);
            this.weightSum -= sampleRemove.weight;
        }
        double dSqrt = Math.sqrt(j6);
        Sample sample = new Sample((j6 * 8000000) / j10, dSqrt);
        this.samples.add(sample);
        this.sortedSamples.add(sample);
        this.weightSum += dSqrt;
        this.bitrateEstimate = c();
    }
}
