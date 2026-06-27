package com.facebook.ads.internal.logging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.redexgen.X.AsyncTaskC0782Or;
import com.facebook.ads.redexgen.X.C0665Ka;
import com.facebook.ads.redexgen.X.IP;
import com.facebook.ads.redexgen.X.KG;
import com.facebook.ads.redexgen.X.KH;
import com.facebook.ads.redexgen.X.KL;
import com.facebook.ads.redexgen.X.KM;
import com.facebook.ads.redexgen.X.KN;
import com.facebook.ads.redexgen.X.KO;
import com.facebook.ads.redexgen.X.KQ;
import com.facebook.ads.redexgen.X.KR;
import com.facebook.ads.redexgen.X.KS;
import com.facebook.ads.redexgen.X.KU;
import com.facebook.ads.redexgen.X.KW;
import com.facebook.ads.redexgen.X.KZ;
import com.facebook.ads.redexgen.X.O2;
import com.facebook.ads.redexgen.X.O4;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class AdEventManagerImpl implements KM {
    private static double A04;

    @SuppressLint({"StaticFieldLeak"})
    @Nullable
    private static KM A05;
    private static String A06;
    private static byte[] A07;
    private static final String A08;
    private static volatile boolean A09;

    @Nullable
    private KQ A00;
    private final Context A01;
    private final IP A02;
    private final KL A03;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 40);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A07 = new byte[]{84, 17, 2, 17, 26, 0, 90, 17, 36, 36, 53, 61, 32, 36, 57, 62, 55, 112, 36, 63, 112, 60, 63, 55, 112, 49, 62, 112, 57, 62, 38, 49, 60, 57, 52, 112};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.KM
    public final void A48(String str, Map<String, String> map) {
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A03).A06(false).A08());
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4B(String str, Map<String, String> map) {
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A05).A06(false).A08());
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4a(String str, Map<String, String> map) {
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A04).A02(KS.A0O).A06(true).A08());
    }

    static {
        A03();
        A08 = AdEventManagerImpl.class.getSimpleName();
        A09 = false;
    }

    private AdEventManagerImpl(Context context) {
        this.A01 = context.getApplicationContext();
        this.A02 = new IP(context);
        this.A03 = new KL(context, new KU(context, this.A02));
        O4.A07.execute(new KN(this));
        A04(context);
    }

    private static synchronized void A04(Context context) {
        if (!A09) {
            DynamicLoaderFactory.makeLoader(context).getInitApi().onAdEventManagerCreated(context);
            O2.A04();
            A04 = O2.A01();
            A06 = O2.A02();
            A09 = true;
        }
    }

    private void A05(KH kh) {
        AdEventManagerImpl adEventManagerImpl = this;
        char c = !kh.A0A() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    kh = kh;
                    Log.e(A08, A02(7, 29, 120) + kh.A06() + A02(0, 7, 92));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    adEventManagerImpl = adEventManagerImpl;
                    if (adEventManagerImpl.A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    adEventManagerImpl = adEventManagerImpl;
                    kh = kh;
                    adEventManagerImpl.A00.preprocess(kh);
                    c = 6;
                    break;
                case 6:
                    adEventManagerImpl = adEventManagerImpl;
                    kh = kh;
                    adEventManagerImpl.A02.A0G(kh.A08(), kh.A05().A00, kh.A06().toString(), kh.A04(), kh.A03(), kh.A07(), kh.A09(), new KO(adEventManagerImpl, kh));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A49(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A04).A06(true).A07(KZ.A0A(str, KW.A08)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4C(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A06).A06(true).A07(KZ.A0A(str, KW.A0J)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4D(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A07).A06(true).A07(KZ.A0A(str, KW.A05)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4E(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A09).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4F(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A0A).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4H(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A04).A02(KS.A0B).A06(true).A07(KZ.A0A(str, KW.A0U)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4I(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A04).A02(KS.A0C).A06(false).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4J(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A04).A02(KS.A0F).A06(true).A07(KZ.A0A(str, KW.A0W)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4L(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A0E).A06(true).A07(KZ.A0A(str, KW.A0X)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4N(String str, Map<String, String> map, String str2, KR kr) {
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(kr).A02(KS.A00(str2)).A06(true).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4O(String str, String str2, String str3, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, String> data = C0665Ka.A01(this.A01, A06, str3, str2);
        map.putAll(data);
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A0G).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4P(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A0H).A06(true).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4T(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A01(KR.A03).A02(KS.A0I).A06(true).A07(KZ.A0A(str, KW.A0Z)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4W(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A0D).A06(false).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4X(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A04).A02(KS.A0J).A06(true).A07(KZ.A0A(str, KW.A0d)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4Y(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A0N).A06(true).A07(KZ.A0A(str, KW.A0f)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4Z(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A03).A02(KS.A0M).A06(true).A07(KZ.A0A(str, KW.A0g)).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A4b(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new KG().A04(str).A00(A04).A03(A06).A05(map).A01(KR.A04).A02(KS.A0P).A06(true).A08());
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A6Z(String str) {
        new AsyncTaskC0782Or(this.A01).execute(str);
    }

    public static synchronized KM getInstance(Context context) {
        if (A05 == null) {
            A05 = new AdEventManagerImpl(context.getApplicationContext());
        }
        return A05;
    }
}
