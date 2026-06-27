package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lx, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0711Lx {
    private static C0711Lx A00;
    private static byte[] A01;

    private static String A04(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A01 = new byte[]{5, 4, 7, 8, 15, 8, 21, 8, 14, 15, 21, 24, 17, 4, 82, 84, 71, 69, 77, 67, 84, 85, 66, 71, 82, 71, 68, 65, 122, 87, 64, 85, 74, 87, 81, 76, 75, 66, 122, 70, 74, 75, 67, 76, 66, 51, 63, 52, 53, 53, 48, 53, 36, 32, 49, 38, 107, 124, 124, 97, 124, 2, 1, 5, 16, 17, 22, 1, 59, 7, 11, 10, 2, 13, 3, 28, 20, 2, 2, 16, 22, 20, 90, 95, 74, 95, 97, 83, 81, 90, 91, 82, 97, 74, 71, 78, 91, 94, 81, 96, 73, 94, 83, 86, 91, 94, 75, 86, 80, 81, 96, 74, 74, 86, 91, 39, 34, 53, 65, 93, 80, 82, 84, 92, 84, 95, 69, 66};
    }

    static {
        A05();
        A00 = new C0711Lx();
    }

    private C0711Lx() {
    }

    public static synchronized C0711Lx A00() {
        return A00;
    }

    /* JADX WARN: Incorrect condition in loop: B:6:0x0066 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.facebook.ads.redexgen.X.M0 A01(android.content.Context r11, org.json.JSONObject r12, long r13, @android.support.annotation.Nullable java.lang.String r15) throws org.json.JSONException {
        /*
            r10 = this;
            r2 = 118(0x76, float:1.65E-43)
            r1 = 10
            r0 = 97
            java.lang.String r0 = A04(r2, r1, r0)
            org.json.JSONArray r1 = r12.getJSONArray(r0)
            r0 = 0
            org.json.JSONObject r3 = r1.getJSONObject(r0)
            r2 = 0
            r1 = 10
            r0 = 49
            java.lang.String r0 = A04(r2, r1, r0)
            org.json.JSONObject r0 = r3.getJSONObject(r0)
            com.facebook.ads.redexgen.X.JK r6 = com.facebook.ads.redexgen.X.JK.A00(r0)
            r2 = 61
            r1 = 14
            r0 = 52
            java.lang.String r0 = A04(r2, r1, r0)
            java.lang.String r5 = r3.optString(r0)
            r2 = 26
            r1 = 19
            r0 = 117(0x75, float:1.64E-43)
            java.lang.String r0 = A04(r2, r1, r0)
            java.lang.String r0 = r3.optString(r0)
            com.facebook.ads.redexgen.X.JJ r4 = new com.facebook.ads.redexgen.X.JJ
            r4.<init>(r6, r5, r0)
            r2 = 115(0x73, float:1.61E-43)
            r1 = 3
            r0 = 22
            java.lang.String r0 = A04(r2, r1, r0)
            boolean r0 = r3.has(r0)
            if (r0 == 0) goto Laf
            r2 = 115(0x73, float:1.61E-43)
            r1 = 3
            r0 = 22
            java.lang.String r0 = A04(r2, r1, r0)
            org.json.JSONArray r8 = r3.getJSONArray(r0)
            r7 = 0
        L62:
            int r0 = r8.length()
            if (r7 >= r0) goto Laf
            org.json.JSONObject r9 = r8.getJSONObject(r7)
            com.facebook.ads.redexgen.X.KZ.A05(r11, r9, r13, r15)
            r2 = 49
            r1 = 7
            r0 = 4
            java.lang.String r0 = A04(r2, r1, r0)
            java.lang.String r6 = r9.optString(r0)
            r2 = 82
            r1 = 15
            r0 = 110(0x6e, float:1.54E-43)
            java.lang.String r0 = A04(r2, r1, r0)
            java.lang.String r5 = r9.optString(r0)
            r2 = 22
            r1 = 4
            r0 = 118(0x76, float:1.65E-43)
            java.lang.String r0 = A04(r2, r1, r0)
            org.json.JSONObject r3 = r9.optJSONObject(r0)
            r2 = 14
            r1 = 8
            r0 = 118(0x76, float:1.65E-43)
            java.lang.String r0 = A04(r2, r1, r0)
            org.json.JSONArray r1 = r9.optJSONArray(r0)
            com.facebook.ads.redexgen.X.JH r0 = new com.facebook.ads.redexgen.X.JH
            r0.<init>(r6, r5, r3, r1)
            r4.A09(r0)
            int r7 = r7 + 1
            goto L62
        Laf:
            r2 = 97
            r1 = 18
            r0 = 111(0x6f, float:1.56E-43)
            java.lang.String r0 = A04(r2, r1, r0)
            java.lang.String r1 = r12.optString(r0)
            com.facebook.ads.redexgen.X.M0 r0 = new com.facebook.ads.redexgen.X.M0
            r0.<init>(r4, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0711Lx.A01(android.content.Context, org.json.JSONObject, long, java.lang.String):com.facebook.ads.redexgen.X.M0");
    }

    private M1 A02(JSONObject jSONObject) {
        return new M1(jSONObject.optString(A04(75, 7, 33), A04(75, 0, 95)), jSONObject.optInt(A04(45, 4, 0), 0), null);
    }

    private M1 A03(JSONObject definition) throws JSONException {
        try {
            JSONArray placements = definition.getJSONArray(A04(118, 10, 97));
            JSONObject jSONObject = placements.getJSONObject(0);
            JSONObject placement = jSONObject.getJSONObject(A04(0, 10, 49));
            JK jkA00 = JK.A00(placement);
            String strOptString = jSONObject.optString(A04(61, 14, 52));
            String strOptString2 = jSONObject.optString(A04(26, 19, 117));
            String strOptString3 = definition.optString(A04(75, 7, 33), A04(75, 0, 95));
            String featureConfig = A04(45, 4, 0);
            return new M1(strOptString3, definition.optInt(featureConfig, 0), new JJ(jkA00, strOptString, strOptString2));
        } catch (JSONException unused) {
            return A02(definition);
        }
    }

    public final C0713Lz A06(Context context, String str, long j, @Nullable String str2) throws JSONException {
        String str3 = str2;
        Context context2 = context;
        C0711Lx c0711Lx = this;
        JSONObject jSONObject = null;
        char c = 0;
        JSONObject jSONObjectOptJSONObject = null;
        C0713Lz c0713LzA02 = null;
        String strOptString = null;
        char c2 = !TextUtils.isEmpty(str) ? (char) 2 : '\r';
        while (true) {
            switch (c2) {
                case 2:
                    str = str;
                    jSONObject = new JSONObject(str);
                    strOptString = jSONObject.optString(A04(10, 4, 49));
                    c = 65535;
                    switch (strOptString.hashCode()) {
                        case 96432:
                            c2 = 11;
                            break;
                        case 96784904:
                            c2 = '\t';
                            break;
                        default:
                            c2 = 3;
                            break;
                    }
                case 3:
                    switch (c) {
                        case 0:
                            c2 = '\b';
                            break;
                        case 1:
                            c2 = 7;
                            break;
                        default:
                            c2 = 4;
                            break;
                    }
                case 4:
                    jSONObject = jSONObject;
                    jSONObjectOptJSONObject = jSONObject.optJSONObject(A04(56, 5, 94));
                    if (jSONObjectOptJSONObject == null) {
                        c2 = '\r';
                        break;
                    } else {
                        c2 = 5;
                        break;
                    }
                case 5:
                    c0711Lx = c0711Lx;
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject;
                    c0713LzA02 = c0711Lx.A02(jSONObjectOptJSONObject);
                    c2 = 6;
                    break;
                case 6:
                    return c0713LzA02;
                case 7:
                    c0711Lx = c0711Lx;
                    jSONObject = jSONObject;
                    c0713LzA02 = c0711Lx.A03(jSONObject);
                    c2 = 6;
                    break;
                case '\b':
                    c0711Lx = c0711Lx;
                    context2 = context2;
                    str3 = str3;
                    jSONObject = jSONObject;
                    c0713LzA02 = c0711Lx.A01(context2, jSONObject, j, str3);
                    c2 = 6;
                    break;
                case '\t':
                    strOptString = strOptString;
                    if (!strOptString.equals(A04(56, 5, 94))) {
                        c2 = 3;
                        break;
                    } else {
                        c2 = '\n';
                        break;
                    }
                case '\n':
                    c = 1;
                    c2 = 3;
                    break;
                case 11:
                    strOptString = strOptString;
                    if (!strOptString.equals(A04(115, 3, 22))) {
                        c2 = 3;
                        break;
                    } else {
                        c2 = '\f';
                        break;
                    }
                case '\f':
                    c = 0;
                    c2 = 3;
                    break;
                case '\r':
                    c0713LzA02 = new C0713Lz(EnumC0712Ly.A04);
                    c2 = 6;
                    break;
            }
        }
    }
}
