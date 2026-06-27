package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3m, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02423m extends C3Z {
    private static byte[] A00;

    static {
        A05();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 42);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A00 = new byte[]{23, 22, 31, 18, 10, 66, 71, 3, 74, 80, 3, 77, 76, 87, 3, 81, 70, 66, 71, 90, 3, 76, 81, 3, 66, 79, 81, 70, 66, 71, 90, 3, 71, 74, 80, 83, 79, 66, 90, 70, 71};
    }

    public C02423m(Context context, C3V c3v) {
        super(context, c3v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A02(long j) {
        HashMap map = new HashMap();
        map.put(A01(0, 5, 89), String.valueOf(System.currentTimeMillis() - j));
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08(List<String> list, Map<String, String> map) {
        C02423m c02423m = this;
        Iterator<String> it = null;
        char c = list != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    list = list;
                    if (!list.isEmpty()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    list = list;
                    it = list.iterator();
                    c = 5;
                    break;
                case 5:
                    it = it;
                    if (!it.hasNext()) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c02423m = c02423m;
                    map = map;
                    it = it;
                    new AsyncTaskC0782Or(c02423m.A0C, map).execute(it.next());
                    c = 5;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    @Nullable
    public final LQ A0M() {
        C02423m c02423m = this;
        LQ lq = null;
        char c = c02423m.A08.A02 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02423m = c02423m;
                    if (c02423m.A08.A02 == EnumC0685Kv.A05) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c02423m = c02423m;
                    if (!c02423m.A0K()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return lq;
                case 5:
                    lq = new LQ(AdErrorType.CLEAR_TEXT_SUPPORT_NOT_ALLOWED, A01(41, 0, 81));
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0N() {
        AnonymousClass29 anonymousClass29 = (AnonymousClass29) this.A02;
        if (!anonymousClass29.A0g()) {
            throw new IllegalStateException(A01(5, 36, 9));
        }
        this.A07.A0B(anonymousClass29);
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0O(InterfaceC01851h interfaceC01851h, JJ jj, final JH jh, final Map<String, Object> map) {
        final AnonymousClass29 anonymousClass29 = (AnonymousClass29) interfaceC01851h;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final AnonymousClass27 anonymousClass27 = new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.3k
            private static byte[] A05;

            static {
                A01();
            }

            private static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 30);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A05 = new byte[]{93, 74, 74, 87, 74, 75, 86, 82, 90, 80, 74, 75, 105, 117, 31, 1, 21};
            }

            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                this.A02.A0H(map);
                this.A02.A0D(anonymousClass29);
                Map mapA02 = this.A02.A02(jCurrentTimeMillis);
                mapA02.put(A00(0, 5, 38), A00(12, 2, 90));
                mapA02.put(A00(14, 3, 108), A00(5, 7, 33));
                this.A02.A08(jh.A04(JL.A04), mapA02);
                this.A02.A0C();
            }
        };
        A06().postDelayed(anonymousClass27, jj.A05().A05());
        anonymousClass29.A0W(this.A0C, new C2X() { // from class: com.facebook.ads.redexgen.X.3l
            private static byte[] A07;
            public boolean A02 = false;
            public boolean A01 = false;
            public boolean A00 = false;

            static {
                A01();
            }

            private static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 78);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A07 = new byte[]{68, 83, 83, 78, 83, 0, 30, 10};
            }

            @Override // com.facebook.ads.redexgen.X.C2X
            public final void A5n(AnonymousClass29 anonymousClass292) {
                C02413l c02413l = this;
                char c = !c02413l.A00 ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            c02413l = c02413l;
                            c02413l.A00 = true;
                            c02413l.A04.A08(jh.A04(JL.A02), null);
                            c = 3;
                            break;
                        case 3:
                            c02413l = c02413l;
                            if (c02413l.A04.A07 == null) {
                                c = 5;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            c02413l = c02413l;
                            c02413l.A04.A07.A0D();
                            c = 5;
                            break;
                        case 5:
                            return;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2X
            public final void A5o(AnonymousClass29 anonymousClass292) {
                C02413l c02413l = this;
                char c = anonymousClass292 != c02413l.A04.A01 ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            return;
                        case 3:
                            c02413l = c02413l;
                            anonymousClass292 = anonymousClass292;
                            c02413l.A04.A06().removeCallbacks(anonymousClass27);
                            c02413l.A04.A02 = anonymousClass292;
                            super/*com.facebook.ads.redexgen.X.3Z*/.A09();
                            c02413l.A04.A07.A0G(anonymousClass292);
                            if (!c02413l.A02) {
                                c = 4;
                                break;
                            } else {
                                c = 2;
                                break;
                            }
                        case 4:
                            c02413l = c02413l;
                            c02413l.A02 = true;
                            c02413l.A04.A08(jh.A04(JL.A04), c02413l.A04.A02(jCurrentTimeMillis));
                            c = 2;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2X
            public final void A5p(AnonymousClass29 anonymousClass292) {
                if (!this.A01) {
                    this.A01 = true;
                    this.A04.A08(jh.A04(JL.A03), null);
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2X
            public final void A5r(AnonymousClass29 anonymousClass292, LQ lq) {
                C02413l c02413l = this;
                char c = anonymousClass292 != c02413l.A04.A01 ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            return;
                        case 3:
                            c02413l = c02413l;
                            anonymousClass292 = anonymousClass292;
                            c02413l.A04.A06().removeCallbacks(anonymousClass27);
                            c02413l.A04.A0D(anonymousClass292);
                            if (!c02413l.A02) {
                                c = 4;
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 4:
                            c02413l = c02413l;
                            lq = lq;
                            c02413l.A02 = true;
                            Map mapA02 = c02413l.A04.A02(jCurrentTimeMillis);
                            mapA02.put(A00(0, 5, 111), String.valueOf(lq.A04().getErrorCode()));
                            mapA02.put(A00(5, 3, 35), String.valueOf(lq.A05()));
                            c02413l.A04.A08(jh.A04(JL.A04), mapA02);
                            c = 5;
                            break;
                        case 5:
                            c02413l = c02413l;
                            c02413l.A04.A0C();
                            c = 2;
                            break;
                    }
                }
            }
        }, this.A09, map, L8.A0G());
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0P(String str) {
        C02423m c02423m = this;
        LQ lqA01 = C02363g.A01(c02423m.A0C, 0, 1);
        char c = lqA01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02423m = c02423m;
                    lqA01 = lqA01;
                    c02423m.A5G(lqA01);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c02423m = c02423m;
                    str = str;
                    super.A0P(str);
                    c = 3;
                    break;
            }
        }
    }
}
