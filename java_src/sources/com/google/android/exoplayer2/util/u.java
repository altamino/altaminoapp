package com.google.android.exoplayer2.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
public final class u {
    private static final int DEFAULT_INITIAL_CAPACITY = 32;
    private int size;
    private long[] values;

    public u() {
        this(32);
    }

    public int c() {
        return this.size;
    }

    public u(int i10) {
        this.values = new long[i10];
    }

    public void a(long j6) {
        int i10 = this.size;
        long[] jArr = this.values;
        if (i10 == jArr.length) {
            this.values = Arrays.copyOf(jArr, i10 * 2);
        }
        long[] jArr2 = this.values;
        int i11 = this.size;
        this.size = i11 + 1;
        jArr2[i11] = j6;
    }

    public long b(int i10) {
        if (i10 >= 0 && i10 < this.size) {
            return this.values[i10];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i10 + ", size is " + this.size);
    }

    public long[] d() {
        return Arrays.copyOf(this.values, this.size);
    }
}
