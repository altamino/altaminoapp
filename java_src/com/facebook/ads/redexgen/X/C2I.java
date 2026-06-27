package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2I, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C2I implements C1V {
    private static byte[] A07;
    private final C1U A00;
    private final String A01;
    private final String A02;
    private final String A03;
    private final String A04;
    private final Collection<String> A05;
    private final Map<String, String> A06;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 120);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A07 = new byte[]{50, 38, 55, 48, 58, 53, 76, 68, 83, 64, 67, 64, 83, 64, 68, 73, 81, 60, 71, 68, 63, 60, 79, 68, 74, 73, 58, 61, 64, 67, 60, 81, 68, 74, 77, 24, 25, 40, 25, 23, 40, 29, 35, 34, 19, 39, 40, 38, 29, 34, 27, 39, -33, -16, 32, 19, 31, 35, 19, 33, 34, 13, 23, 18, -36, -34, -17, -28, -15, -36, -17, -28, -22, -23, -38, -34, -22, -24, -24, -36, -23, -33};
    }

    private C2I(String str, String str2, C1U c1u, Collection<String> mDetectionStrings, Map<String, String> mMetadata, String str3, String str4) {
        this.A03 = str;
        this.A01 = str2;
        this.A00 = c1u;
        this.A05 = mDetectionStrings;
        this.A06 = mMetadata;
        this.A04 = str3;
        this.A02 = str4;
    }

    public static C2I A00(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String mRequestId = jSONObject.optString(A01(0, 6, 77));
        String key = jSONObject.optString(A01(64, 18, 3));
        String strOptString = jSONObject.optString(A01(54, 10, 54));
        String strA02 = C0760Nv.A02(jSONObject, A01(52, 2, 4));
        C1U c1uA00 = C1U.A00(jSONObject.optString(A01(14, 21, 99)));
        JSONArray jSONArray = null;
        try {
            jSONArray = new JSONArray(jSONObject.optString(A01(35, 17, 60)));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        Collection<String> collectionA01 = C1W.A01(jSONArray);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A01(6, 8, 103));
        HashMap map = new HashMap();
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> keys = jSONObjectOptJSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                map.put(next, jSONObjectOptJSONObject.optString(next));
            }
        }
        return new C2I(mRequestId, key, c1uA00, collectionA01, map, strOptString, strA02);
    }

    public final String A03() {
        return this.A01;
    }

    public final String A04() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.C1V, com.facebook.ads.redexgen.X.InterfaceC01851h
    public final String A3P() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.C1V
    public final Collection<String> A3R() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.C1V
    public final C1U A3a() {
        return this.A00;
    }
}
