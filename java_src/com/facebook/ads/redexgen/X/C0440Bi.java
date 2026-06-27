package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bi, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0440Bi {
    private static byte[] A06;
    private int A00;
    private final C0430Ay A01;
    private final C0435Bd A02;
    private final C0436Be A03;
    private final C0437Bf A04;
    private final C0441Bj A05;

    static {
        A04();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 68);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A06 = new byte[]{14, 41};
    }

    public C0440Bi(Context context, C0441Bj c0441Bj, C0430Ay c0430Ay) {
        this.A03 = new C0436Be(context, c0430Ay);
        this.A04 = new C0437Bf(context, c0430Ay);
        this.A02 = new C0435Bd(context, c0430Ay);
        this.A05 = c0441Bj;
        this.A01 = c0430Ay;
        A05();
    }

    @Nullable
    private static C0521El A00(int i, String str, int i2, int i3) {
        char c;
        C0521El c0521ElA01 = null;
        switch (i) {
            case 10300:
                c = 4;
                break;
            case 10920:
                c = 5;
                break;
            case 10940:
                c = 4;
                break;
            case 10941:
                c = 4;
                break;
            case 10943:
                c = 4;
                break;
            case 10944:
                c = 4;
                break;
            case 10945:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    c0521ElA01 = null;
                    c = 3;
                    break;
                case 3:
                    return c0521ElA01;
                case 4:
                    str = str;
                    c0521ElA01 = A01(str, i2, i3, EnumC0520Ek.A03);
                    c = 3;
                    break;
                case 5:
                    str = str;
                    c0521ElA01 = A01(str, i2, i3, EnumC0520Ek.A02);
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    private static C0521El A01(String str, int i, int i2, EnumC0520Ek enumC0520Ek) {
        char c;
        C0521El c0521El = null;
        switch (C0439Bh.A00[enumC0520Ek.ordinal()]) {
            case 1:
                c = 4;
                break;
            case 2:
                c = 3;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    return c0521El;
                case 3:
                    str = str;
                    c0521El = new C0521El(str, i, i2);
                    c = 2;
                    break;
                case 4:
                    str = str;
                    c0521El = new C0521El(Integer.valueOf(Integer.parseInt(str)), i, i2);
                    c = 2;
                    break;
            }
        }
    }

    @Nullable
    private List<C0521El> A03(int i) throws JSONException {
        String key = null;
        Iterator<String> itKeys = null;
        JSONObject jSONObject = null;
        JSONArray jSONArray = null;
        ArrayList arrayList = new ArrayList();
        Map<Integer, String> mapA0X = this.A01.A0X();
        int deprecatedApiLevel = mapA0X != null ? 2 : 4;
        while (true) {
            switch (deprecatedApiLevel) {
                case 2:
                    mapA0X = mapA0X;
                    if (!mapA0X.isEmpty()) {
                        deprecatedApiLevel = 3;
                        break;
                    } else {
                        deprecatedApiLevel = 4;
                        break;
                    }
                case 3:
                    mapA0X = mapA0X;
                    if (!mapA0X.containsKey(Integer.valueOf(i))) {
                        deprecatedApiLevel = 4;
                        break;
                    } else {
                        deprecatedApiLevel = 5;
                        break;
                    }
                case 4:
                    return arrayList;
                case 5:
                    mapA0X = mapA0X;
                    jSONObject = new JSONObject(mapA0X.get(Integer.valueOf(i)));
                    itKeys = jSONObject.keys();
                    deprecatedApiLevel = 6;
                    break;
                case 6:
                    itKeys = itKeys;
                    if (!itKeys.hasNext()) {
                        deprecatedApiLevel = 4;
                        break;
                    } else {
                        deprecatedApiLevel = 7;
                        break;
                    }
                case 7:
                    jSONObject = jSONObject;
                    itKeys = itKeys;
                    key = itKeys.next();
                    jSONArray = jSONObject.getJSONArray(key);
                    if (jSONArray == null) {
                        deprecatedApiLevel = 6;
                        break;
                    } else {
                        deprecatedApiLevel = 8;
                        break;
                    }
                case 8:
                    jSONArray = jSONArray;
                    if (jSONArray.length() != 2) {
                        deprecatedApiLevel = 6;
                        break;
                    } else {
                        deprecatedApiLevel = 9;
                        break;
                    }
                case 9:
                    arrayList = arrayList;
                    key = key;
                    jSONArray = jSONArray;
                    int i2 = jSONArray.getInt(0);
                    int minApiLevel = jSONArray.getInt(1);
                    arrayList.add(A00(i, key, i2, minApiLevel));
                    deprecatedApiLevel = 6;
                    break;
            }
        }
    }

    @SuppressLint({"BadMethodUse-android.util.Log.e", "CatchGeneralException"})
    private final void A05() {
        try {
            JSONObject jsonObject = new JSONObject(this.A01.A0W());
            Integer timestamp = jsonObject.has(A02(0, 1, 62)) ? Integer.valueOf(jsonObject.getInt(A02(0, 1, 62))) : null;
            if (timestamp == null) {
                return;
            }
            this.A00 = timestamp.intValue();
            A06(jsonObject.getJSONArray(A02(1, 1, 14)));
        } catch (Throwable t) {
            BC.A03(t);
        }
    }

    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private void A06(JSONArray jSONArray) throws Exception {
        JSONArray jSONArray2;
        InterfaceC0442Bk interfaceC0442BkA01;
        Map<Integer, InterfaceC0442Bk> mapA02 = this.A05.A02();
        if (mapA02 == null) {
            return;
        }
        for (int i = 0; i < jSONArray.length() && (jSONArray2 = jSONArray.getJSONArray(i)) != null && jSONArray2.length() == 2; i++) {
            if ((jSONArray2.get(0) instanceof Integer) && (jSONArray2.get(1) instanceof Integer)) {
                int i2 = jSONArray2.getInt(0);
                int signalFlagsEncoded = jSONArray2.getInt(1);
                EnumSet<EnumC0525Ep> enumSetA02 = EnumC0525Ep.A02(signalFlagsEncoded);
                if (!A07(enumSetA02)) {
                    if (enumSetA02.contains(EnumC0525Ep.A07)) {
                        this.A02.A02(new C0519Ej(i2, enumSetA02, mapA02.get(Integer.valueOf(i2))));
                    } else {
                        List<C0521El> listA03 = null;
                        boolean z = false;
                        if (enumSetA02.contains(EnumC0525Ep.A08)) {
                            listA03 = A03(i2);
                            z = true;
                        }
                        if (mapA02.containsKey(Integer.valueOf(i2)) || z) {
                            if (z) {
                                interfaceC0442BkA01 = this.A05.A01(i2, listA03);
                            } else {
                                interfaceC0442BkA01 = mapA02.get(Integer.valueOf(i2));
                            }
                            C0519Ej c0519Ej = new C0519Ej(i2, enumSetA02, interfaceC0442BkA01);
                            if (enumSetA02.contains(EnumC0525Ep.A0A)) {
                                this.A03.A03(c0519Ej);
                            } else {
                                this.A04.A02(c0519Ej);
                            }
                        }
                    }
                }
            }
        }
    }

    private final boolean A07(EnumSet<EnumC0525Ep> enumSet) {
        boolean z = false;
        char c = enumSet.contains(this.A01.A0T()) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    enumSet = enumSet;
                    if (!enumSet.contains(EnumC0525Ep.A04)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    enumSet = enumSet;
                    if (!enumSet.contains(EnumC0525Ep.A05)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    enumSet = enumSet;
                    if (!enumSet.contains(EnumC0525Ep.A09)) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = true;
                    c = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    z = false;
                    c = 6;
                    break;
            }
        }
    }

    public final int A08() {
        return this.A00;
    }

    public final C0435Bd A09() {
        return this.A02;
    }

    public final C0436Be A0A() {
        return this.A03;
    }

    public final C0437Bf A0B() {
        return this.A04;
    }
}
