package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3K, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C3K {
    private static byte[] A04;

    @Nullable
    private C0607Ht A00;
    private SO A01 = SO.A05;
    private final AnonymousClass31 A02;
    private final AnonymousClass25 A03;

    static {
        A05();
    }

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 61);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A04 = new byte[]{-27, -26, -25, -22, -17, -22, -11, -22, -16, -17, -28, -25, -30, -25, -28, -9, -28, -30, -27, -8, -15, -25, -17, -24, -60, -23, -17, -32, -19, -23, -36, -25, -101, -64, -19, -19, -22, -19, -101, -83, -85, -85, -79, -101, -14, -28, -17, -29, -22, -16, -17, -101, -36, -101, -15, -36, -25, -28, -33, -101, -68, -33, -60, -23, -31, -22, -87, 13, 10, 29, 10, 35, 40, 46, 31, 44, 45, 46, 35, 46, 35, 27, 38, -4, 11, 4, 114, -84, -72, -79, -80};
    }

    public C3K(Context context, Map<String, Object> map, AnonymousClass25 anonymousClass25, @Nullable String str) {
        this.A02 = A01(context, map, str, (JSONObject) map.get(A04(67, 4, 108)));
        this.A03 = anonymousClass25;
    }

    @Nullable
    private AdError A00(Context context) {
        AdError adErrorInternalError = null;
        char c = this.A02.A0H().isEmpty() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    P7.A07(context, A04(83, 3, 94), P8.A0N, new PA(A04(24, 43, 62)));
                    adErrorInternalError = AdError.internalError(2006);
                    c = 3;
                    break;
                case 3:
                    return adErrorInternalError;
                case 4:
                    adErrorInternalError = null;
                    c = 3;
                    break;
            }
        }
    }

    private static AnonymousClass31 A01(Context context, Map<String, Object> map, @Nullable String str, JSONObject jSONObject) {
        AnonymousClass31 adDataBundle = AnonymousClass31.A00(jSONObject, context);
        adDataBundle.A0L(str);
        JK jk = (JK) map.get(A04(0, 10, 68));
        if (jk != null) {
            adDataBundle.A0J(jk.A06());
        }
        return adDataBundle;
    }

    private C0607Ht A03(Context context) {
        C3K c3k = this;
        C0607Ht c0607Ht = null;
        char c = c3k.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3k = c3k;
                    c0607Ht = c3k.A00;
                    c = 3;
                    break;
                case 3:
                    return c0607Ht;
                case 4:
                    context = context;
                    c0607Ht = new C0607Ht(context);
                    c = 3;
                    break;
            }
        }
    }

    private void A06(Context context, EnumSet<CacheFlag> enumSet) {
        SO soA0A = null;
        C3B c3bA00 = C3B.A00(this.A02);
        C3A c3aA05 = c3bA00.A06().A05();
        char c = c3aA05 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3aA05 = c3aA05;
                    soA0A = c3aA05.A0A();
                    c = 3;
                    break;
                case 3:
                    final C3K c3k = this;
                    c3k.A08(soA0A);
                    C3S.A02(context, c3bA00, true, new C2E() { // from class: com.facebook.ads.redexgen.X.3J
                        @Override // com.facebook.ads.redexgen.X.C2E
                        public final void A60(AdError adError) {
                            this.A00.A03.A4k(AdError.CACHE_ERROR);
                        }

                        @Override // com.facebook.ads.redexgen.X.C2E
                        public final void A61() {
                            this.A00.A03.A4l();
                        }
                    });
                    return;
                case 4:
                    soA0A = SO.A05;
                    c = 3;
                    break;
            }
        }
    }

    private void A07(Context context, EnumSet<CacheFlag> enumSet) {
        EnumSet<CacheFlag> enumSet2 = enumSet;
        C3K c3k = this;
        Iterator<AnonymousClass32> it = null;
        int i = 0;
        C0603Hp c0603Hp = null;
        C0605Hr c0605Hr = null;
        AnonymousClass32 next = null;
        Iterator<String> it2 = null;
        boolean zContains = false;
        C0607Ht c0607HtA03 = c3k.A03(context);
        c0607HtA03.A0c(new KX(c3k.A02.A0D(), AdEventManagerImpl.getInstance(context)));
        char c = !TextUtils.isEmpty(c3k.A02.A0E()) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c3k = c3k;
                    c0607HtA03 = c0607HtA03;
                    C0605Hr c0605Hr2 = new C0605Hr(c3k.A02.A0E(), c3k.A02.A0G(), A04(71, 12, 125));
                    c0605Hr2.A03 = true;
                    c0605Hr2.A02 = A04(86, 5, 7);
                    c0607HtA03.A0Y(c0605Hr2);
                    c = 3;
                    break;
                case 3:
                    c3k = c3k;
                    enumSet2 = enumSet2;
                    c0607HtA03 = c0607HtA03;
                    c0607HtA03.A0X(new C0603Hp(c3k.A02.A0B().A01(), U6.A03, U6.A03, c3k.A02.A0G(), A04(71, 12, 125)));
                    zContains = enumSet2.contains(CacheFlag.VIDEO);
                    i = 0;
                    it = c3k.A02.A0H().iterator();
                    c = 4;
                    break;
                case 4:
                    it = it;
                    if (!it.hasNext()) {
                        c = 17;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c3k = c3k;
                    it = it;
                    next = it.next();
                    c0603Hp = new C0603Hp(next.A03().A06(), C3N.A00(next.A03()), C3N.A01(next.A03()), c3k.A02.A0G(), A04(71, 12, 125));
                    if (i != 0) {
                        c = 16;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0607HtA03 = c0607HtA03;
                    c0603Hp = c0603Hp;
                    c0607HtA03.A0W(c0603Hp);
                    c = 7;
                    break;
                case 7:
                    next = next;
                    it2 = next.A06().A01().iterator();
                    c = '\b';
                    break;
                case '\b':
                    it2 = it2;
                    if (!it2.hasNext()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c3k = c3k;
                    c0607HtA03 = c0607HtA03;
                    it2 = it2;
                    c0607HtA03.A0X(new C0603Hp(it2.next(), -1, -1, c3k.A02.A0G(), A04(71, 12, 125)));
                    c = '\b';
                    break;
                case '\n':
                    if (!zContains) {
                        c = 14;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    next = next;
                    if (!TextUtils.isEmpty(next.A03().A07())) {
                        c = '\f';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case '\f':
                    c3k = c3k;
                    next = next;
                    c0605Hr = new C0605Hr(next.A03().A07(), c3k.A02.A0G(), A04(71, 12, 125));
                    c0605Hr.A03 = false;
                    if (i != 0) {
                        c = 15;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c0607HtA03 = c0607HtA03;
                    c0605Hr = c0605Hr;
                    c0607HtA03.A0a(c0605Hr);
                    c = 14;
                    break;
                case 14:
                    i++;
                    c = 4;
                    break;
                case 15:
                    c0607HtA03 = c0607HtA03;
                    c0605Hr = c0605Hr;
                    c0607HtA03.A0Z(c0605Hr);
                    c = 14;
                    break;
                case 16:
                    c0607HtA03 = c0607HtA03;
                    c0603Hp = c0603Hp;
                    c0607HtA03.A0X(c0603Hp);
                    c = 7;
                    break;
                case 17:
                    final C3K c3k2 = c3k;
                    c0607HtA03.A0V(new AnonymousClass20() { // from class: com.facebook.ads.redexgen.X.3I
                        private void A00(boolean z) {
                            C3I c3i = this;
                            char c2 = z ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        c3i = c3i;
                                        c3i.A00.A03.A4l();
                                        c2 = 3;
                                        break;
                                    case 3:
                                        return;
                                    case 4:
                                        c3i = c3i;
                                        c3i.A00.A03.A4k(AdError.CACHE_ERROR);
                                        c2 = 3;
                                        break;
                                }
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.AnonymousClass20
                        public final void A50() {
                            A00(false);
                        }

                        @Override // com.facebook.ads.redexgen.X.AnonymousClass20
                        public final void A57() {
                            A00(true);
                        }
                    }, new C0600Hm(c3k2.A02.A0G(), A04(71, 12, 125)));
                    return;
            }
        }
    }

    private void A08(SO so) {
        this.A01 = so;
    }

    public final M6 A09() {
        C3K c3k = this;
        M6 m6 = null;
        int i = 0;
        char c = !TextUtils.isEmpty(c3k.A02.A0E()) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 21) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    m6 = M6.A03;
                    c = 4;
                    break;
                case 4:
                    return m6;
                case 5:
                    c3k = c3k;
                    if (c3k.A02.A0H().size() <= 1) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    m6 = M6.A06;
                    c = 4;
                    break;
                case 7:
                    c3k = c3k;
                    i = 0;
                    if (c3k.A02.A0H().get(0).A03().A05() == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    m6 = M6.A08;
                    c = 4;
                    break;
                case '\t':
                    c3k = c3k;
                    if (!TextUtils.isEmpty(c3k.A02.A0H().get(i).A03().A07())) {
                        c = '\n';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case '\n':
                    m6 = M6.A09;
                    c = 4;
                    break;
                case 11:
                    m6 = M6.A07;
                    c = 4;
                    break;
            }
        }
    }

    public final SO A0A() {
        return this.A01;
    }

    public final String A0B() {
        return this.A02.A0D();
    }

    public final void A0C() {
        this.A03.A7D();
    }

    public final void A0D(Context context, EnumSet<CacheFlag> enumSet) {
        C3K c3k = this;
        AdError adErrorA00 = c3k.A00(context);
        char c = adErrorA00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3k = c3k;
                    adErrorA00 = adErrorA00;
                    c3k.A03.A4k(adErrorA00);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c3k = c3k;
                    c3k.A03.A6o();
                    if (c3k.A09() != M6.A08) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c3k = c3k;
                    context = context;
                    enumSet = enumSet;
                    c3k.A06(context, enumSet);
                    c = 3;
                    break;
                case 6:
                    c3k = c3k;
                    context = context;
                    enumSet = enumSet;
                    c3k.A07(context, enumSet);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0E(Intent intent, RewardData rewardData, String str) {
        this.A02.A0K(rewardData);
        this.A02.A0M(str);
        intent.putExtra(A04(10, 14, 70), this.A02);
    }
}
