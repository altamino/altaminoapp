package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ep, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC0525Ep {
    A04(1),
    A0A(2),
    A07(4),
    A09(8),
    A0K(16),
    A0E(32),
    A05(64),
    A0D(128),
    A0B(256),
    A0C(512),
    A0J(1024),
    A0I(2048),
    A06(4096),
    A08(8192),
    A0H(16384),
    A0F(32768),
    A0G(65536);

    private static byte[] A01;
    private static final Map<Integer, EnumC0525Ep> A02;
    private int A00;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A01 = new byte[]{-24, -39, -22, -39, -26, -25, -31, -36, -9, -20, -31, -35, -22, 0, 13, 3, 17, 14, 8, 3, 30, 13, 0, 19, 8, 21, 4, -70, -63, -57, -59, -67, -52, -54, -63, -69, -1, 5, 9, 21, 4, -9, 10, -1, 12, -5, -50, -48, -31, -42, -29, -46, -35, -53, -56, -77, -58, -65, -75, -67, -74, -52, -31, -42, -55, -43, -47, -53, -16, -25, -25, -12, -22, -11, -26, 0, -12, -26, -17, -12, -22, -11, -22, -9, -26, -40, -41, -36, -46, -35, -50, -72, -71, -60, -58, -71, -73, -75, -56, -71, -72, -57, -45, -41, -61, -50, -31, -60, -37, -31, -59, -47, -48, -42, -57, -38, -42, -57, -45, -41, -61, -50, -31, -60, -37, -31, -40, -61, -50, -41, -57, 41, 43, 41, 38, 31, 25, 31, 37, 43, 41, 53, 42, 31, 27, 40, -36, -33, -24, -29, -31, -24, -7, -35, -23, -26, -26, -33, -35, -18, -7, -18, -29, -33, -20, 23, 14, 14, 27, 17, 28, 13, 14, 26, 30, 10, 21, 40, 11, 34, 40, 29, 18, 22, 14, 28, 29, 10, 22, 25};
    }

    static {
        A03();
        A02 = new HashMap();
        for (EnumC0525Ep enumC0525Ep : values()) {
            A02.put(Integer.valueOf(enumC0525Ep.A00), enumC0525Ep);
        }
    }

    EnumC0525Ep(int i) {
        this.A00 = i;
    }

    @Nullable
    public static EnumC0525Ep A00(int i) {
        EnumC0525Ep enumC0525Ep = null;
        char c = A02.containsKey(Integer.valueOf(i)) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    enumC0525Ep = A02.get(Integer.valueOf(i));
                    c = 3;
                    break;
                case 3:
                    return enumC0525Ep;
                case 4:
                    enumC0525Ep = null;
                    c = 3;
                    break;
            }
        }
    }

    @SuppressLint({"BadMethodUse-android.util.Log.e", "CatchGeneralException", "EmptyCatchBlock"})
    public static EnumSet<EnumC0525Ep> A02(int ordinal) throws Exception {
        EnumC0525Ep[] enumC0525EpArrValues = null;
        int iNumberOfTrailingZeros = 0;
        EnumSet<EnumC0525Ep> enumSetNoneOf = EnumSet.noneOf(EnumC0525Ep.class);
        char c = ordinal <= 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return enumSetNoneOf;
                case 3:
                    enumC0525EpArrValues = values();
                    c = 4;
                    break;
                case 4:
                    if (ordinal == 0) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    enumC0525EpArrValues = enumC0525EpArrValues;
                    iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(ordinal);
                    ordinal ^= Integer.lowestOneBit(ordinal);
                    if (iNumberOfTrailingZeros >= enumC0525EpArrValues.length) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    enumSetNoneOf = enumSetNoneOf;
                    enumC0525EpArrValues = enumC0525EpArrValues;
                    enumSetNoneOf.add(enumC0525EpArrValues[iNumberOfTrailingZeros]);
                    c = 4;
                    break;
            }
        }
    }
}
