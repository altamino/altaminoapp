package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public class SlidingPercentile {
    private static final int MAX_RECYCLED_SAMPLES = 5;
    private static final int SORT_ORDER_BY_INDEX = 1;
    private static final int SORT_ORDER_BY_VALUE = 0;
    private static final int SORT_ORDER_NONE = -1;
    private final int maxWeight;
    private int nextSampleIndex;
    private int recycledSampleCount;
    private int totalWeight;
    private static final Comparator<Sample> INDEX_COMPARATOR = new Comparator() { // from class: androidx.media3.exoplayer.upstream.h
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return SlidingPercentile.g((SlidingPercentile.Sample) obj, (SlidingPercentile.Sample) obj2);
        }
    };
    private static final Comparator<Sample> VALUE_COMPARATOR = new Comparator() { // from class: androidx.media3.exoplayer.upstream.i
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return SlidingPercentile.h((SlidingPercentile.Sample) obj, (SlidingPercentile.Sample) obj2);
        }
    };
    private final Sample[] recycledSamples = new Sample[5];
    private final ArrayList<Sample> samples = new ArrayList<>();
    private int currentSortOrder = -1;

    /* JADX INFO: Access modifiers changed from: private */
    static class Sample {
        public int index;
        public float value;
        public int weight;

        private Sample() {
        }
    }

    private void d() {
        if (this.currentSortOrder != 1) {
            Collections.sort(this.samples, INDEX_COMPARATOR);
            this.currentSortOrder = 1;
        }
    }

    private void e() {
        if (this.currentSortOrder != 0) {
            Collections.sort(this.samples, VALUE_COMPARATOR);
            this.currentSortOrder = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(Sample sample, Sample sample2) {
        return sample.index - sample2.index;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(Sample sample, Sample sample2) {
        return Float.compare(sample.value, sample2.value);
    }

    public void i() {
        this.samples.clear();
        this.currentSortOrder = -1;
        this.nextSampleIndex = 0;
        this.totalWeight = 0;
    }

    public SlidingPercentile(int i10) {
        this.maxWeight = i10;
    }

    public void c(int i10, float f) {
        Sample sample;
        d();
        int i11 = this.recycledSampleCount;
        if (i11 > 0) {
            Sample[] sampleArr = this.recycledSamples;
            int i12 = i11 - 1;
            this.recycledSampleCount = i12;
            sample = sampleArr[i12];
        } else {
            sample = new Sample();
        }
        int i13 = this.nextSampleIndex;
        this.nextSampleIndex = i13 + 1;
        sample.index = i13;
        sample.weight = i10;
        sample.value = f;
        this.samples.add(sample);
        this.totalWeight += i10;
        while (true) {
            int i14 = this.totalWeight;
            int i15 = this.maxWeight;
            if (i14 > i15) {
                int i16 = i14 - i15;
                Sample sample2 = this.samples.get(0);
                int i17 = sample2.weight;
                if (i17 <= i16) {
                    this.totalWeight -= i17;
                    this.samples.remove(0);
                    int i18 = this.recycledSampleCount;
                    if (i18 < 5) {
                        Sample[] sampleArr2 = this.recycledSamples;
                        this.recycledSampleCount = i18 + 1;
                        sampleArr2[i18] = sample2;
                    }
                } else {
                    sample2.weight = i17 - i16;
                    this.totalWeight -= i16;
                }
            } else {
                return;
            }
        }
    }

    public float f(float f) {
        e();
        float f6 = f * this.totalWeight;
        int i10 = 0;
        for (int i11 = 0; i11 < this.samples.size(); i11++) {
            Sample sample = this.samples.get(i11);
            i10 += sample.weight;
            if (i10 >= f6) {
                return sample.value;
            }
        }
        if (this.samples.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<Sample> arrayList = this.samples;
        return arrayList.get(arrayList.size() - 1).value;
    }
}
