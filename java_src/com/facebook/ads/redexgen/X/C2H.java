package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import com.google.android.exoplayer2.C;
import com.tonyodev.fetch.FetchConst;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2H, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C2H extends C2G {
    private static byte[] A0C;
    private long A00;
    private Context A01;
    private C2Y A02;
    private C2Z A03;
    private AbstractC02162m A04;
    private KX A05;
    private M6 A06;
    private String A07;

    @Nullable
    private String A08;
    private String A09;
    private final String A0A = UUID.randomUUID().toString();
    private final AtomicBoolean A0B = new AtomicBoolean();

    static {
        A05();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ILLEGAL_STATE);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A0C = new byte[]{-45, -44, -43, -40, -35, -40, -29, -40, -34, -35, 15, 2, -2, 16, -19, 18, 9, -2, 54, 50, 39, 41, 43, 51, 43, 52, 58, 15, 42, 13, 5, 4, 9, 1, 20, 9, 15, 14, -28, 1, 20, 1, 40, -14, -27, -9, -31, -14, -28, -27, -28, -42, -23, -28, -27, -17, -63, -28, -60, -31, -12, -31, -62, -11, -18, -28, -20, -27, 24, 21, 40, 21, 54, 41, 59, 37, 54, 40, 41, 40, 35, 58, 45, 40, 41, 51, 89, 76, 94, 72, 89, 75, 58, 76, 89, 93, 76, 89, 60, 57, 51, 66, 75, 72, 68, 77, 83, 51, 78, 74, 68, 77, 28, 21, 16, 24, 28, 12, -16, 11, 57, 50, 47, 50, 51, 59, 50, -11, -9, -22, -23, -22, -21, -18, -13, -22, -23, -44, -9, -18, -22, -13, -7, -26, -7, -18, -12, -13, -48, -22, -2, 24, 11, 23, 27, 11, 25, 26, -6, 15, 19, 11, 21, 23, 23, 25, 32, 25, 38, 35, 33, 25, 40, 25, 38, 19, 38, 35, 40, 21, 40, 29, 35, 34};
    }

    private void A03() {
        C02784w.A00(this.A01).A06(this.A03, this.A03.A00());
    }

    private void A04() {
        if (this.A03 != null) {
            try {
                C02784w.A00(this.A01).A05(this.A03);
            } catch (Exception unused) {
            }
        }
    }

    private void A06(Intent intent) {
        C2H c2h = this;
        char c = ((C2G) c2h).A00 != -1 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c2h = c2h;
                    if (Settings.System.getInt(c2h.A01.getContentResolver(), A01(162, 22, 71), 0) == 1) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c2h = c2h;
                    intent = intent;
                    intent.putExtra(A01(127, 24, 24), ((C2G) c2h).A00);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c2h = c2h;
                    if (!K1.A0m(c2h.A01)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 6:
                    intent = intent;
                    intent.putExtra(A01(127, 24, 24), 6);
                    c = 4;
                    break;
            }
        }
    }

    private void A07(boolean z) {
        C2H c2h = this;
        char c = c2h.A06 == M6.A0B ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c2h = c2h;
                    c2h.A0A(z);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c2h = c2h;
                    if (c2h.A06 != M6.A0A) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c2h = c2h;
                    c2h.A09(z);
                    c = 3;
                    break;
                case 6:
                    c2h = c2h;
                    if (c2h.A06 != M6.A04) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c2h = c2h;
                    c2h.A0A(z);
                    c = 3;
                    break;
                case '\b':
                    c2h = c2h;
                    c2h.A08(z);
                    c = 3;
                    break;
            }
        }
    }

    private void A08(final boolean z) {
        C3D next = null;
        C0607Ht c0607Ht = new C0607Ht(this.A01);
        c0607Ht.A0c(this.A05);
        C02262w c02262w = (C02262w) this.A04;
        String strA01 = A01(120, 7, 87);
        Iterator<C3D> it = c02262w.A0K().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA01 = strA01;
                    it = it;
                    next = it.next();
                    String firstBundleRequestId = A01(120, 7, 87);
                    if (!firstBundleRequestId.equals(strA01)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    next = next;
                    strA01 = next.A0P();
                    c = 5;
                    break;
                case 5:
                    c0607Ht = c0607Ht;
                    next = next;
                    C3T.A02(c0607Ht, next);
                    c = 2;
                    break;
                case 6:
                    final C2H c2h = this;
                    final C2H c2h2 = this;
                    C2B c2b = new C2B(z) { // from class: com.facebook.ads.redexgen.X.2D
                        @Override // com.facebook.ads.redexgen.X.C2B
                        public final void A00() {
                            this.A00.A02.A6E(c2h2, AdError.CACHE_ERROR);
                        }

                        @Override // com.facebook.ads.redexgen.X.C2B
                        public final void A01(boolean z2) {
                            this.A00.A0B.set(true);
                            this.A00.A02.A6B(c2h2);
                        }
                    };
                    String firstBundleRequestId2 = A01(72, 14, 87);
                    c0607Ht.A0V(c2b, new C0600Hm(strA01, firstBundleRequestId2));
                    return;
            }
        }
    }

    private void A09(boolean z) {
        C3S.A02(this.A01, C3B.A01((C3D) this.A04), z, new C2E() { // from class: com.facebook.ads.redexgen.X.2F
            @Override // com.facebook.ads.redexgen.X.C2E
            public final void A60(AdError adError) {
                this.A00.A02.A6E(this, adError);
            }

            @Override // com.facebook.ads.redexgen.X.C2E
            public final void A61() {
                this.A00.A0B.set(true);
                this.A00.A02.A6B(this);
            }
        });
    }

    private void A0A(final boolean z) {
        final C2H c2h = this;
        C0607Ht c0607Ht = new C0607Ht(c2h.A01);
        c0607Ht.A0c(c2h.A05);
        C3D c3d = (C3D) c2h.A04;
        final C2H c2h2 = c2h;
        char c = TextUtils.isEmpty(c3d.A0H().A07()) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c2h = c2h;
                    c2h2 = c2h2;
                    c2h.A02.A6E(c2h2, AdError.INTERNAL_ERROR);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c2h = c2h;
                    c0607Ht = c0607Ht;
                    c3d = c3d;
                    c2h2 = c2h2;
                    C3T.A02(c0607Ht, c3d);
                    c0607Ht.A0V(new C2B(z) { // from class: com.facebook.ads.redexgen.X.2C
                        @Override // com.facebook.ads.redexgen.X.C2B
                        public final void A00() {
                            this.A00.A02.A6E(c2h2, AdError.CACHE_ERROR);
                        }

                        @Override // com.facebook.ads.redexgen.X.C2B
                        public final void A01(boolean z2) {
                            this.A00.A0B.set(true);
                            this.A00.A02.A6B(c2h2);
                        }
                    }, new C0600Hm(c3d.A0P(), A01(72, 14, 87)));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C2G
    public final int A0B() {
        C2H c2h = this;
        int iA0B = 0;
        char c = c2h.A04 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA0B = -1;
                    c = 3;
                    break;
                case 3:
                    return iA0B;
                case 4:
                    c2h = c2h;
                    iA0B = c2h.A04.A0B();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C2G
    public final boolean A0C() {
        C2H c2h = this;
        boolean z = false;
        Intent intent = null;
        char c = !c2h.A0B.get() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = false;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    c2h = c2h;
                    String strA03 = OQ.A03(((C2G) c2h).A01, c2h.A0A, c2h.A07);
                    c2h.A04.A08(((C2G) c2h).A01);
                    c2h.A04.A0E(strA03);
                    intent = new Intent(c2h.A01, (Class<?>) NQ.A03());
                    intent.putExtra(A01(10, 8, 44), c2h.A06);
                    intent.putExtra(A01(43, 25, 19), c2h.A04);
                    intent.putExtra(A01(112, 8, 58), c2h.A0A);
                    intent.putExtra(A01(86, 15, 122), strA03);
                    intent.putExtra(A01(18, 11, 89), c2h.A09);
                    intent.putExtra(A01(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 11, 57), c2h.A00);
                    intent.putExtra(A01(29, 13, 51), c2h.A08);
                    c2h.A06(intent);
                    if (!(c2h.A01 instanceof Activity)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    intent = intent;
                    intent.setFlags(intent.getFlags() | C.ENCODING_PCM_MU_LAW);
                    c = 6;
                    break;
                case 6:
                    c2h = c2h;
                    intent = intent;
                    intent.putExtra(A01(101, 11, 114), c2h.A04.A0C());
                    NQ.A06(c2h.A01, intent);
                    z = true;
                    c = 3;
                    break;
            }
        }
    }

    public final void A0D(Context context, C2Y c2y, Map<String, Object> map, boolean z, @Nullable String str, @Nullable String str2) {
        C2H c2h = this;
        String strA01 = null;
        c2h.A0B.set(false);
        c2h.A01 = context;
        c2h.A02 = c2y;
        c2h.A09 = (String) map.get(A01(18, 11, 89));
        c2h.A00 = ((Long) map.get(A01(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 11, 57))).longValue();
        c2h.A08 = str2;
        char c = c2h.A09 != null ? (char) 2 : (char) 11;
        while (true) {
            switch (c) {
                case 2:
                    c2h = c2h;
                    strA01 = c2h.A09.split(A01(42, 1, 92))[0];
                    c = 3;
                    break;
                case 3:
                    c2h = c2h;
                    context = context;
                    map = map;
                    str = str;
                    strA01 = strA01;
                    c2h.A07 = strA01;
                    c2h.A04 = AbstractC02162m.A00((JSONObject) map.get(A01(68, 4, 71)));
                    c2h.A04.A09(str);
                    c2h.A04.A07(((JK) map.get(A01(0, 10, 2))).A06());
                    c2h.A05 = new KX(c2h.A04.A0C(), AdEventManagerImpl.getInstance(context));
                    if (!TextUtils.isEmpty(c2h.A04.A0D())) {
                        c = 4;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 4:
                    if (Build.VERSION.SDK_INT < 21) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c2h = c2h;
                    c2h.A06 = M6.A04;
                    c = 6;
                    break;
                case 6:
                    C2H c2h2 = c2h;
                    c2h2.A03 = new C2Z(c2h2.A0A, c2h2, c2y);
                    c2h2.A03();
                    c2h2.A07(z);
                    return;
                case 7:
                    c2h = c2h;
                    switch (c2h.A04.A0A()) {
                        case 0:
                            c = '\n';
                            break;
                        case 1:
                            c = '\b';
                            break;
                        case 2:
                            c = '\t';
                            break;
                        default:
                            c = 6;
                            break;
                    }
                case '\b':
                    c2h = c2h;
                    c2h.A06 = M6.A0A;
                    c = 6;
                    break;
                case '\t':
                    c2h = c2h;
                    c2h.A06 = M6.A0C;
                    c = 6;
                    break;
                case '\n':
                    c2h = c2h;
                    c2h.A06 = M6.A0B;
                    c = 6;
                    break;
                case 11:
                    strA01 = A01(101, 0, 21);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final String A3P() {
        return this.A04.A0C();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC01851h
    public final void onDestroy() {
        A04();
    }
}
