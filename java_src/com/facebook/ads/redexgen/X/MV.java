package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.settings.AdInternalSettings;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class MV implements MU {
    private static byte[] A00;

    static {
        A01();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 75);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{65, 65, 65, 92, 52, 40, 40, 44, 92, 46, 25, 15, 12, 19, 18, 15, 25, 92, 65, 65, 65, 67, 111, 110, 116, 101, 110, 116, 58, 10, 39, 0, 21, 0, 1, 7, 78, 84, 57, 73, 101, 100, 126, 111, 100, 126, 48, 42, 2, 2, 2, 31, 119, 107, 107, 111, 31, 109, 90, 78, 74, 90, 76, 75, 31, 2, 2, 2, 43, 28, 26, 28, 16, 15, 28, 89, 12, 11, 21, 67, 89, 30};
    }

    private void A02(Map<String, List<String>> map) {
        MV mv = this;
        String next = null;
        Iterator<String> it = null;
        Iterator<String> it2 = null;
        char c = map != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    map = map;
                    it = map.keySet().iterator();
                    c = 3;
                    break;
                case 3:
                    it = it;
                    if (!it.hasNext()) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    map = map;
                    it = it;
                    next = it.next();
                    it2 = map.get(next).iterator();
                    c = 5;
                    break;
                case 5:
                    it2 = it2;
                    if (!it2.hasNext()) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    mv = mv;
                    next = next;
                    it2 = it2;
                    mv.A47(next + A00(81, 1, 111) + it2.next());
                    c = 5;
                    break;
                case 7:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.MU
    public final boolean A3y() {
        return AdInternalSettings.isDebugBuild();
    }

    @Override // com.facebook.ads.redexgen.X.MU
    public final void A47(String str) {
        System.out.println(str);
    }

    @Override // com.facebook.ads.redexgen.X.MU
    public final void A4Q(HttpURLConnection httpURLConnection, Object obj) throws IOException {
        A47(A00(48, 20, 116));
        A47(httpURLConnection.getRequestMethod() + A00(38, 1, 82) + httpURLConnection.getURL().toString());
        if (obj instanceof String) {
            A47(A00(39, 9, 65) + ((String) obj));
        }
        A02(httpURLConnection.getRequestProperties());
    }

    @Override // com.facebook.ads.redexgen.X.MU
    public final void A4R(C0716Mc c0716Mc) {
        if (c0716Mc != null) {
            A47(A00(0, 21, 55));
            A47(A00(68, 13, 50) + c0716Mc.A02());
            A47(A00(30, 8, 63) + c0716Mc.A00());
            A02(c0716Mc.A03());
            A47(A00(21, 9, 75) + c0716Mc.A01());
        }
    }
}
