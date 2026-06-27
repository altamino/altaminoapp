package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1X, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C1X extends C1S {
    private static byte[] A02;
    public final C01831f A00;
    public final boolean A01;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 59);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{-70, -77, -81, -60, -77, -83, -62, -73, -69, -77, 0, -1, 1, 9, -3, 18, 7, 11, 3, -68, -27, -30, -36, -28, -103, -27, -24, -32, -32, -34, -35, 19, 25, 24, 7, 19, 17, 9};
    }

    public abstract void A0A();

    public C1X(Context context, KM km, String str, @Nullable C01831f c01831f, boolean z) {
        super(context, km, str);
        this.A00 = c01831f;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.X.C1S
    public final void A02() {
        if (this.A00 != null) {
            this.A00.A07(this.A02);
        }
        A0A();
    }

    public final void A0B(Map<String, String> userReturnDataMap, @Nullable C1R c1r) {
        C1X c1x = this;
        boolean zA02 = false;
        char c = !TextUtils.isEmpty(c1x.A02) ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c1x = c1x;
                    if (!(c1x instanceof C1Y)) {
                        c = '\t';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c1x = c1x;
                    userReturnDataMap = userReturnDataMap;
                    ((C1S) c1x).A01.A4X(c1x.A02, userReturnDataMap);
                    c = 4;
                    break;
                case 4:
                    c1x = c1x;
                    c1r = c1r;
                    zA02 = C1R.A02(c1r);
                    if (c1x.A00 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c1x = c1x;
                    c1r = c1r;
                    c1x.A00.A06(c1r);
                    if (!zA02) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c1x = c1x;
                    c1x.A00.A05();
                    c = 7;
                    break;
                case 7:
                    NV.A04(((C1S) c1x).A00, A00(19, 12, 62));
                    return;
                case '\b':
                    c1x = c1x;
                    HashMap map = new HashMap();
                    map.put(A00(0, 10, 19), Long.toString(-1L));
                    map.put(A00(10, 9, 99), Long.toString(-1L));
                    map.put(A00(31, 7, 105), C1R.A03.name());
                    ((C1S) c1x).A01.A4a(c1x.A02, map);
                    c = 7;
                    break;
                case '\t':
                    c1x = c1x;
                    userReturnDataMap = userReturnDataMap;
                    ((C1S) c1x).A01.A4J(c1x.A02, userReturnDataMap);
                    c = 4;
                    break;
            }
        }
    }
}
