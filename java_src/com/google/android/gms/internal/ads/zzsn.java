package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzsn {
    private int size;
    private long[] zzaqw;

    public zzsn() {
        this(32);
    }

    private zzsn(int i) {
        this.zzaqw = new long[32];
    }

    public final void add(long j) {
        int i = this.size;
        long[] jArr = this.zzaqw;
        if (i == jArr.length) {
            this.zzaqw = Arrays.copyOf(jArr, i << 1);
        }
        long[] jArr2 = this.zzaqw;
        int i2 = this.size;
        this.size = i2 + 1;
        jArr2[i2] = j;
    }

    public final long get(int i) {
        if (i < 0 || i >= this.size) {
            int i2 = this.size;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Invalid index ");
            sb.append(i);
            sb.append(", size is ");
            sb.append(i2);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        return this.zzaqw[i];
    }

    public final int size() {
        return this.size;
    }
}
