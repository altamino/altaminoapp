package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0760Nv {
    private static byte[] A00;

    static {
        A05();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A00 = new byte[]{-14, -7, -16, -16};
    }

    private C0760Nv() {
    }

    public static String A01(Map<String, String> map) throws JSONException {
        Iterator<Map.Entry<String, String>> it = null;
        Map.Entry<String, String> next = null;
        JSONObject jSONObject = new JSONObject();
        char c = map != null ? (char) 2 : '\n';
        while (true) {
            switch (c) {
                case 2:
                    map = map;
                    it = map.entrySet().iterator();
                    break;
                case 4:
                    it = it;
                    next = it.next();
                    c = 5;
                case 5:
                    try {
                        next = next;
                        jSONObject.put(next.getKey(), next.getValue());
                        break;
                    } catch (JSONException e) {
                        e.printStackTrace();
                        break;
                    }
                case '\n':
                    return jSONObject.toString();
            }
            c = it.hasNext() ? (char) 4 : '\n';
        }
    }

    public static String A02(JSONObject jSONObject, String str) {
        return A03(jSONObject, str, null);
    }

    private static String A03(JSONObject jSONObject, String str, String str2) {
        String strOptString = jSONObject.optString(str, str2);
        if (A00(0, 4, 122).equals(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public static List<String> A04(JSONArray jSONArray) {
        List<String> stringList = null;
        int i = 0;
        String strOptString = null;
        char c = jSONArray == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    stringList = new ArrayList<>();
                    c = 3;
                    break;
                case 3:
                    return (ArrayList) stringList;
                case 4:
                    stringList = new ArrayList<>();
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    jSONArray = jSONArray;
                    if (i >= jSONArray.length()) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jSONArray = jSONArray;
                    strOptString = jSONArray.optString(i);
                    if (!TextUtils.isEmpty(strOptString)) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    stringList = (ArrayList) stringList;
                    strOptString = strOptString;
                    stringList.add(strOptString);
                    c = '\b';
                    break;
                case '\b':
                    i++;
                    c = 5;
                    break;
            }
        }
    }
}
