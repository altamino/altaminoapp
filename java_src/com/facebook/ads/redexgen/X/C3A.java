package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.narvii.util.http.ApiService;
import java.io.Serializable;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3A, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C3A implements Serializable {
    private static byte[] A0B = null;
    private static final C3C A0C;
    private static final SO A0D;
    private static final long serialVersionUID = -5352540123250859603L;
    private String A00;
    private final int A01;
    private final int A02;
    private final C3C A03;
    private final SO A04;
    private final String A05;
    private final String A06;
    private final String A07;
    private final String A08;
    private final boolean A09;
    private final boolean A0A;

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 27);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A0B = new byte[]{-13, -11, -24, -26, -28, -26, -21, -20, -15, -22, -30, -16, -24, -9, -21, -14, -25, -100, -91, -104, -103, -93, -100, -106, -96, -91, -85, -87, -90, -106, -102, -104, -87, -101, -45, -17, -28, -4, -93, -42, -9, -14, -11, -24, -93, -6, -20, -17, -17, -93, -28, -8, -9, -14, -16, -28, -9, -20, -26, -28, -17, -17, -4, -93, -14, -13, -24, -15, -93, -20, -15, -93, -34, -10, -24, -26, -10, -32, -10, -79, -81, -72, -81, -68, -77, -83, -87, -66, -81, -62, -66, -36, -40, -51, -27, -51, -50, -40, -47, -53, -48, -51, -32, -51, -48, -39, -52, -51, -41, -48, -54, -48, -39, -49, -54, -50, -52, -35, -49, -99, -96, -105, -109, -100, -94, -113, -94, -105, -99, -100, -31, -39, -41, -34, -34, -49, -48, -38, -45, -51, -31, -45, -47, -35, -36, -46, -31, -51, -32, -14, -36, -19, -33, -32, -33, -101, -53, -25, -36, -12, -90, -97, -92, -100, -102, -95, -95, -110, -109, -99, -106, -112, -92, -106, -108, -96, -97, -107, -92, -89, -88, -81, -92, -68, -94, -90, -81, -84, -90, -82, -94, -73, -88, -69, -73, -5, -23, -26, -29, -6, -19, -23, -5, -29, -8, -19, -15, -23, -13, -7, -8, -29, -19, -14, -29, -15, -19, -16, -16, -19, -9, -23, -25, -13, -14, -24, -9, -8, -11, -20, -64, -59, -53, -55, -58, -74, -70, -72, -55, -69, -74, -64, -70, -58, -59, -74, -52, -55, -61, -14, -27, -9, -31, -14, -28, -27, -28, -33, -16, -20, -31, -7, -33, -12, -27, -8, -12};
    }

    static {
        A06();
        A0D = SO.A04;
        A0C = C3C.A03;
    }

    private C3A(String str, String str2, int i, String str3, String str4, SO so, int i2, boolean z, boolean z2, C3C c3c) {
        this.A07 = str;
        this.A06 = str2;
        this.A01 = i;
        this.A08 = str3;
        this.A05 = str4;
        this.A04 = so;
        this.A02 = i2;
        this.A0A = z;
        this.A09 = z2;
        this.A03 = c3c;
    }

    private static int A00(JSONObject jSONObject) {
        int iOptInt = 0;
        char c = jSONObject.has(A03(130, 17, 83)) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jSONObject = jSONObject;
                    iOptInt = jSONObject.optInt(A03(130, 17, 83));
                    c = 3;
                    break;
                case 3:
                    return iOptInt;
                case 4:
                    jSONObject = jSONObject;
                    iOptInt = jSONObject.optInt(A03(160, 19, 22), 0);
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public static C3A A01(JSONObject jSONObject) {
        C3A c3a = null;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A03(91, 13, 81));
        char c = jSONObjectOptJSONObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3a = null;
                    c = 3;
                    break;
                case 3:
                    return c3a;
                case 4:
                    jSONObject = jSONObject;
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject;
                    C3C c3cA00 = C3C.A00(jSONObjectOptJSONObject.optString(A03(0, 17, 104), A0C.name()));
                    String strOptString = jSONObjectOptJSONObject.optString(A03(227, 3, 104));
                    String strOptString2 = jSONObjectOptJSONObject.optString(A03(ApiService.API_ERR_USER_NOT_IN_COMMUNITY, 19, 60));
                    int iA00 = A00(jSONObject);
                    String strA05 = A05(jSONObjectOptJSONObject);
                    String strA04 = A04(jSONObjectOptJSONObject);
                    SO soA02 = A02(jSONObjectOptJSONObject);
                    String precachingMethodStr = A03(195, 32, 105);
                    int iOptInt = jSONObjectOptJSONObject.optInt(precachingMethodStr, 5000);
                    String precachingMethodStr2 = A03(17, 17, 28);
                    c3a = new C3A(strOptString, strOptString2, iA00, strA05, strA04, soA02, iOptInt, jSONObjectOptJSONObject.optBoolean(precachingMethodStr2, true), jSONObjectOptJSONObject.optBoolean(A03(104, 15, 80)), c3cA00);
                    c = 3;
                    break;
            }
        }
    }

    private static SO A02(JSONObject jSONObject) {
        return SO.A00(jSONObject.optInt(A03(119, 11, 19), A0D.A03()));
    }

    private static String A04(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(79, 12, 47));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(34, 45, 104);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(179, 16, 40), A03(34, 45, 104));
                    c = 3;
                    break;
            }
        }
    }

    private static String A05(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(79, 12, 47));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(147, 13, 96);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(249, 18, 101), A03(147, 13, 96));
                    c = 3;
                    break;
            }
        }
    }

    public final int A07() {
        return this.A01;
    }

    public final int A08() {
        return this.A02;
    }

    public final C3C A09() {
        return this.A03;
    }

    public final SO A0A() {
        return this.A04;
    }

    public final String A0B() {
        return this.A00;
    }

    public final String A0C() {
        return this.A05;
    }

    public final String A0D() {
        return this.A06;
    }

    public final String A0E() {
        return this.A07;
    }

    public final String A0F() {
        return this.A08;
    }

    public final void A0G(String str) {
        this.A00 = str;
    }

    public final boolean A0H() {
        return this.A0A;
    }
}
