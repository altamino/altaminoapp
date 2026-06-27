package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import com.tonyodev.fetch.FetchConst;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class KZ {
    private static byte[] A00;
    private static final Map<String, String> A01;
    private static final Map<String, List<String>> A02;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_NOT_FOUND);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A00 = new byte[]{7, 19, 17, -46, 10, 5, 7, 9, 6, 19, 19, 15, -46, 5, 8, 23, -46, 13, 18, 24, 9, 22, 18, 5, 16, -46, 16, 19, 11, 11, 13, 18, 11, -46, -27, 8, -23, 26, 9, 18, 24, -15, 5, 18, 5, 11, 9, 22, -19, 17, 20, 16, 13, 16, 2, 5, 0, 21, 10, 14, 6, 0, 14, 20, 51, 49, 64, 21, 58, 63, 64, 45, 58, 47, 49, 53, 50, 69, 50, 90, 77, 89, 93, 77, 91, 92, 71, 92, 81, 85, 77, 71, 85, 91, 76, 93, 78, 93, 86, 86, 77, 84, -3, 2, 9, 9, 13, -5, -4, 6, -1, -7, -5, -2, 13, 71, 74, 49, 56, 71, 64, 64, 55, 62, 49, 62, 65, 57, 57, 59, 64, 57};
    }

    static {
        A03();
        A02 = new HashMap();
        A01 = new HashMap();
    }

    private KZ() {
    }

    @Nullable
    public static String A01(String str) {
        return A01.get(str);
    }

    private static List<String> A02(Context context, JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    jSONArray = jSONArray;
                    if (i >= jSONArray.length()) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    try {
                        jSONArray = jSONArray;
                        arrayList.add(jSONArray.getString(i));
                        i++;
                        c = 2;
                        break;
                    } catch (JSONException e) {
                        P7.A07(context, A00(115, 17, 99), P8.A0q, new PA(e));
                        c = '\b';
                        break;
                    }
                case '\b':
                    return arrayList;
            }
        }
    }

    private static void A04(Context context, String str, long j) {
        try {
            KX kx = new KX(str, (KM) Class.forName(A00(0, 52, 53)).getMethod(A00(64, 11, 93), Context.class).invoke(null, context));
            HashMap map = new HashMap();
            map.put(A00(79, 15, 121), OO.A06(j));
            map.put(A00(52, 12, 50), OO.A04(j));
            kx.A02(KW.A0D, map);
        } catch (Exception unused) {
        }
    }

    public static void A05(Context context, JSONObject jSONObject, long j, @Nullable String str) {
        Context context2 = context;
        String str2 = str;
        JSONObject jSONObject2 = jSONObject;
        JSONArray jSONArrayOptJSONArray = null;
        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(A00(75, 4, 98));
        char c = jSONObjectOptJSONObject == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    jSONObject2 = jSONObject2;
                    str2 = str2;
                    jSONArrayOptJSONArray = jSONObject2.optJSONArray(A00(96, 6, 121));
                    if (!TextUtils.isEmpty(str2)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    if (jSONArrayOptJSONArray == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    context2 = context2;
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject;
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    A06(context2, jSONObjectOptJSONObject, A02(context2, jSONArrayOptJSONArray), j, null);
                    c = 2;
                    break;
                case 6:
                    str2 = str2;
                    if (!TextUtils.isEmpty(str2)) {
                        c = 7;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 7:
                    str2 = str2;
                    if (!A02.containsKey(str2)) {
                        c = 2;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    context2 = context2;
                    str2 = str2;
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject;
                    A06(context2, jSONObjectOptJSONObject, A02.get(str2), j, str2);
                    c = 2;
                    break;
            }
        }
    }

    private static void A06(Context context, JSONObject adObject, List<String> list, long j, @Nullable String str) {
        String strOptString = null;
        JSONArray jSONArrayOptJSONArray = null;
        int i = 0;
        JSONObject jSONObjectOptJSONObject = null;
        char c = adObject.has(A00(94, 2, 122)) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    adObject = adObject;
                    list = list;
                    str = str;
                    String strOptString2 = adObject.optString(A00(94, 2, 122));
                    A08(strOptString2, str);
                    A09(strOptString2, list);
                    A04(context, strOptString2, j);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    adObject = adObject;
                    if (!adObject.has(A00(102, 13, 43))) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    adObject = adObject;
                    jSONArrayOptJSONArray = adObject.optJSONArray(A00(102, 13, 43));
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    if (i >= jSONArrayOptJSONArray.length()) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    list = list;
                    str = str;
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject;
                    strOptString = jSONObjectOptJSONObject.optString(A00(94, 2, 122));
                    A08(strOptString, str);
                    A09(strOptString, list);
                    if (i != 0) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    context = context;
                    strOptString = strOptString;
                    A04(context, strOptString, j);
                    c = '\n';
                    break;
                case '\n':
                    i++;
                    c = 6;
                    break;
            }
        }
    }

    public static void A07(View view, KX kx, KW kw) {
        view.addOnAttachStateChangeListener(new KY(kx, kw));
    }

    private static void A08(@Nullable String str, @Nullable String str2) {
        char c = !TextUtils.isEmpty(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str2 = str2;
                    if (!TextUtils.isEmpty(str2)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    str = str;
                    str2 = str2;
                    A01.put(str, str2);
                    c = 3;
                    break;
            }
        }
    }

    private static void A09(String str, List<String> list) {
        char c = !TextUtils.isEmpty(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    list = list;
                    if (!list.isEmpty()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    str = str;
                    list = list;
                    A02.put(str, list);
                    c = 3;
                    break;
            }
        }
    }

    public static boolean A0A(String str, KW kw) {
        return A0B(str, kw.A02());
    }

    public static boolean A0B(String str, String str2) {
        boolean z = false;
        char c = A02.containsKey(str) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    str2 = str2;
                    if (!A02.get(str).contains(str2)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
