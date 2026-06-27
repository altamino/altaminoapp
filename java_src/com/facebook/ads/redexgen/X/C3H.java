package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
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
/* renamed from: com.facebook.ads.redexgen.X.3H, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C3H implements C3M {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ENQUEUE_ERROR);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-59, -59, -59, -88, -48, -36, -36, -40, -88, -38, -19, -5, -8, -9, -10, -5, -19, -88, -59, -59, -59, -55, -11, -12, -6, -21, -12, -6, -64, -112, -5, 28, 9, 28, 29, 27, -30, -56, -23, -68, -24, -25, -19, -34, -25, -19, -77, -103, -58, -58, -58, -87, -47, -35, -35, -39, -87, -37, -18, -6, -2, -18, -4, -3, -87, -58, -58, -58, 54, 73, 71, 73, 77, 90, 73, 4, 89, 86, 80, 30, 4, -47};
    }

    private void A02(Map<String, List<String>> map) {
        C3H c3h = this;
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
                    c3h = c3h;
                    next = next;
                    it2 = it2;
                    c3h.A47(next + A00(81, 1, 34) + it2.next());
                    c = 5;
                    break;
                case 7:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final boolean A3y() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final void A47(String str) {
        System.out.println(str);
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final void A4Q(HttpURLConnection httpURLConnection, Object obj) throws IOException {
        A47(A00(48, 20, 20));
        A47(httpURLConnection.getRequestMethod() + A00(38, 1, 84) + httpURLConnection.getURL().toString());
        if (obj instanceof String) {
            A47(A00(39, 9, 4) + ((String) obj));
        }
        A02(httpURLConnection.getRequestProperties());
    }

    @Override // com.facebook.ads.redexgen.X.C3M
    public final void A4S(C5e c5e) {
        if (c5e != null) {
            A47(A00(0, 21, 19));
            A47(A00(68, 13, 111) + c5e.getUrl());
            A47(A00(30, 8, 51) + c5e.A3m());
            A02(c5e.A3X());
            A47(A00(21, 9, 17) + c5e.A3H());
        }
    }
}
