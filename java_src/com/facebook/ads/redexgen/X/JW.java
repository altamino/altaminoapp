package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class JW implements JU, JV {
    private static byte[] A01;
    private final Context A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{104, 29, 118, 114, 29, 96, 95, 95, 92, 29, 98, 95, 69, 68, 89, 94, 87, 29, 100, 95, 91, 85, 94, 62, 56, 46, 57, 102, 42, 44, 46, 37, 63};
    }

    public JW(Context context) {
        this.A00 = context;
    }

    @Override // com.facebook.ads.redexgen.X.JU, com.facebook.ads.redexgen.X.JV
    public final Map<String, String> A3A(boolean z) {
        HashMap map = new HashMap();
        if (!AQ.A00().A03()) {
            map.put(A00(0, 23, 57), Jn.A00().A02(this.A00.getApplicationContext(), true).A3k());
        }
        map.put(A00(23, 10, 66), C0657Js.A06(new JF(this.A00), this.A00, z));
        return map;
    }
}
