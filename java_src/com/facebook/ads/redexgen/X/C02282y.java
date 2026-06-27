package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import io.agora.rtc.Constants;
import java.io.Serializable;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2y, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02282y implements Serializable {
    private static byte[] A09 = null;
    public static final int A0A;
    public static final int A0B;
    public static final int A0C;
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    private static final long serialVersionUID = 8946536326456653736L;
    private final int A00;
    private final int A01;
    private final int A02;
    private final int A03;
    private final int A04;
    private final int A05;
    private final int A06;
    private final int A07;
    private final int A08;

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A09 = new byte[]{-11, 2, -9, 12, -14, -10, 2, -1, 2, 5, -106, -84, -93, -84, -89, -84, -42, -93, -91, -91, -89, -80, -74, -95, -91, -79, -82, -79, -76, -10, -21, -10, -18, -25, -31, -27, -15, -18, -15, -12, 1, 18, -1, -3, 1, 13, 10, 13, 16, -45, 22, 22, -28, -32, -24, -32, 22, 22, -73, -56, -75, -77, -73, -61, -64, -61, -58, -77, -61, -54, -71, -58, -77, -63, -71, -72, -67, -75, -17, 0, -19, -21, 0, -15, 4, 0, -21, -17, -5, -8, -5, -2, 125, -116, -115, -116, -111, -116, -96, -56, -51, -59, -55, -43, -46, -43, -40, 1, 3, -16, 2, -9, 2, -6, -13, -19, -15, -3, -6, -3, 0, -102, -85, -39, -85, -35, -84, -83, -70, -53, -72, -74, -53, -68, -49, -53, -74, -70, -58, -61, -58, -55, -74, -58, -51, -68, -55, -74, -60, -68, -69, -64, -72, -109, -42, -90, -42, -89, -42, -87};
    }

    static {
        A03();
        A0A = Color.parseColor(A02(10, 7, 61));
        A0B = Color.parseColor(A02(121, 7, 65));
        A0C = Color.parseColor(A02(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 7, 58));
        A0D = Color.parseColor(A02(49, 9, 122));
        A0E = Color.parseColor(A02(92, 7, 36));
        A0F = Color.parseColor(A02(49, 9, 122));
    }

    private C02282y(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.A00 = i;
        this.A01 = i2;
        this.A02 = i3;
        this.A03 = i4;
        this.A04 = i5;
        this.A05 = i6;
        this.A06 = i7;
        this.A07 = i8;
        this.A08 = i9;
    }

    private static int A00(@Nullable JSONObject jSONObject, String str, int i) {
        char c = jSONObject != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jSONObject = jSONObject;
                    str = str;
                    if (!jSONObject.has(str)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    jSONObject = jSONObject;
                    str = str;
                    i = Color.parseColor(jSONObject.optString(str));
                    c = 4;
                    break;
                case 4:
                    return i;
            }
        }
    }

    public static C02282y A01(@Nullable JSONObject jSONObject) {
        return new C02282y(A00(jSONObject, A02(17, 12, 12), A0A), A00(jSONObject, A02(0, 10, 93), A0B), A00(jSONObject, A02(107, 14, 88), ViewCompat.MEASURED_STATE_MASK), A00(jSONObject, A02(99, 8, 48), A0C), A00(jSONObject, A02(40, 9, 104), A0D), A00(jSONObject, A02(58, 20, 30), -1), A00(jSONObject, A02(78, 14, 86), -1), A00(jSONObject, A02(128, 25, 33), A0F), A00(jSONObject, A02(29, 11, 76), ViewCompat.MEASURED_STATE_MASK));
    }

    public final int A04(boolean z) {
        C02282y c02282y = this;
        int i = 0;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = -1;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c02282y = c02282y;
                    i = c02282y.A00;
                    c = 3;
                    break;
            }
        }
    }

    public final int A05(boolean z) {
        C02282y c02282y = this;
        int i = 0;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = -1;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c02282y = c02282y;
                    i = c02282y.A01;
                    c = 3;
                    break;
            }
        }
    }

    public final int A06(boolean z) {
        C02282y c02282y = this;
        int i = 0;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = -1;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c02282y = c02282y;
                    i = c02282y.A02;
                    c = 3;
                    break;
            }
        }
    }

    public final int A07(boolean z) {
        C02282y c02282y = this;
        int i = 0;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = A0E;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c02282y = c02282y;
                    i = c02282y.A03;
                    c = 3;
                    break;
            }
        }
    }

    public final int A08(boolean z) {
        C02282y c02282y = this;
        int i = 0;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02282y = c02282y;
                    i = c02282y.A05;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c02282y = c02282y;
                    i = c02282y.A04;
                    c = 3;
                    break;
            }
        }
    }

    public final int A09(boolean z) {
        C02282y c02282y = this;
        int i = 0;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02282y = c02282y;
                    i = c02282y.A07;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c02282y = c02282y;
                    i = c02282y.A06;
                    c = 3;
                    break;
            }
        }
    }

    public final int A0A(boolean z) {
        C02282y c02282y = this;
        int i = 0;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = -1;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c02282y = c02282y;
                    i = c02282y.A08;
                    c = 3;
                    break;
            }
        }
    }
}
