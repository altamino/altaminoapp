package com.google.common.primitives;

import com.google.common.base.o;

/* JADX INFO: loaded from: classes10.dex */
public final class g {
    public static final int BYTES = 8;
    public static final long MAX_POWER_OF_TWO = 4611686018427387904L;

    public static int a(long j6, long j10) {
        if (j6 < j10) {
            return -1;
        }
        return j6 > j10 ? 1 : 0;
    }

    public static int b(long j6) {
        return (int) (j6 ^ (j6 >>> 32));
    }

    public static long c(long... jArr) {
        o.d(jArr.length > 0);
        long j6 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            long j10 = jArr[i10];
            if (j10 > j6) {
                j6 = j10;
            }
        }
        return j6;
    }
}
