package com.google.android.exoplayer2.upstream;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public class k0 {
    private static final int MAX_RECYCLED_SAMPLES = 5;
    private static final int SORT_ORDER_BY_INDEX = 1;
    private static final int SORT_ORDER_BY_VALUE = 0;
    private static final int SORT_ORDER_NONE = -1;
    private final int maxWeight;
    private int nextSampleIndex;
    private int recycledSampleCount;
    private int totalWeight;
    private static final Comparator<b> INDEX_COMPARATOR = new Comparator() { // from class: com.google.android.exoplayer2.upstream.i0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return k0.g((k0.b) obj, (k0.b) obj2);
        }
    };
    private static final Comparator<b> VALUE_COMPARATOR = new Comparator() { // from class: com.google.android.exoplayer2.upstream.j0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return k0.h((k0.b) obj, (k0.b) obj2);
        }
    };
    private final b[] recycledSamples = new b[5];
    private final ArrayList<b> samples = new ArrayList<>();
    private int currentSortOrder = -1;

    /* JADX INFO: Access modifiers changed from: private */
    static class b {
        public int index;
        public float value;
        public int weight;

        private b() {
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
    public static /* synthetic */ int g(b bVar, b bVar2) {
        return bVar.index - bVar2.index;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(b bVar, b bVar2) {
        return Float.compare(bVar.value, bVar2.value);
    }

    public void i() {
        this.samples.clear();
        this.currentSortOrder = -1;
        this.nextSampleIndex = 0;
        this.totalWeight = 0;
    }

    public k0(int i10) {
        this.maxWeight = i10;
    }

    public void c(int i10, float f) {
        b bVar;
        d();
        int i11 = this.recycledSampleCount;
        if (i11 > 0) {
            b[] bVarArr = this.recycledSamples;
            int i12 = i11 - 1;
            this.recycledSampleCount = i12;
            bVar = bVarArr[i12];
        } else {
            bVar = new b();
        }
        int i13 = this.nextSampleIndex;
        this.nextSampleIndex = i13 + 1;
        bVar.index = i13;
        bVar.weight = i10;
        bVar.value = f;
        this.samples.add(bVar);
        this.totalWeight += i10;
        while (true) {
            int i14 = this.totalWeight;
            int i15 = this.maxWeight;
            if (i14 > i15) {
                int i16 = i14 - i15;
                b bVar2 = this.samples.get(0);
                int i17 = bVar2.weight;
                if (i17 <= i16) {
                    this.totalWeight -= i17;
                    this.samples.remove(0);
                    int i18 = this.recycledSampleCount;
                    if (i18 < 5) {
                        b[] bVarArr2 = this.recycledSamples;
                        this.recycledSampleCount = i18 + 1;
                        bVarArr2[i18] = bVar2;
                    }
                } else {
                    bVar2.weight = i17 - i16;
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
            b bVar = this.samples.get(i11);
            i10 += bVar.weight;
            if (i10 >= f6) {
                return bVar.value;
            }
        }
        if (this.samples.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<b> arrayList = this.samples;
        return arrayList.get(arrayList.size() - 1).value;
    }
}
