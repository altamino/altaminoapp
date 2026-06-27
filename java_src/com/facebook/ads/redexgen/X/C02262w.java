package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.internal.adapters.datamodels.RewardedVideoAdDataBundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2w, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02262w extends AbstractC02162m {
    private static byte[] A06;
    private C02182o A00;
    private C02272x A01;
    private String A02;
    private String A03;
    private String A04;
    private List<C3D> A05;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 64);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static void A03() {
        A06 = new byte[]{92, 81, 73, 95, 69, 68, 23, 114, 114, 6, 7, 6, 3, 6, 114, 71, 66, 121, 69, 73, 72, 64, 79, 65, 121, 100, 96, 104, 127, 82, 121, 104, 117, 121, 82, 110, 98, 97, 98, 127, 103, 104, 89, 106, 105, 97, 105, 89, 114, 127, 118, 99, 122, 124, 111, 96, 125, 98, 111, 122, 103, 97, 96, 125, 31, 122, 122, 122, 122, 122, 122, 56, 59, 57, 49, 61, 40, 53, 47, 52, 62, 5, 57, 53, 54, 53, 40, 65, 74, 77, 77, 81, 67, 64, 78, 71, 125, 67, 70, 81, 43, 54, 43, 51, 58, 0, 43, 58, 39, 43, 0, 60, 48, 51, 48, 45};
    }

    private C02262w(C02272x c02272x, Map<String, String> map, C02182o c02182o, List<C3D> list) {
        String strA02;
        String strA022;
        String strA023;
        this.A01 = c02272x;
        this.A00 = c02182o;
        this.A05 = list;
        if (map.containsKey(A02(71, 16, 26))) {
            strA02 = map.get(A02(71, 16, 26));
        } else {
            strA02 = A02(6, 9, 116);
        }
        this.A02 = strA02;
        if (map.containsKey(A02(24, 16, 77))) {
            strA022 = map.get(A02(24, 16, 77));
        } else {
            strA022 = A02(64, 7, 124);
        }
        this.A03 = strA022;
        if (map.containsKey(A02(100, 16, 31))) {
            strA023 = map.get(A02(100, 16, 31));
        } else {
            strA023 = A02(64, 7, 124);
        }
        this.A04 = strA023;
    }

    public static C02262w A01(JSONObject jSONObject) {
        int i = 0;
        JSONArray jSONArrayOptJSONArray = null;
        ArrayList<RewardedVideoAdDataBundle> rewardedVideoAdDataBundles = null;
        C02182o c02182oA00 = null;
        C02272x c02272xA00 = C02272x.A00(jSONObject.optJSONObject(A02(52, 12, 78)));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(0, 6, 112));
        HashMap map = new HashMap();
        char c = jSONObjectOptJSONObject != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    jSONObjectOptJSONObject = jSONObjectOptJSONObject;
                    map = map;
                    A04(jSONObjectOptJSONObject, map, A02(71, 16, 26));
                    A04(jSONObjectOptJSONObject, map, A02(24, 16, 77));
                    A04(jSONObjectOptJSONObject, map, A02(100, 16, 31));
                    c = 3;
                    break;
                case 3:
                    jSONObject = jSONObject;
                    JSONObject adConfigObject = jSONObject.optJSONObject(A02(15, 9, 102));
                    c02182oA00 = C02182o.A00(adConfigObject);
                    jSONArrayOptJSONArray = jSONObject.optJSONArray(A02(87, 13, 98));
                    rewardedVideoAdDataBundles = new ArrayList<>();
                    if (jSONArrayOptJSONArray == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    if (i >= jSONArrayOptJSONArray.length()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jSONObject = jSONObject;
                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    rewardedVideoAdDataBundles = rewardedVideoAdDataBundles;
                    C3D c3dA02 = C3D.A02(jSONArrayOptJSONArray.optJSONObject(i), jSONObject.optInt(A02(40, 12, 70), 0));
                    c3dA02.A0R(true);
                    rewardedVideoAdDataBundles.add(c3dA02);
                    i++;
                    c = 5;
                    break;
                case 7:
                    return new C02262w(c02272xA00, map, c02182oA00, rewardedVideoAdDataBundles);
            }
        }
    }

    private static void A04(JSONObject jSONObject, HashMap<String, String> map, String str) {
        String colorValue = jSONObject.optString(str);
        if (!TextUtils.isEmpty(colorValue)) {
            map.put(str, colorValue);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    public final void A09(String str) {
        super.A09(str);
        Iterator<C3D> it = this.A05.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    str = str;
                    it = it;
                    it.next().A09(str);
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    public final int A0A() {
        return 2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    public final int A0B() {
        int iMax = 0;
        Iterator<C3D> it = this.A05.iterator();
        int duration = 2;
        while (true) {
            switch (duration) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        duration = 4;
                        break;
                    } else {
                        duration = 3;
                        break;
                    }
                case 3:
                    it = it;
                    int duration2 = it.next().A0H().A04();
                    iMax = Math.max(iMax, duration2);
                    duration = 2;
                    break;
                case 4:
                    return iMax;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    @Nullable
    public final String A0C() {
        C02262w c02262w = this;
        String strA0C = null;
        char c = c02262w.A05.isEmpty() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA0C = null;
                    c = 3;
                    break;
                case 3:
                    return strA0C;
                case 4:
                    c02262w = c02262w;
                    strA0C = c02262w.A05.get(0).A0C();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    @Nullable
    public final String A0D() {
        return null;
    }

    public final C02182o A0F() {
        return this.A00;
    }

    public final C02272x A0G() {
        return this.A01;
    }

    public final String A0H() {
        return this.A02;
    }

    public final String A0I() {
        return this.A03;
    }

    public final String A0J() {
        return this.A04;
    }

    public final List<C3D> A0K() {
        return this.A05;
    }
}
