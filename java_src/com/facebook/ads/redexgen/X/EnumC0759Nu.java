package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.View;
import com.facebook.ads.NativeAdBase;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nu, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC0759Nu {
    A0H(0),
    A0G(1),
    A0F(2),
    A0J(3),
    A0I(4),
    A09(5, NativeAdBase.NativeComponentTag.AD_ICON),
    A0E(6, NativeAdBase.NativeComponentTag.AD_TITLE),
    A08(7, NativeAdBase.NativeComponentTag.AD_COVER_IMAGE),
    A0D(8, NativeAdBase.NativeComponentTag.AD_SUBTITLE),
    A05(9, NativeAdBase.NativeComponentTag.AD_BODY),
    A06(10, NativeAdBase.NativeComponentTag.AD_CALL_TO_ACTION),
    A0C(11, NativeAdBase.NativeComponentTag.AD_SOCIAL_CONTEXT),
    A07(12, NativeAdBase.NativeComponentTag.AD_CHOICES_ICON),
    A0A(13, NativeAdBase.NativeComponentTag.AD_MEDIA),
    A0B(12, NativeAdBase.NativeComponentTag.AD_OPTIONS_VIEW);

    public static int A02;
    private static byte[] A03;
    private final int A00;
    private final NativeAdBase.NativeComponentTag A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 37);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{-37, -32, -26, -41, -28, -32, -45, -34, -15, -32, -31, -15, -26, -45, -39, -75, -70, -64, -79, -66, -70, -83, -72, -53, -83, -80, -53, -65, -69, -81, -75, -83, -72, -53, -81, -69, -70, -64, -79, -60, -64, -78, -73, -67, -82, -69, -73, -86, -75, -56, -73, -66, -75, -75, -56, -65, -78, -82, -64, -111, -106, -100, -115, -102, -106, -119, -108, -89, -119, -104, -111, -89, -100, -105, -105, -89, -108, -105, -97, -93, -88, -82, -97, -84, -88, -101, -90, -71, -101, -98, -71, -89, -97, -98, -93, -101, 112, 117, 123, 108, 121, 117, 104, 115, -122, 104, 107, -122, 106, 104, 115, 115, -122, 123, 118, -122, 104, 106, 123, 112, 118, 117, -97, -92, -86, -101, -88, -92, -105, -94, -75, -105, -102, -75, -97, -103, -91, -92, -90, -85, -79, -94, -81, -85, -98, -87, -68, -98, -95, -68, -80, -78, -97, -79, -90, -79, -87, -94, -50, -45, -39, -54, -41, -45, -58, -47, -28, -45, -44, -28, -56, -47, -50, -56, -48, -121, -116, -110, -125, -112, -116, 127, -118, -99, 127, -126, -99, -127, -122, -115, -121, -127, -125, -111, -99, -121, -127, -115, -116, -32, -27, -21, -36, -23, -27, -40, -29, -10, -40, -37, -10, -21, -32, -21, -29, -36, -73, -68, -62, -77, -64, -68, -81, -70, -51, -81, -78, -51, -80, -67, -78, -57, -84, -79, -73, -88, -75, -79, -92, -81, -62, -92, -89, -62, -78, -77, -73, -84, -78, -79, -74, -62, -71, -84, -88, -70, -35, -30, -24, -39, -26, -30, -43, -32, -13, -43, -40, -13, -41, -29, -22, -39, -26, -13, -35, -31, -43, -37, -39, -57, -52, -46, -61, -48, -52, -65, -54, -35, -43, -48, -51, -52, -59, -35, -46, -65, -59, -35, -63, -54, -65, -47, -47};
    }

    static {
        A02();
        A02 = -1593835521;
    }

    EnumC0759Nu(int i) {
        this.A00 = i;
        this.A01 = null;
    }

    EnumC0759Nu(int i, NativeAdBase.NativeComponentTag nativeComponentTag) {
        this.A00 = i;
        this.A01 = nativeComponentTag;
    }

    private static EnumC0759Nu A00(NativeAdBase.NativeComponentTag nativeComponentTag) {
        EnumC0759Nu enumC0759Nu = null;
        EnumC0759Nu[] enumC0759NuArrValues = values();
        int length = enumC0759NuArrValues.length;
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
                    nativeComponentTag = nativeComponentTag;
                    enumC0759NuArrValues = enumC0759NuArrValues;
                    enumC0759Nu = enumC0759NuArrValues[i];
                    if (enumC0759Nu.A01 != nativeComponentTag) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return enumC0759Nu;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    enumC0759Nu = null;
                    c = 4;
                    break;
            }
        }
    }

    public static void A03(View view, NativeAdBase.NativeComponentTag nativeComponentTag) {
        EnumC0759Nu enumC0759NuA00 = A00(nativeComponentTag);
        char c = view != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    enumC0759NuA00 = enumC0759NuA00;
                    if (enumC0759NuA00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (Build.VERSION.SDK_INT <= 4) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view = view;
                    nativeComponentTag = nativeComponentTag;
                    view.setTag(A02, nativeComponentTag);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public static void A04(View view, EnumC0759Nu enumC0759Nu) {
        char c = view != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    enumC0759Nu = enumC0759Nu;
                    if (enumC0759Nu == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (Build.VERSION.SDK_INT <= 4) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view = view;
                    enumC0759Nu = enumC0759Nu;
                    view.setTag(A02, enumC0759Nu);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public final int A05() {
        return this.A00;
    }
}
