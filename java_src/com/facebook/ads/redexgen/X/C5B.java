package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5B, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C5B<T> implements C5A<T> {
    private static byte[] A02;
    private int A00;
    private final Object[] A01;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 49);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{-61, -41, -44, -113, -36, -48, -25, -113, -33, -34, -34, -37, -113, -30, -40, -23, -44, -113, -36, -28, -30, -29, -113, -47, -44, -113, -83, -113, -97, -110, -67, -61, -74, -78, -75, -54, 113, -70, -65, 113, -59, -71, -74, 113, -63, -64, -64, -67, 114};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.5B != com.facebook.ads.internal.androidx.support.v4.util.Pools$SimplePool<T> */
    public C5B(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(A00(0, 29, 62));
        }
        this.A01 = new Object[i];
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.5B != com.facebook.ads.internal.androidx.support.v4.util.Pools$SimplePool<T> */
    /* JADX WARN: Multi-variable type inference failed */
    private boolean A02(T t) {
        C5B<T> c5b = this;
        boolean z = false;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c5b = c5b;
                    if (i >= c5b.A00) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c5b = c5b;
                    t = t;
                    if (c5b.A01[i] != t) {
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
                    i++;
                    c = 2;
                    break;
                case 7:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.5B != com.facebook.ads.internal.androidx.support.v4.util.Pools$SimplePool<T> */
    @Override // com.facebook.ads.redexgen.X.C5A
    public T A2T() {
        C5B<T> c5b = this;
        Object obj = null;
        int i = c5b.A00 > 0 ? 2 : 4;
        while (true) {
            switch (i) {
                case 2:
                    c5b = c5b;
                    int i2 = c5b.A00 - 1;
                    obj = c5b.A01[i2];
                    c5b.A01[i2] = null;
                    c5b.A00--;
                    i = 3;
                    break;
                case 3:
                    return (T) obj;
                case 4:
                    obj = null;
                    i = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.5B != com.facebook.ads.internal.androidx.support.v4.util.Pools$SimplePool<T> */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3 */
    @Override // com.facebook.ads.redexgen.X.C5A
    public boolean A6p(T t) {
        C5B<T> c5b = this;
        boolean z = false;
        char c = c5b.A02(t) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A00(29, 20, 32));
                case 3:
                    c5b = c5b;
                    if (c5b.A00 >= c5b.A01.length) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c5b = c5b;
                    t = t;
                    c5b.A01[c5b.A00] = t;
                    c5b.A00++;
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
