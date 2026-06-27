package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1s, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C01961s implements InterfaceC01851h {
    private static byte[] A08;
    private static final String A09;
    private Context A00;
    private InterfaceC01911n A01;
    private C2K A02;

    @Nullable
    private KM A03;

    @Nullable
    private InterfaceC01921o A04;

    @Nullable
    private SI A05;
    private String A06;
    private Map<String, Object> A07;

    private static String A05(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 11);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A08 = new byte[]{83, 82, 81, 94, 89, 94, 67, 94, 88, 89, 112, 117, 96, 117, 32, 33, 51, 120, 109, 35, 50, 47, 35, 120, 63, 35, 58, 59};
    }

    static {
        A06();
        A09 = C01961s.class.getSimpleName();
    }

    private void A07(JK jk) {
        final C01961s c01961s = this;
        final C2I c2iA00 = C2I.A00((JSONObject) c01961s.A07.get(A05(10, 4, 31)));
        c01961s.A06 = c2iA00.A3P();
        char c = C1W.A03(c01961s.A00, c2iA00, c01961s.A03) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c01961s = c01961s;
                    c01961s.A01.A4x(c01961s, AdError.internalError(2006));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c01961s = c01961s;
                    jk = jk;
                    c2iA00 = c2iA00;
                    c01961s.A04 = new C01931p() { // from class: com.facebook.ads.redexgen.X.1q
                        private static byte[] A02;

                        static {
                            A01();
                        }

                        private static String A00(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                            int i4 = 0;
                            char c2 = 2;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        bArrCopyOfRange = bArrCopyOfRange;
                                        if (i4 >= bArrCopyOfRange.length) {
                                            c2 = 4;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 3:
                                        bArrCopyOfRange = bArrCopyOfRange;
                                        bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
                                        i4++;
                                        c2 = 2;
                                        break;
                                    case 4:
                                        return new String(bArrCopyOfRange);
                                }
                            }
                        }

                        private static void A01() {
                            A02 = new byte[]{23, 68, 68, 65, 68, -14, 55, 74, 55, 53, 71, 70, 59, 64, 57, -14, 51, 53, 70, 59, 65, 64, 40, 36, 35, 38};
                        }

                        @Override // com.facebook.ads.redexgen.X.C01931p, com.facebook.ads.redexgen.X.InterfaceC01921o
                        public final void A52(String str, Map<String, String> map) {
                            C01941q c01941q = this;
                            Uri uri = Uri.parse(str);
                            char c2 = A00(22, 4, 108).equals(uri.getScheme()) ? (char) 2 : (char) 5;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        uri = uri;
                                        if (!C1T.A04(uri.getAuthority())) {
                                            c2 = 5;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 3:
                                        c01941q = c01941q;
                                        if (c01941q.A00.A01 == null) {
                                            c2 = 5;
                                            break;
                                        } else {
                                            c2 = 4;
                                            break;
                                        }
                                    case 4:
                                        c01941q = c01941q;
                                        c01941q.A00.A01.A4v(c01941q.A00);
                                        c2 = 5;
                                        break;
                                    case 5:
                                        C01941q c01941q2 = c01941q;
                                        C1S c1sA00 = C1T.A00(c01941q2.A00.A00, c01941q2.A00.A03, c2iA00.A3P(), uri, map);
                                        if (c1sA00 != null) {
                                            try {
                                                c1sA00.A02();
                                                return;
                                            } catch (Exception e) {
                                                Log.e(C01961s.A09, A00(0, 22, 124), e);
                                                return;
                                            }
                                        }
                                        return;
                                }
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.C01931p, com.facebook.ads.redexgen.X.InterfaceC01921o
                        public final void A5R() {
                            if (this.A00.A02 == null) {
                                return;
                            }
                            this.A00.A02.A02();
                        }

                        @Override // com.facebook.ads.redexgen.X.C01931p, com.facebook.ads.redexgen.X.InterfaceC01921o
                        public final void A5v() {
                            this.A00.A02.A07();
                        }
                    };
                    c01961s.A05 = new SI(c01961s.A00, new WeakReference(c01961s.A04), jk.A04());
                    c01961s.A05.A0B(jk.A07(), jk.A08());
                    c01961s.A02 = new C2K(c01961s.A00, c01961s.A03, c01961s.A05, c01961s.A05.getViewabilityChecker(), new AbstractC01881k() { // from class: com.facebook.ads.redexgen.X.1r
                        @Override // com.facebook.ads.redexgen.X.AbstractC01881k
                        public final void A01() {
                            if (this.A00.A01 == null) {
                                return;
                            }
                            this.A00.A01.A4y(this.A00);
                        }
                    });
                    c01961s.A02.A08(c2iA00);
                    c01961s.A05.loadDataWithBaseURL(C0778On.A00(), c2iA00.A04(), A05(19, 9, 92), A05(14, 5, 94), null);
                    if (c01961s.A01 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c01961s = c01961s;
                    c01961s.A01.A4w(c01961s, c01961s.A05);
                    c = 3;
                    break;
            }
        }
    }

    public final void A08(Context context, KM km, LV lv, InterfaceC01911n interfaceC01911n, Map<String, Object> map) {
        this.A00 = context;
        this.A03 = km;
        this.A01 = interfaceC01911n;
        this.A07 = map;
        A07((JK) this.A07.get(A05(0, 10, 60)));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final String A3P() {
        return this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final AdPlacementType A3d() {
        return AdPlacementType.BANNER;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final void onDestroy() {
        if (this.A05 != null) {
            this.A05.destroy();
            this.A05 = null;
            this.A04 = null;
        }
    }
}
