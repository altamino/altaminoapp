package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ty, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0918Ty {
    private static byte[] A00;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 79);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{18, 39, 28, 15, 27, 23, 17, 13, 33, 18, 25, 13, 26, 15, 39, 19, 32, 13, 22, 34, 27, 26, 13, 35, 32, 26, 5, 50, 50, 47, 50, -32, 52, 50, 33, 46, 51, 38, 47, 50, 45, 41, 46, 39, -32, 10, 19, 15, 14, -32, 41, 46, -32, 53, 48, 36, 33, 52, 37, 3, 33, 35, 40, 37, 36, 21, 50, 44, 51, -52, -43, -53, -58, -54, -56, -39, -53, -58, -48, -44, -56, -50, -52, -38, 52, 49, 43, -64, -70, -58, -59, 56, 43, 38, 39, 49, 33, 55, 52, 46, 30, 34, 22, 28, 26, 43, 41, 58, 55, 61, 59, 45, 52};
    }

    private C0918Ty() {
    }

    public static JSONObject A01(Context context, JSONObject jSONObject, C0607Ht c0607Ht, KX kx, C0905Tk c0905Tk) throws JSONException {
        JSONArray jSONArrayOptJSONArray = null;
        int i = 0;
        JSONArray jSONArrayOptJSONArray2 = null;
        int i2 = 0;
        if (c0607Ht.A0d(jSONObject.optString(A00(0, 26, 95)))) {
            kx.A02(KW.A0Q, null);
            char c = 4;
            while (true) {
                switch (c) {
                    case 4:
                        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A00(87, 4, 8));
                        if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optString(A00(84, 3, 112)) != null) {
                            jSONObjectOptJSONObject.put(A00(84, 3, 112), c0607Ht.A0O(jSONObjectOptJSONObject.optString(A00(84, 3, 112))));
                        }
                        jSONArrayOptJSONArray = jSONObject.optJSONArray(A00(69, 15, 24));
                        if (jSONArrayOptJSONArray != null) {
                            c = 18;
                        } else {
                            c = 25;
                            continue;
                        }
                        break;
                    case 18:
                        i2 = 0;
                        c = 19;
                        continue;
                    case 19:
                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                        if (i2 < jSONArrayOptJSONArray.length()) {
                            c = 21;
                        } else {
                            c = 25;
                            continue;
                        }
                    case 21:
                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                        jSONArrayOptJSONArray.put(i2, c0607Ht.A0O(jSONArrayOptJSONArray.optString(i2)));
                        i2++;
                        c = 19;
                        continue;
                    case 25:
                        try {
                            jSONArrayOptJSONArray2 = jSONObject.optJSONArray(A00(105, 8, 121));
                            if (jSONArrayOptJSONArray2 != null) {
                                c = 28;
                            } else {
                                c = '\"';
                                continue;
                            }
                        } catch (JSONException unused) {
                            c0905Tk.A04(P8.A0o, A00(26, 43, 113));
                            break;
                        }
                    case 28:
                        i = 0;
                        c = 29;
                        continue;
                    case 29:
                        jSONArrayOptJSONArray2 = jSONArrayOptJSONArray2;
                        if (i >= jSONArrayOptJSONArray2.length()) {
                            break;
                        } else {
                            A03(jSONArrayOptJSONArray2.optJSONObject(i), c0607Ht);
                            i++;
                            c = 29;
                            continue;
                        }
                    case '\"':
                        jSONObject = jSONObject;
                        A03(jSONObject, c0607Ht);
                        break;
                }
                c0905Tk.A04(P8.A0o, A00(26, 43, 113));
            }
        }
        return jSONObject;
    }

    private static void A03(JSONObject imageObject, C0607Ht c0607Ht) throws JSONException {
        JSONObject jSONObjectOptJSONObject = imageObject.optJSONObject(A00(100, 5, 102));
        char c = jSONObjectOptJSONObject != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject;
                    if (jSONObjectOptJSONObject.optString(A00(84, 3, 112)) == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0607Ht = c0607Ht;
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject;
                    jSONObjectOptJSONObject.put(A00(84, 3, 112), c0607Ht.A0O(jSONObjectOptJSONObject.optString(A00(84, 3, 112))));
                    c = 4;
                    break;
                case 4:
                    imageObject = imageObject;
                    if (imageObject.optString(A00(91, 9, 115)) == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    imageObject = imageObject;
                    c0607Ht = c0607Ht;
                    imageObject.put(A00(91, 9, 115), c0607Ht.A0Q(imageObject.optString(A00(91, 9, 115))));
                    c = 6;
                    break;
                case 6:
                    return;
            }
        }
    }
}
