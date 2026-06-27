package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum K5 {
    A0B(A01(62, 3, 58), false, A01(0, 3, 56)),
    A0C(A01(82, 6, 9), false, A01(82, 6, 9)),
    A05(A01(71, 11, 48), false, A01(3, 3, 31)),
    A06(A01(53, 9, 84), false, A01(12, 5, 95)),
    A09(A01(62, 3, 58), true, A01(62, 3, 58)),
    A0A(A01(82, 6, 9), true, A01(82, 6, 9)),
    A07(A01(71, 11, 48), true, A01(3, 3, 31)),
    A08(A01(53, 9, 84), true, A01(12, 5, 95));

    private static byte[] A03;
    private final String A00;
    private final String A01;
    private final boolean A02;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 20);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A03 = new byte[]{-60, -124, 114, -108, -91, -96, -114, -97, -102, -84, -128, 127, -44, -27, -32, -87, -89, 116, -121, -125, -114, 112, -127, 124, -114, 101, 99, -124, -105, -109, -98, -105, 119, 117, -98, 114, 113, 88, 105, 100, 118, 77, 75, -51, -32, -36, -25, -55, -38, -43, -25, -69, -70, -55, -38, -43, -98, -100, -107, -34, -96, -55, -58, -122, -124, -116, 108, 106, -109, 103, 102, -91, -74, -79, -87, -91, -90, -83, 113, -70, 123, -91, -107, 85, 83, 124, 83, 81, -49, -30, -34, -23, -30, -62, -64, -23, -64, -66, 121, 89, 87, -128, 87, 85};
    }

    static {
        A03();
    }

    K5(String str, boolean z, String str2) {
        this.A00 = str;
        this.A02 = z;
        this.A01 = str2;
    }

    private final String A00() {
        return this.A00;
    }

    public static List<K5> A02() {
        int length = 0;
        K5 arch = null;
        int length2 = 0;
        int length3 = 0;
        int i = 0;
        String[] strArr = null;
        int length4 = 0;
        int i2 = 0;
        String str = null;
        K5[] k5ArrValues = null;
        K5 k5 = null;
        int i3 = 0;
        K5[] k5ArrValues2 = null;
        K5 k52 = null;
        K5[] k5ArrValues3 = null;
        int i4 = 0;
        ArrayList arrayList = new ArrayList();
        char c = Build.VERSION.SDK_INT >= 21 ? (char) 2 : '\n';
        while (true) {
            switch (c) {
                case 2:
                    i4 = 0;
                    strArr = Build.SUPPORTED_ABIS;
                    length2 = strArr.length;
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    if (i >= length2) {
                        c = 18;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    strArr = strArr;
                    i4 = 0;
                    str = strArr[i];
                    k5ArrValues = values();
                    length4 = k5ArrValues.length;
                    i2 = 0;
                    c = 5;
                    break;
                case 5:
                    if (i2 >= length4) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    k5ArrValues = k5ArrValues;
                    arch = k5ArrValues[i2];
                    str = str;
                    if (!arch.A00().equals(str)) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    arrayList = arrayList;
                    arch = arch;
                    arrayList.add(arch);
                    c = '\b';
                    break;
                case '\b':
                    i++;
                    c = 3;
                    break;
                case '\t':
                    i2++;
                    c = 5;
                    break;
                case '\n':
                    i4 = 0;
                    k5ArrValues2 = values();
                    length3 = k5ArrValues2.length;
                    i3 = 0;
                    c = 11;
                    break;
                case 11:
                    if (i3 >= length3) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    k5ArrValues2 = k5ArrValues2;
                    k52 = k5ArrValues2[i3];
                    if (!k52.A00().equals(Build.CPU_ABI)) {
                        c = 20;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    arrayList = arrayList;
                    k52 = k52;
                    arrayList.add(k52);
                    c = 14;
                    break;
                case 14:
                    k5ArrValues3 = values();
                    length = k5ArrValues3.length;
                    c = 15;
                    break;
                case 15:
                    if (i4 >= length) {
                        c = 18;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    k5ArrValues3 = k5ArrValues3;
                    k5 = k5ArrValues3[i4];
                    if (!k5.A00().equals(Build.CPU_ABI2)) {
                        c = 19;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    arrayList = arrayList;
                    k5 = k5;
                    arrayList.add(k5);
                    c = 18;
                    break;
                case 18:
                    return arrayList;
                case 19:
                    i4++;
                    c = 15;
                    break;
                case 20:
                    i3++;
                    c = 11;
                    break;
            }
        }
    }

    public final String A04() {
        return this.A01;
    }

    public final boolean A05() {
        return this.A02;
    }
}
