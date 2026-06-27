package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tf, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0900Tf {
    private C0900Tf() {
    }

    public static TT A00(T0 t0, int i, C02282y c02282y, String str, UA ua) {
        TT c0901Tg = null;
        char c = i == 1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    t0 = t0;
                    c02282y = c02282y;
                    str = str;
                    ua = ua;
                    c0901Tg = new C0901Tg(t0, c02282y, str, ua);
                    c = 3;
                    break;
                case 3:
                    return c0901Tg;
                case 4:
                    t0 = t0;
                    c02282y = c02282y;
                    str = str;
                    ua = ua;
                    c0901Tg = new TU(t0, c02282y, str, ua);
                    c = 3;
                    break;
            }
        }
    }
}
