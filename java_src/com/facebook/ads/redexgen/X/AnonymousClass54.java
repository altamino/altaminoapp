package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.54, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass54<E> implements Cloneable {
    private static byte[] A04;
    private static final Object A05;
    private int A00;
    private boolean A01;
    private long[] A02;
    private Object[] A03;

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 15);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A04 = new byte[]{95, 3, 31, 30, 4, 87, 58, 22, 7, 94, 93, 91, 80, 92};
    }

    static {
        A05();
        A05 = new Object();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public AnonymousClass54() {
        this(10);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    private AnonymousClass54(int i) {
        this.A01 = false;
        if (i == 0) {
            this.A02 = AnonymousClass53.A01;
            this.A03 = AnonymousClass53.A02;
        } else {
            int iA00 = AnonymousClass53.A00(i);
            this.A02 = new long[iA00];
            this.A03 = new Object[iA00];
        }
        this.A00 = 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    private final long A00(int i) {
        if (this.A01) {
            A04();
        }
        return this.A02[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final AnonymousClass54<E> clone() {
        AnonymousClass54<E> anonymousClass54 = null;
        try {
            anonymousClass54 = (AnonymousClass54) super.clone();
            anonymousClass54.A02 = (long[]) this.A02.clone();
            anonymousClass54.A03 = (Object[]) this.A03.clone();
            return anonymousClass54;
        } catch (CloneNotSupportedException unused) {
            return anonymousClass54;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    private final E A02(long j, E e) {
        AnonymousClass54<E> anonymousClass54 = this;
        int iA03 = AnonymousClass53.A03(anonymousClass54.A02, anonymousClass54.A00, j);
        char c = iA03 >= 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass54 = anonymousClass54;
                    if (anonymousClass54.A03[iA03] != A05) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return e;
                case 4:
                    anonymousClass54 = anonymousClass54;
                    e = (E) anonymousClass54.A03[iA03];
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    private void A04() {
        Object obj = null;
        int i = this.A00;
        int i2 = 0;
        long[] jArr = this.A02;
        Object[] objArr = this.A03;
        int i3 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i3 >= i) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    objArr = objArr;
                    obj = objArr[i3];
                    Object val = A05;
                    if (obj == val) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (i3 == i2) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    jArr = jArr;
                    objArr = objArr;
                    obj = obj;
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                    c = 6;
                    break;
                case 6:
                    i2++;
                    c = 7;
                    break;
                case 7:
                    i3++;
                    c = 2;
                    break;
                case '\b':
                    AnonymousClass54<E> anonymousClass54 = this;
                    anonymousClass54.A01 = false;
                    anonymousClass54.A00 = i2;
                    return;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final int A06() {
        if (this.A01) {
            A04();
        }
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final E A07(int i) {
        if (this.A01) {
            A04();
        }
        return (E) this.A03[i];
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final E A08(long j) {
        return A02(j, null);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final void A09() {
        int i = this.A00;
        Object[] objArr = this.A03;
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= i) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    objArr = objArr;
                    objArr[i2] = null;
                    i2++;
                    c = 2;
                    break;
                case 4:
                    AnonymousClass54<E> anonymousClass54 = this;
                    anonymousClass54.A00 = 0;
                    anonymousClass54.A01 = false;
                    return;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final void A0A(int i) {
        if (this.A03[i] != A05) {
            this.A03[i] = A05;
            this.A01 = true;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    /* JADX WARN: Multi-variable type inference failed */
    public final void A0B(long j, E e) {
        AnonymousClass54<E> anonymousClass54 = this;
        int iA03 = 0;
        int iA032 = AnonymousClass53.A03(anonymousClass54.A02, anonymousClass54.A00, j);
        char c = iA032 >= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass54 = anonymousClass54;
                    e = e;
                    anonymousClass54.A03[iA032] = e;
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    anonymousClass54 = anonymousClass54;
                    iA03 = iA032 ^ (-1);
                    if (iA03 >= anonymousClass54.A00) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass54 = anonymousClass54;
                    if (anonymousClass54.A03[iA03] != A05) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass54 = anonymousClass54;
                    e = e;
                    anonymousClass54.A02[iA03] = j;
                    anonymousClass54.A03[iA03] = e;
                    c = 3;
                    break;
                case 7:
                    anonymousClass54 = anonymousClass54;
                    if (!anonymousClass54.A01) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    anonymousClass54 = anonymousClass54;
                    if (anonymousClass54.A00 < anonymousClass54.A02.length) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    anonymousClass54 = anonymousClass54;
                    anonymousClass54.A04();
                    iA03 = AnonymousClass53.A03(anonymousClass54.A02, anonymousClass54.A00, j) ^ (-1);
                    c = '\n';
                    break;
                case '\n':
                    anonymousClass54 = anonymousClass54;
                    if (anonymousClass54.A00 < anonymousClass54.A02.length) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    anonymousClass54 = anonymousClass54;
                    int iA00 = AnonymousClass53.A00(anonymousClass54.A00 + 1);
                    long[] jArr = new long[iA00];
                    Object[] objArr = new Object[iA00];
                    System.arraycopy(anonymousClass54.A02, 0, jArr, 0, anonymousClass54.A02.length);
                    System.arraycopy(anonymousClass54.A03, 0, objArr, 0, anonymousClass54.A03.length);
                    anonymousClass54.A02 = jArr;
                    anonymousClass54.A03 = objArr;
                    c = '\f';
                    break;
                case '\f':
                    anonymousClass54 = anonymousClass54;
                    if (anonymousClass54.A00 - iA03 == 0) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    anonymousClass54 = anonymousClass54;
                    System.arraycopy(anonymousClass54.A02, iA03, anonymousClass54.A02, iA03 + 1, anonymousClass54.A00 - iA03);
                    System.arraycopy(anonymousClass54.A03, iA03, anonymousClass54.A03, iA03 + 1, anonymousClass54.A00 - iA03);
                    c = 14;
                    break;
                case 14:
                    anonymousClass54 = anonymousClass54;
                    e = (E) e;
                    anonymousClass54.A02[iA03] = j;
                    anonymousClass54.A03[iA03] = e;
                    anonymousClass54.A00++;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.54 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final String toString() {
        AnonymousClass54<E> anonymousClass54 = this;
        String strA03 = null;
        int i = 0;
        StringBuilder sb = null;
        Object objA07 = null;
        char c = anonymousClass54.A06() <= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(10, 2, 41);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    anonymousClass54 = anonymousClass54;
                    sb = new StringBuilder(anonymousClass54.A00 * 28);
                    sb.append('{');
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    anonymousClass54 = anonymousClass54;
                    if (i >= anonymousClass54.A00) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (i <= 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    sb = sb;
                    sb.append(A03(12, 2, 115));
                    c = '\b';
                    break;
                case '\b':
                    anonymousClass54 = anonymousClass54;
                    sb = sb;
                    sb.append(anonymousClass54.A00(i));
                    sb.append('=');
                    objA07 = anonymousClass54.A07(i);
                    if (objA07 == anonymousClass54) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    sb = sb;
                    objA07 = objA07;
                    sb.append(objA07);
                    c = '\n';
                    break;
                case '\n':
                    i++;
                    c = 5;
                    break;
                case 11:
                    sb = sb;
                    sb.append(A03(0, 10, 120));
                    c = '\n';
                    break;
                case '\f':
                    sb = sb;
                    sb.append('}');
                    strA03 = sb.toString();
                    c = 3;
                    break;
            }
        }
    }
}
