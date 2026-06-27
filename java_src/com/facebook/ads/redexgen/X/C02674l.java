package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4l, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02674l {
    private static byte[] A03;

    @Nullable
    private KX A00;
    private final List<String> A02 = new ArrayList();
    private final List<String> A01 = new ArrayList();

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 100);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{7, -5, 8, -5, 1, -1, -7, -5, -2, -7, 10, 12, -1, 0, -1, 12, -1, 8, -3, -1, 13, -8, -7, -26, -9, -7, 48, 30, 31, 35, 24, 30, 29, 34, 14, 34, 20, 27, 20, 18, 35, 20, 19, 26, 24, 10, 23, 4, 15, 20, 26, 23, 19, 10, 30, 33, 39, 48, 38, 44, 29, 46, 20, 22, 34, 20, 30, 20, 40, 26, 26, 30, 35, 28, 20, 41, 29, 30, 40};
    }

    private C02674l() {
    }

    public C02674l(KX kx) {
        this.A00 = kx;
    }

    public final Map<String, String> A02() {
        HashMap map = new HashMap();
        map.put(A00(43, 12, 65), new JSONArray((Collection) this.A02).toString());
        map.put(A00(27, 16, 75), new JSONArray((Collection) this.A01).toString());
        return map;
    }

    public final void A03() {
        this.A02.clear();
        this.A01.clear();
    }

    public final void A04() {
        this.A02.add(A00(0, 21, 54));
        if (this.A00 != null) {
            this.A00.A02(KW.A0B, null);
        }
    }

    public final void A05() {
        this.A02.add(A00(21, 5, 33));
    }

    public final void A06() {
        this.A02.add(A00(59, 20, 81));
        if (this.A00 != null) {
            this.A00.A02(KW.A0C, null);
        }
    }

    public final void A07(int i) {
        this.A01.add(String.valueOf(i));
    }

    public final void A08(EnumC02664k enumC02664k) {
        this.A02.add(enumC02664k.A02() + A00(55, 4, 94));
        if (this.A00 != null) {
            this.A00.A02(KW.A09, null);
        }
    }

    public final void A09(EnumC02664k enumC02664k, int i) {
        this.A02.add(enumC02664k.A02() + A00(26, 1, 109) + i);
    }

    public final boolean A0A() {
        C02674l c02674l = this;
        boolean z = false;
        char c = c02674l.A02.isEmpty() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c02674l = c02674l;
                    if (!c02674l.A01.isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
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
