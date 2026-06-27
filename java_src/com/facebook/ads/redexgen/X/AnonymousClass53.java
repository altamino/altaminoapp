package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.53, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass53 {
    public static final int[] A00 = new int[0];
    public static final long[] A01 = new long[0];
    public static final Object[] A02 = new Object[0];

    private AnonymousClass53() {
    }

    public static int A00(int i) {
        return A01(i * 8) / 8;
    }

    private static int A01(int i) {
        int i2 = 4;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= 32) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (i > (1 << i2) - 12) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i = (1 << i2) - 12;
                    c = 5;
                    break;
                case 5:
                    return i;
                case 6:
                    i2++;
                    c = 2;
                    break;
            }
        }
    }

    public static int A02(int[] iArr, int lo, int mid) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = lo - 1;
        int midVal = 2;
        while (true) {
            switch (midVal) {
                case 2:
                    if (i3 > i4) {
                        midVal = 7;
                        break;
                    } else {
                        midVal = 3;
                        break;
                    }
                case 3:
                    iArr = iArr;
                    i = (i3 + i4) >>> 1;
                    i2 = iArr[i];
                    if (i2 >= mid) {
                        midVal = 5;
                        break;
                    } else {
                        midVal = 4;
                        break;
                    }
                case 4:
                    i3 = i + 1;
                    midVal = 2;
                    break;
                case 5:
                    if (i2 <= mid) {
                        midVal = 8;
                        break;
                    } else {
                        midVal = 6;
                        break;
                    }
                case 6:
                    i4 = i - 1;
                    midVal = 2;
                    break;
                case 7:
                    i = i3 ^ (-1);
                    midVal = 8;
                    break;
                case 8:
                    return i;
            }
        }
    }

    public static int A03(long[] jArr, int lo, long j) {
        int i = 0;
        long j2 = 0;
        int i2 = 0;
        int i3 = lo - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 > i3) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    jArr = jArr;
                    i = (i2 + i3) >>> 1;
                    j2 = jArr[i];
                    if (j2 >= j) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i2 = i + 1;
                    c = 2;
                    break;
                case 5:
                    if (j2 <= j) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    i3 = i - 1;
                    c = 2;
                    break;
                case 7:
                    i = i2 ^ (-1);
                    c = '\b';
                    break;
                case '\b':
                    return i;
            }
        }
    }

    public static boolean A04(Object obj, Object obj2) {
        boolean z = false;
        char c = obj != obj2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    obj = obj;
                    if (obj == null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    obj = obj;
                    obj2 = obj2;
                    if (!obj.equals(obj2)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }
}
