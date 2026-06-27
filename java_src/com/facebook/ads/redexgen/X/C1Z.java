package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1Z, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C1Z {
    private static byte[] A06;
    private final String A00;
    private final String A01;
    private final String A02;
    private final String A03;
    private final String A04;
    private final List<String> A05;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 57);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A06 = new byte[]{-49, -34, -34, -31, -41, -30, -45, -51, -29, -32, -38, -50, -35, -35, -32, -42, -31, -46, -60, -75, -73, -65, -75, -69, -71, -31, -36, -25, -25, -35, -36, -34, -26, -38, -16, -19, -25, -9, -21, -4, -11, -17, -2, -23, -1, -4, -13, -67, -73, -53, -79, -70, -77, -59, -70, -73, -59};
    }

    private C1Z(String str, String str2, String str3, List<String> mKeyHashes, String str4, String str5) {
        this.A04 = str;
        this.A01 = str2;
        this.A00 = str3;
        this.A05 = mKeyHashes;
        this.A03 = str4;
        this.A02 = str5;
    }

    public static C1Z A00(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = null;
        int i = 0;
        C1Z c1z = null;
        ArrayList arrayList = null;
        String strOptString = null;
        String strOptString2 = null;
        String strOptString3 = null;
        char c = jSONObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c1z = null;
                    c = 3;
                    break;
                case 3:
                    return c1z;
                case 4:
                    jSONObject = jSONObject;
                    strOptString2 = jSONObject.optString(A01(18, 7, 27));
                    strOptString = jSONObject.optString(A01(11, 7, 52));
                    strOptString3 = jSONObject.optString(A01(0, 11, 53));
                    jSONArrayOptJSONArray = jSONObject.optJSONArray(A01(47, 10, 25));
                    arrayList = new ArrayList();
                    if (jSONArrayOptJSONArray == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    if (i >= jSONArrayOptJSONArray.length()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    arrayList = arrayList;
                    arrayList.add(jSONArrayOptJSONArray.optString(i));
                    i++;
                    c = 6;
                    break;
                case '\b':
                    jSONObject = jSONObject;
                    strOptString2 = strOptString2;
                    strOptString = strOptString;
                    strOptString3 = strOptString3;
                    arrayList = arrayList;
                    c1z = new C1Z(strOptString2, strOptString, strOptString3, arrayList, jSONObject.optString(A01(37, 10, 81)), jSONObject.optString(A01(25, 12, 66)));
                    c = 3;
                    break;
            }
        }
    }

    public final String A03() {
        return this.A00;
    }

    public final String A04() {
        return this.A01;
    }

    public final String A05() {
        return this.A04;
    }
}
