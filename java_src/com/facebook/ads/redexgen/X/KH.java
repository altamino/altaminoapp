package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class KH {
    private static byte[] A08;
    private final double A00;
    private final double A01 = System.currentTimeMillis() / 1000.0d;
    private final KR A02;
    private final KS A03;
    private final String A04;
    private final String A05;
    private final Map<String, String> A06;
    private final boolean A07;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 14);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A08 = new byte[]{56, 37, 62, 48, 62, 57, 54, 59, 8, 52, 59, 62, 50, 57, 35, 8, 35, 56, 60, 50, 57, 71, 72, 71, 74, 73, 65, 23, 12, 11, 17, 8, 0, 59, 13, 10, 7, 8, 17, 0, 1, 59, 13, 10, 59, 2, 17, 10, 10, 1, 8};
    }

    public KH(String str, double d, String str2, Map<String, String> map, KR kr, KS ks, boolean z, boolean z2) {
        this.A05 = str;
        this.A00 = d;
        this.A04 = str2;
        this.A02 = kr;
        this.A03 = ks;
        this.A07 = z;
        HashMap map2 = new HashMap();
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        if (z2) {
            map2.put(A00(27, 24, 106), String.valueOf(z2));
        }
        String strA01 = KZ.A01(str);
        if (!TextUtils.isEmpty(strA01) && (z2 || ks == KS.A0A)) {
            map2.put(A00(0, 21, 89), strA01);
        }
        if (A0B()) {
            map2.put(A00(21, 6, 40), C0760Nv.A01(JE.A02()));
        }
        this.A06 = A01(map2);
    }

    private static Map<String, String> A01(Map<String, String> cleansedMap) {
        String key = null;
        String value = null;
        HashMap map = new HashMap();
        Iterator<Map.Entry<String, String>> it = cleansedMap.entrySet().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    Map.Entry<String, String> entry = it.next();
                    key = entry.getKey();
                    value = entry.getValue();
                    if (value == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    map = map;
                    key = key;
                    value = value;
                    map.put(key, value);
                    c = 2;
                    break;
                case 5:
                    return map;
            }
        }
    }

    public final double A03() {
        return this.A00;
    }

    public final double A04() {
        return this.A01;
    }

    public final KR A05() {
        return this.A02;
    }

    public final KS A06() {
        return this.A03;
    }

    public final String A07() {
        return this.A04;
    }

    public final String A08() {
        return this.A05;
    }

    public final Map<String, String> A09() {
        return this.A06;
    }

    public final boolean A0A() {
        boolean z = false;
        char c = !TextUtils.isEmpty(this.A05) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0B() {
        boolean z = false;
        char c = this.A02 == KR.A04 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
