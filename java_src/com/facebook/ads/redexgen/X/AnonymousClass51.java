package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.51, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class AnonymousClass51<K, V> {
    public static int A03;
    public static int A04;
    public static Object[] A05;
    public static Object[] A06;
    private static byte[] A07;
    public int[] A01 = AnonymousClass53.A00;
    public Object[] A02 = AnonymousClass53.A02;
    public int A00 = 0;

    static {
        A04();
    }

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_ALREADY_CREATED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A07 = new byte[]{-19, 57, 45, 46, 56, -27, 18, 38, 53, -18, 14, 16, -45, -57};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    private final int A00() {
        AnonymousClass51<K, V> anonymousClass51 = this;
        int end = 0;
        int i = 0;
        int i2 = 0;
        int i3 = anonymousClass51.A00;
        int i4 = i3 == 0 ? 2 : 4;
        while (true) {
            switch (i4) {
                case 2:
                    end = -1;
                    i4 = 3;
                    break;
                case 3:
                    return end;
                case 4:
                    anonymousClass51 = anonymousClass51;
                    end = A02(anonymousClass51.A01, i3, 0);
                    if (end < 0) {
                        i4 = 3;
                        break;
                    } else {
                        i4 = 5;
                        break;
                    }
                case 5:
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A02[end << 1] == null) {
                        i4 = 3;
                        break;
                    } else {
                        i4 = 6;
                        break;
                    }
                case 6:
                    i = end + 1;
                    i4 = 7;
                    break;
                case 7:
                    if (i >= i3) {
                        i4 = 12;
                        break;
                    } else {
                        i4 = 8;
                        break;
                    }
                case 8:
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A01[i] != 0) {
                        i4 = 12;
                        break;
                    } else {
                        i4 = 9;
                        break;
                    }
                case 9:
                    anonymousClass51 = anonymousClass51;
                    int i5 = i << 1;
                    if (anonymousClass51.A02[i5] != null) {
                        i4 = 11;
                        break;
                    } else {
                        i4 = 10;
                        break;
                    }
                case 10:
                    end = i;
                    i4 = 3;
                    break;
                case 11:
                    i++;
                    i4 = 7;
                    break;
                case 12:
                    i2 = end - 1;
                    i4 = 13;
                    break;
                case 13:
                    if (i2 < 0) {
                        i4 = 18;
                        break;
                    } else {
                        i4 = 14;
                        break;
                    }
                case 14:
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A01[i2] != 0) {
                        i4 = 18;
                        break;
                    } else {
                        i4 = 15;
                        break;
                    }
                case 15:
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A02[i2 << 1] != null) {
                        i4 = 17;
                        break;
                    } else {
                        i4 = 16;
                        break;
                    }
                case 16:
                    end = i2;
                    i4 = 3;
                    break;
                case 17:
                    i2--;
                    i4 = 13;
                    break;
                case 18:
                    end = i ^ (-1);
                    i4 = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    private final int A01(Object obj, int i) {
        AnonymousClass51<K, V> anonymousClass51 = this;
        int index = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = anonymousClass51.A00;
        char c = i4 == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    index = -1;
                    c = 3;
                    break;
                case 3:
                    return index;
                case 4:
                    anonymousClass51 = anonymousClass51;
                    index = A02(anonymousClass51.A01, i4, i);
                    if (index < 0) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass51 = anonymousClass51;
                    obj = obj;
                    if (!obj.equals(anonymousClass51.A02[index << 1])) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 6:
                    i2 = index + 1;
                    c = 7;
                    break;
                case 7:
                    if (i2 >= i4) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A01[i2] != i) {
                        c = '\f';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    anonymousClass51 = anonymousClass51;
                    obj = obj;
                    if (!obj.equals(anonymousClass51.A02[i2 << 1])) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    index = i2;
                    c = 3;
                    break;
                case 11:
                    i2++;
                    c = 7;
                    break;
                case '\f':
                    i3 = index - 1;
                    c = '\r';
                    break;
                case '\r':
                    if (i3 < 0) {
                        c = 18;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A01[i3] != i) {
                        c = 18;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    anonymousClass51 = anonymousClass51;
                    obj = obj;
                    if (!obj.equals(anonymousClass51.A02[i3 << 1])) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    index = i3;
                    c = 3;
                    break;
                case 17:
                    i3--;
                    c = '\r';
                    break;
                case 18:
                    index = i2 ^ (-1);
                    c = 3;
                    break;
            }
        }
    }

    private static int A02(int[] iArr, int i, int i2) {
        try {
            return AnonymousClass53.A02(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    private void A05(int i) {
        if (i == 8) {
            synchronized (AnonymousClass52.class) {
                if (A06 != null) {
                    Object[] objArr = A06;
                    this.A02 = objArr;
                    A06 = (Object[]) objArr[0];
                    this.A01 = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    A04--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (AnonymousClass52.class) {
                if (A05 != null) {
                    Object[] objArr2 = A05;
                    this.A02 = objArr2;
                    A05 = (Object[]) objArr2[0];
                    this.A01 = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    A03--;
                    return;
                }
            }
        }
        this.A01 = new int[i];
        this.A02 = new Object[i << 1];
    }

    private static void A06(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (AnonymousClass52.class) {
                if (A04 < 10) {
                    objArr[0] = A06;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    A06 = objArr;
                    A04++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (AnonymousClass52.class) {
                if (A03 < 10) {
                    objArr[0] = A05;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    A05 = objArr;
                    A03++;
                }
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final int A07(Object obj) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = this.A00 * 2;
        Object[] objArr = this.A02;
        int i5 = obj == null ? 2 : 8;
        while (true) {
            switch (i5) {
                case 2:
                    i2 = 1;
                    i5 = 3;
                    break;
                case 3:
                    if (i2 >= i4) {
                        i5 = 13;
                        break;
                    } else {
                        i5 = 4;
                        break;
                    }
                case 4:
                    objArr = objArr;
                    if (objArr[i2] != null) {
                        i5 = 7;
                        break;
                    } else {
                        i5 = 5;
                        break;
                    }
                case 5:
                    i3 = i2 >> 1;
                    i5 = 6;
                    break;
                case 6:
                    return i3;
                case 7:
                    i2 += 2;
                    i5 = 3;
                    break;
                case 8:
                    i = 1;
                    i5 = 9;
                    break;
                case 9:
                    if (i >= i4) {
                        i5 = 13;
                        break;
                    } else {
                        i5 = 10;
                        break;
                    }
                case 10:
                    obj = obj;
                    objArr = objArr;
                    if (!obj.equals(objArr[i])) {
                        i5 = 12;
                        break;
                    } else {
                        i5 = 11;
                        break;
                    }
                case 11:
                    i3 = i >> 1;
                    i5 = 6;
                    break;
                case 12:
                    i += 2;
                    i5 = 9;
                    break;
                case 13:
                    i3 = -1;
                    i5 = 6;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final int A08(Object obj) {
        AnonymousClass51<K, V> anonymousClass51 = this;
        int iA00 = 0;
        char c = obj == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass51 = anonymousClass51;
                    iA00 = anonymousClass51.A00();
                    c = 3;
                    break;
                case 3:
                    return iA00;
                case 4:
                    anonymousClass51 = anonymousClass51;
                    obj = obj;
                    iA00 = anonymousClass51.A01(obj, obj.hashCode());
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final K A09(int i) {
        return (K) this.A02[i << 1];
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final V A0A(int i) {
        AnonymousClass51<K, V> anonymousClass51 = this;
        Object[] objArr = null;
        int i2 = 0;
        int[] iArr = null;
        int i3 = 8;
        Object obj = anonymousClass51.A02[(i << 1) + 1];
        int i4 = anonymousClass51.A00;
        char c = i4 <= 1 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass51 = anonymousClass51;
                    A06(anonymousClass51.A01, anonymousClass51.A02, i4);
                    anonymousClass51.A01 = AnonymousClass53.A00;
                    anonymousClass51.A02 = AnonymousClass53.A02;
                    i2 = 0;
                    c = 3;
                    break;
                case 3:
                    anonymousClass51 = anonymousClass51;
                    if (i4 == anonymousClass51.A00) {
                        c = 18;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    throw new ConcurrentModificationException();
                case 5:
                    anonymousClass51 = anonymousClass51;
                    i2 = i4 - 1;
                    if (anonymousClass51.A01.length <= i3) {
                        c = 15;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A00 >= anonymousClass51.A01.length / 3) {
                        c = 15;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (i4 <= i3) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    i3 = i4 + (i4 >> 1);
                    c = '\t';
                    break;
                case '\t':
                    anonymousClass51 = anonymousClass51;
                    iArr = anonymousClass51.A01;
                    objArr = anonymousClass51.A02;
                    anonymousClass51.A05(i3);
                    if (i4 == anonymousClass51.A00) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    throw new ConcurrentModificationException();
                case 11:
                    if (i <= 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    anonymousClass51 = anonymousClass51;
                    iArr = iArr;
                    objArr = objArr;
                    System.arraycopy(iArr, 0, anonymousClass51.A01, 0, i);
                    System.arraycopy(objArr, 0, anonymousClass51.A02, 0, i << 1);
                    c = '\r';
                    break;
                case '\r':
                    if (i >= i2) {
                        c = 3;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    anonymousClass51 = anonymousClass51;
                    iArr = iArr;
                    objArr = objArr;
                    System.arraycopy(iArr, i + 1, anonymousClass51.A01, i, i2 - i);
                    System.arraycopy(objArr, (i + 1) << 1, anonymousClass51.A02, i << 1, (i2 - i) << 1);
                    c = 3;
                    break;
                case 15:
                    if (i >= i2) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    anonymousClass51 = anonymousClass51;
                    System.arraycopy(anonymousClass51.A01, i + 1, anonymousClass51.A01, i, i2 - i);
                    System.arraycopy(anonymousClass51.A02, (i + 1) << 1, anonymousClass51.A02, i << 1, (i2 - i) << 1);
                    c = 17;
                    break;
                case 17:
                    anonymousClass51 = anonymousClass51;
                    anonymousClass51.A02[i2 << 1] = null;
                    anonymousClass51.A02[(i2 << 1) + 1] = null;
                    c = 3;
                    break;
                case 18:
                    anonymousClass51.A00 = i2;
                    return (V) obj;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final V A0B(int i) {
        return (V) this.A02[(i << 1) + 1];
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final V A0C(int i, V v) {
        int i2 = (i << 1) + 1;
        V v2 = (V) this.A02[i2];
        this.A02[i2] = v;
        return v2;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final void A0D(int i) {
        AnonymousClass51<K, V> anonymousClass51 = this;
        int[] iArr = null;
        Object[] objArr = null;
        int i2 = anonymousClass51.A00;
        char c = anonymousClass51.A01.length < i ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass51 = anonymousClass51;
                    iArr = anonymousClass51.A01;
                    objArr = anonymousClass51.A02;
                    anonymousClass51.A05(i);
                    if (anonymousClass51.A00 <= 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass51 = anonymousClass51;
                    iArr = iArr;
                    objArr = objArr;
                    System.arraycopy(iArr, 0, anonymousClass51.A01, 0, i2);
                    System.arraycopy(objArr, 0, anonymousClass51.A02, 0, i2 << 1);
                    c = 4;
                    break;
                case 4:
                    iArr = iArr;
                    objArr = objArr;
                    A06(iArr, objArr, i2);
                    c = 5;
                    break;
                case 5:
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A00 == i2) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    throw new ConcurrentModificationException();
                case 7:
                    return;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final void clear() {
        AnonymousClass51<K, V> anonymousClass51 = this;
        int osize = anonymousClass51.A00 > 0 ? 2 : 3;
        while (true) {
            switch (osize) {
                case 2:
                    anonymousClass51 = anonymousClass51;
                    int[] iArr = anonymousClass51.A01;
                    Object[] objArr = anonymousClass51.A02;
                    int i = anonymousClass51.A00;
                    int[] ohashes = AnonymousClass53.A00;
                    anonymousClass51.A01 = ohashes;
                    anonymousClass51.A02 = AnonymousClass53.A02;
                    anonymousClass51.A00 = 0;
                    A06(iArr, objArr, i);
                    osize = 3;
                    break;
                case 3:
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A00 <= 0) {
                        osize = 5;
                        break;
                    } else {
                        osize = 4;
                        break;
                    }
                case 4:
                    throw new ConcurrentModificationException();
                case 5:
                    return;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final boolean containsKey(Object obj) {
        boolean z = false;
        char c = A08(obj) >= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final boolean containsValue(Object obj) {
        boolean z = false;
        char c = A07(obj) >= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<?, ?> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final boolean equals(Object obj) {
        Object obj2 = obj;
        AnonymousClass51<K, V> anonymousClass51 = this;
        Object obj3 = null;
        Object obj4 = null;
        V vA0B = null;
        V vA0B2 = null;
        Object objA09 = null;
        Object objA092 = null;
        int i = 0;
        AnonymousClass51 anonymousClass512 = null;
        int i2 = 0;
        Map map = null;
        boolean z = true;
        boolean z2 = false;
        char c = anonymousClass51 == obj2 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    obj2 = obj2;
                    if (!(obj2 instanceof AnonymousClass51)) {
                        c = 23;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass51 = anonymousClass51;
                    obj2 = obj2;
                    anonymousClass512 = (AnonymousClass51) obj2;
                    if (anonymousClass51.size() == anonymousClass512.size()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z2 = false;
                    z = false;
                    c = 2;
                    break;
                case 6:
                    i = 0;
                    c = 7;
                    break;
                case 7:
                    anonymousClass51 = anonymousClass51;
                    if (i >= anonymousClass51.A00) {
                        c = 2;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    anonymousClass51 = anonymousClass51;
                    objA092 = anonymousClass51.A09(i);
                    vA0B2 = anonymousClass51.A0B(i);
                    obj4 = anonymousClass512.get(objA092);
                    if (vA0B2 != null) {
                        c = 16;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    obj4 = obj4;
                    if (obj4 != null) {
                        c = 19;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    try {
                        anonymousClass512 = anonymousClass512;
                        objA092 = objA092;
                        if (!anonymousClass512.containsKey(objA092)) {
                            c = 19;
                            break;
                        } else {
                            c = 18;
                            break;
                        }
                    } catch (ClassCastException unused) {
                        z = z2;
                        c = 2;
                        break;
                    } catch (NullPointerException unused2) {
                        z = z2;
                        c = 2;
                        break;
                    }
                case 16:
                    vA0B2 = (V) vA0B2;
                    obj4 = obj4;
                    if (!vA0B2.equals(obj4)) {
                        c = 20;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    i++;
                    c = 7;
                    break;
                case 19:
                    z2 = false;
                    z = false;
                    c = 2;
                    break;
                case 20:
                    z2 = false;
                    z = false;
                    c = 2;
                    break;
                case 23:
                    obj2 = obj2;
                    if (!(obj2 instanceof Map)) {
                        c = '+';
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    anonymousClass51 = anonymousClass51;
                    obj2 = obj2;
                    map = (Map) obj2;
                    if (anonymousClass51.size() == map.size()) {
                        c = 26;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    z2 = false;
                    z = false;
                    c = 2;
                    break;
                case 26:
                    i2 = 0;
                    c = 27;
                    break;
                case 27:
                    anonymousClass51 = anonymousClass51;
                    if (i2 >= anonymousClass51.A00) {
                        c = 2;
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 29:
                    anonymousClass51 = anonymousClass51;
                    objA09 = anonymousClass51.A09(i2);
                    vA0B = anonymousClass51.A0B(i2);
                    obj3 = map.get(objA09);
                    if (vA0B != null) {
                        c = '$';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    obj3 = obj3;
                    if (obj3 != null) {
                        c = '\'';
                        break;
                    } else {
                        c = '\"';
                        break;
                    }
                case '\"':
                    try {
                        map = map;
                        objA09 = objA09;
                        if (!map.containsKey(objA09)) {
                            c = '\'';
                            break;
                        } else {
                            c = '&';
                            break;
                        }
                    } catch (ClassCastException unused3) {
                        z = z2;
                        c = 2;
                        break;
                    } catch (NullPointerException unused4) {
                        z = z2;
                        c = 2;
                        break;
                    }
                case '$':
                    vA0B = (V) vA0B;
                    obj3 = obj3;
                    if (!vA0B.equals(obj3)) {
                        c = '(';
                        break;
                    } else {
                        c = '&';
                        break;
                    }
                case '&':
                    i2++;
                    c = 27;
                    break;
                case '\'':
                    z2 = false;
                    z = false;
                    c = 2;
                    break;
                case '(':
                    z2 = false;
                    z = false;
                    c = 2;
                    break;
                case '+':
                    z2 = false;
                    z = false;
                    c = 2;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final V get(Object obj) {
        AnonymousClass51<K, V> anonymousClass51 = this;
        Object obj2 = null;
        int iA08 = anonymousClass51.A08(obj);
        char c = iA08 >= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass51 = anonymousClass51;
                    obj2 = anonymousClass51.A02[(iA08 << 1) + 1];
                    c = 3;
                    break;
                case 3:
                    return (V) obj2;
                case 4:
                    obj2 = null;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final int hashCode() {
        int i = 0;
        int iHashCode = 0;
        Object obj = null;
        int[] iArr = this.A01;
        Object[] objArr = this.A02;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        int i5 = this.A00;
        int v = 2;
        while (true) {
            switch (v) {
                case 2:
                    if (i3 >= i5) {
                        v = 7;
                        break;
                    } else {
                        v = 3;
                        break;
                    }
                case 3:
                    iArr = iArr;
                    objArr = objArr;
                    obj = objArr[i4];
                    i = iArr[i3];
                    if (obj != null) {
                        v = 6;
                        break;
                    } else {
                        v = 4;
                        break;
                    }
                case 4:
                    iHashCode = 0;
                    v = 5;
                    break;
                case 5:
                    i2 += iHashCode ^ i;
                    i3++;
                    i4 += 2;
                    v = 2;
                    break;
                case 6:
                    obj = obj;
                    iHashCode = obj.hashCode();
                    v = 5;
                    break;
                case 7:
                    return i2;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final boolean isEmpty() {
        boolean z = false;
        char c = this.A00 <= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final V put(K k, V v) {
        Object obj = k;
        Object obj2 = v;
        AnonymousClass51<K, V> anonymousClass51 = this;
        int iA00 = 0;
        Object[] objArr = null;
        Object obj3 = null;
        int i = 0;
        int[] iArr = null;
        int iHashCode = 0;
        int i2 = 8;
        int i3 = anonymousClass51.A00;
        char c = obj == null ? (char) 2 : (char) 22;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass51 = anonymousClass51;
                    iHashCode = 0;
                    iA00 = anonymousClass51.A00();
                    c = 3;
                    break;
                case 3:
                    if (iA00 < 0) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass51 = anonymousClass51;
                    obj2 = obj2;
                    int i4 = (iA00 << 1) + 1;
                    obj3 = anonymousClass51.A02[i4];
                    anonymousClass51.A02[i4] = obj2;
                    c = 5;
                    break;
                case 5:
                    return (V) obj3;
                case 6:
                    anonymousClass51 = anonymousClass51;
                    i = iA00 ^ (-1);
                    if (i3 < anonymousClass51.A01.length) {
                        c = 16;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (i3 < i2) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    i2 = i3 + (i3 >> 1);
                    c = '\t';
                    break;
                case '\t':
                    anonymousClass51 = anonymousClass51;
                    iArr = anonymousClass51.A01;
                    objArr = anonymousClass51.A02;
                    anonymousClass51.A05(i2);
                    if (i3 == anonymousClass51.A00) {
                        c = '\r';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    throw new ConcurrentModificationException();
                case 11:
                    if (i3 >= 4) {
                        c = '\t';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    i2 = 4;
                    c = '\t';
                    break;
                case '\r':
                    anonymousClass51 = anonymousClass51;
                    if (anonymousClass51.A01.length <= 0) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    anonymousClass51 = anonymousClass51;
                    iArr = iArr;
                    objArr = objArr;
                    System.arraycopy(iArr, 0, anonymousClass51.A01, 0, iArr.length);
                    System.arraycopy(objArr, 0, anonymousClass51.A02, 0, objArr.length);
                    c = 15;
                    break;
                case 15:
                    iArr = iArr;
                    objArr = objArr;
                    A06(iArr, objArr, i3);
                    c = 16;
                    break;
                case 16:
                    if (i >= i3) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    anonymousClass51 = anonymousClass51;
                    System.arraycopy(anonymousClass51.A01, i, anonymousClass51.A01, i + 1, i3 - i);
                    System.arraycopy(anonymousClass51.A02, i << 1, anonymousClass51.A02, (i + 1) << 1, (anonymousClass51.A00 - i) << 1);
                    c = 18;
                    break;
                case 18:
                    anonymousClass51 = anonymousClass51;
                    if (i3 != anonymousClass51.A00) {
                        c = 20;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    anonymousClass51 = anonymousClass51;
                    if (i < anonymousClass51.A01.length) {
                        c = 21;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    throw new ConcurrentModificationException();
                case 21:
                    anonymousClass51 = anonymousClass51;
                    obj = obj;
                    obj2 = obj2;
                    anonymousClass51.A01[i] = iHashCode;
                    anonymousClass51.A02[i << 1] = obj;
                    anonymousClass51.A02[(i << 1) + 1] = obj2;
                    anonymousClass51.A00++;
                    obj3 = null;
                    c = 5;
                    break;
                case 22:
                    anonymousClass51 = anonymousClass51;
                    obj = obj;
                    iHashCode = obj.hashCode();
                    iA00 = anonymousClass51.A01(obj, iHashCode);
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final V remove(Object obj) {
        AnonymousClass51<K, V> anonymousClass51 = this;
        V vA0A = null;
        int iA08 = anonymousClass51.A08(obj);
        char c = iA08 >= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass51 = anonymousClass51;
                    vA0A = anonymousClass51.A0A(iA08);
                    c = 3;
                    break;
                case 3:
                    return vA0A;
                case 4:
                    vA0A = null;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final int size() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.51 != com.facebook.ads.internal.androidx.support.v4.util.SimpleArrayMap<K, V> */
    public final String toString() {
        AnonymousClass51<K, V> anonymousClass51 = this;
        int i = 0;
        StringBuilder sb = null;
        Object objA09 = null;
        String strA03 = null;
        Object objA0B = null;
        char c = anonymousClass51.isEmpty() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(10, 2, 35);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    anonymousClass51 = anonymousClass51;
                    sb = new StringBuilder(anonymousClass51.A00 * 28);
                    sb.append('{');
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    anonymousClass51 = anonymousClass51;
                    if (i >= anonymousClass51.A00) {
                        c = 15;
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
                    sb.append(A03(12, 2, 55));
                    c = '\b';
                    break;
                case '\b':
                    anonymousClass51 = anonymousClass51;
                    objA09 = anonymousClass51.A09(i);
                    if (objA09 == anonymousClass51) {
                        c = 14;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    sb = sb;
                    objA09 = objA09;
                    sb.append(objA09);
                    c = '\n';
                    break;
                case '\n':
                    anonymousClass51 = anonymousClass51;
                    sb = sb;
                    sb.append('=');
                    objA0B = anonymousClass51.A0B(i);
                    if (objA0B == anonymousClass51) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    sb = sb;
                    objA0B = objA0B;
                    sb.append(objA0B);
                    c = '\f';
                    break;
                case '\f':
                    i++;
                    c = 5;
                    break;
                case '\r':
                    sb = sb;
                    sb.append(A03(0, 10, 85));
                    c = '\f';
                    break;
                case 14:
                    sb = sb;
                    sb.append(A03(0, 10, 85));
                    c = '\n';
                    break;
                case 15:
                    sb = sb;
                    sb.append('}');
                    strA03 = sb.toString();
                    c = 3;
                    break;
            }
        }
    }
}
