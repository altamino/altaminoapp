package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class SY {
    private static byte[] A09;

    @Nullable
    private SX A00;
    private boolean A01 = true;
    private boolean A02;
    private final Context A03;
    private final KM A04;
    private final OP A05;
    private final InterfaceC03688m A06;
    private final C6K A07;
    private final String A08;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A09 = new byte[]{36, 51, 38, 37, 18, 19, 19, 8, 9, 36, 11, 14, 4, 12, 43, 14, 20, 19, 2, 9, 2, 21, 47, 24, 24, 5, 24, 74, 15, 18, 15, 9, 31, 30, 3, 4, 13, 74, 11, 9, 30, 3, 5, 4, 96, 87, 87, 74, 87, 5, 82, 77, 76, 73, 64, 5, 74, 85, 64, 75, 76, 75, 66, 5};
    }

    public SY(Context context, String str, C6K c6k, OP op, KM km, InterfaceC03688m interfaceC03688m) {
        this.A03 = context;
        this.A08 = str;
        this.A07 = c6k;
        this.A05 = op;
        this.A04 = km;
        this.A06 = interfaceC03688m;
    }

    public static void A04(@Nullable C6K c6k, OP op, KM km, C02292z c02292z, String str) {
        C1S c1sA01 = C1T.A01(IF.A00(), km, str, Uri.parse(c02292z.A04()), new SN().A04(c6k).A03(op).A07(), false, false);
        if (c1sA01 != null) {
            c1sA01.A09();
        }
    }

    private void A05(String str, String str2, Map<String, String> map) {
        this.A04.A4Z(str, map);
        C0745Ng.A00(new SV(this, map, str, str2), new SW(this, str, map), NR.A00());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(String str, String str2, Map<String, String> map) {
        if (K1.A1K(this.A03) && !this.A05.A07()) {
            return;
        }
        try {
            C1S adAction = C1T.A01(this.A03, this.A04, str, Uri.parse(str2), new SN(map).A04(this.A07).A03(this.A05).A07(), this.A01, this.A02);
            if (adAction != null) {
                adAction.A02();
            }
            if (this.A00 != null) {
                this.A00.A59();
            }
            this.A06.A2f(this.A08);
        } catch (ActivityNotFoundException e) {
            Log.e(A01(0, 22, 100), A01(44, 20, 38) + str2, e);
        } catch (Exception e2) {
            Log.e(A01(0, 22, 100), A01(22, 22, 105), e2);
        }
    }

    public final void A07(SX sx) {
        this.A00 = sx;
    }

    public final void A08(String str, String str2, Map<String, String> map) {
        SY sy = this;
        new KX(str, sy.A04).A02(KW.A0K, null);
        char c = sy.A05.A09(sy.A03) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    sy = sy;
                    str = str;
                    map = map;
                    sy.A04.A4C(str, map);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    sy = sy;
                    if (!K1.A1D(sy.A03)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    sy = sy;
                    str = str;
                    str2 = str2;
                    map = map;
                    sy.A05(str, str2, map);
                    c = 3;
                    break;
                case 6:
                    sy = sy;
                    str = str;
                    str2 = str2;
                    map = map;
                    sy.A06(str, str2, map);
                    c = 3;
                    break;
            }
        }
    }

    public final void A09(boolean z) {
        this.A02 = z;
    }

    public final void A0A(boolean z) {
        this.A01 = z;
    }

    public final boolean A0B() {
        return this.A01;
    }
}
