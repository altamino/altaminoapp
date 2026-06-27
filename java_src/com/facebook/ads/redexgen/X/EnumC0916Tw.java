package com.facebook.ads.redexgen.X;

import io.agora.rtc.Constants;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC0916Tw {
    A08(A01(42, 10, 2)),
    A0A(A01(199, 24, 36)),
    A03(A01(223, 13, 24)),
    A06(A01(123, 18, 59)),
    A05(A01(89, 19, 59)),
    A09(A01(160, 10, 4)),
    A0B(A01(0, 3, 16)),
    A04(A01(22, 5, 108)),
    A07(A01(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 6, 78)),
    A0C(A01(27, 15, 39)),
    A0D(A01(108, 0, 61));

    private static byte[] A01;
    private final String A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 34);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{-98, -95, -103, -88, -84, -81, -79, -92, -78, -78, -88, -82, -83, -60, -45, -52, -52, -61, -54, 112, 115, 107, -14, -13, -16, 3, -11, -69, -82, -64, -86, -69, -83, -88, -84, -72, -74, -71, -75, -82, -67, -82, -116, -123, -110, -120, -112, -119, -125, -121, -104, -123, 119, 108, -128, 121, 110, 115, -118, 108, 111, -118, 125, 112, 123, 122, 125, 127, 116, 121, 114, -123, -114, -127, -126, -116, -123, -97, -126, -127, -125, -117, -97, -126, -107, -108, -108, -113, -114, -63, -58, -48, -66, -65, -55, -62, -68, -65, -66, -64, -56, -68, -65, -46, -47, -47, -52, -53, -109, -122, -104, -126, -109, -123, -96, -124, -112, -114, -111, -115, -122, -107, -122, -62, -53, -66, -65, -55, -62, -68, -65, -66, -64, -56, -68, -65, -46, -47, -47, -52, -53, 123, -124, -121, -117, 125, -105, 122, -118, -121, -113, -117, 125, -118, -42, -27, -34, -34, -43, -36, -113, -109, -106, -104, -117, -103, -103, -113, -107, -108, -65, -60, -50, -68, -67, -57, -64, -38, -67, -68, -66, -58, -38, -67, -48, -49, -49, -54, -55, -67, -74, -61, -71, -63, -70, -44, -72, -55, -74, -78, -89, -69, -76, -87, -82, -91, -89, -86, -91, -72, -85, -74, -75, -72, -70, -81, -76, -83, -91, -84, -78, -75, -67, -99, -90, -87, -83, -97, -103, -100, -84, -87, -79, -83, -97, -84, -41, -48, -51, -48, -47, -39, -48, 126, 127, 124, -113, -127};
    }

    static {
        A02();
    }

    EnumC0916Tw(String str) {
        this.A00 = str;
    }

    public static EnumC0916Tw A00(String str) {
        EnumC0916Tw enumC0916Tw = null;
        EnumC0916Tw[] enumC0916TwArrValues = values();
        int length = enumC0916TwArrValues.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    str = str;
                    enumC0916TwArrValues = enumC0916TwArrValues;
                    enumC0916Tw = enumC0916TwArrValues[i];
                    if (!enumC0916Tw.A00.equalsIgnoreCase(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return enumC0916Tw;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    enumC0916Tw = A0D;
                    c = 4;
                    break;
            }
        }
    }
}
