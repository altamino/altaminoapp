package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class JH {
    private static byte[] A04;
    private final String A00;
    private final String A01;
    private final Map<JL, List<String>> A02 = new HashMap();
    private final JSONObject A03;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 90);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A04 = new byte[]{46, 35, 42, 63, 33, 38, 56};
    }

    public JH(String str, String str2, JSONObject jSONObject, @Nullable JSONArray jSONArray) throws JSONException {
        this.A00 = str;
        this.A01 = str2;
        this.A03 = jSONObject;
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        for (JL jl : JL.values()) {
            this.A02.put(jl, new LinkedList());
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                String string = jSONObject2.getString(A00(0, 4, 0));
                String string2 = jSONObject2.getString(A00(4, 3, 14));
                JL jlValueOf = JL.valueOf(string.toUpperCase(Locale.US));
                if (jlValueOf != null && !TextUtils.isEmpty(string2)) {
                    this.A02.get(jlValueOf).add(string2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final String A02() {
        return this.A00;
    }

    public final String A03() {
        return this.A01;
    }

    public final List<String> A04(JL jl) {
        return this.A02.get(jl);
    }

    public final JSONObject A05() {
        return this.A03;
    }
}
