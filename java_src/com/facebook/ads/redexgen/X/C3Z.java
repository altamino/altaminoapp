package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.tonyodev.fetch.FetchConst;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"HardcodedIPAddressUse"})
/* renamed from: com.facebook.ads.redexgen.X.3Z, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C3Z implements C3Y {
    private static byte[] A0E;
    private static final Handler A0F;
    private static final C01901m A0G = null;

    @SuppressLint({"StaticFieldLeak"})
    private static final C0710Lw A0H = null;
    private static final String A0I;
    public View A00;

    @Nullable
    public InterfaceC01851h A01;
    public InterfaceC01851h A02;
    private JJ A04;
    private C0700Lk A05;
    public AbstractC01861i A07;
    public final C3V A08;
    public final KM A09;
    private final C01901m A0A;
    private final C0710Lw A0B;
    public final Context A0C;
    public volatile boolean A0D;
    private long A03 = -1;
    private boolean A06 = false;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 99);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A0E = new byte[]{57, 22, 31, 27, 8, 14, 31, 2, 14, 90, 18, 14, 14, 10, 90, 19, 9, 90, 20, 21, 14, 90, 27, 22, 22, 21, 13, 31, 30, 84, 36, 37, 38, 41, 46, 41, 52, 41, 47, 46, 83, 79, 66, 64, 70, 78, 70, 77, 87, 106, 71, 100, 96, 99, 87, 70, 75, 71, 76, 65, 71, 108, 71, 86, 85, 77, 80, 73, 108, 111, 97, 100, 95, 116, 105, 109, 101, 95, 109, 115, 111, 72, 64, 69, 76, 77, 9, 93, 70, 9, 64, 71, 64, 93, 64, 72, 69, 64, 83, 76, 9, 106, 70, 70, 66, 64, 76, 100, 72, 71, 72, 78, 76, 91, 7, 89, 92, 73, 92, 110, 109, 104, 113, 111, 113, 111, 113, 110, 113, 102, 100, 117, 108, 82, 87, 19, 82, 95, 65, 86, 82, 87, 74, 19, 64, 71, 82, 65, 71, 86, 87, 56, 29, 24, 9, 13, 28, 11, 89, 29, 22, 28, 10, 89, 23, 22, 13, 89, 28, 1, 16, 10, 13, 67, 89, 44, 39, 63, 32, 59, 38, 39, 36, 44, 39, 61, 105, 32, 58, 105, 44, 36, 57, 61, 48, 0, 37, 32, 49, 53, 36, 51, 97, 40, 50, 97, 47, 52, 45, 45, 97, 46, 47, 97, 50, 53, 32, 51, 53, 0, 37, 61, 42, 62, 58, 42, 60, 59, 27, 38, 34, 42, 13, 8, 29, 8, 54, 4, 6, 13, 12, 5, 54, 29, 16, 25, 12, 72, 74, 72, 67, 78};
    }

    public abstract void A0N();

    public abstract void A0O(InterfaceC01851h interfaceC01851h, JJ jj, JH jh, Map<String, Object> map);

    static {
        A03();
        NV.A02();
        A0I = C3Z.class.getSimpleName();
        A0F = new Handler(Looper.getMainLooper());
    }

    public C3Z(Context context, C3V c3v) {
        this.A0C = context.getApplicationContext();
        this.A08 = c3v;
        if (A0H != null) {
            this.A0B = A0H;
        } else {
            this.A0B = new C0710Lw(this.A0C);
        }
        this.A0B.A0W(this);
        if (A0G != null) {
            this.A0A = A0G;
        } else {
            this.A0A = new C01901m();
        }
        try {
            CookieManager.getInstance();
            if (Build.VERSION.SDK_INT < 21) {
                CookieSyncManager.createInstance(this.A0C);
            }
        } catch (Exception e) {
            Log.w(A0I, A01(80, 35, 74), e);
        }
        DynamicLoaderFactory.makeLoader(this.A0C).getInitApi().onAdLoadInvoked(this.A0C);
        this.A09 = AdEventManagerImpl.getInstance(this.A0C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        C3Z c3z = this;
        InterfaceC01851h interfaceC01851hA00 = null;
        HashMap map = null;
        String strA02 = null;
        c3z.A01 = null;
        JJ jj = c3z.A04;
        JH jhA04 = jj.A04();
        char c = jhA04 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3z = c3z;
                    AbstractC01861i abstractC01861i = c3z.A07;
                    LQ error = LQ.A02(AdErrorType.NO_FILL, A01(221, 0, 84));
                    abstractC01861i.A0H(error);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c3z = c3z;
                    jj = jj;
                    jhA04 = jhA04;
                    strA02 = jhA04.A02();
                    interfaceC01851hA00 = c3z.A0A.A00(jj.A05().A0D());
                    if (interfaceC01851hA00 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c3z = c3z;
                    strA02 = strA02;
                    Log.e(A0I, A01(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 24, 26) + strA02);
                    c3z.A0C();
                    c = 3;
                    break;
                case 6:
                    c3z = c3z;
                    interfaceC01851hA00 = interfaceC01851hA00;
                    if (c3z.A08.A01() == interfaceC01851hA00.A3d()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c3z = c3z;
                    c3z.A07.A0H(LQ.A02(AdErrorType.INTERNAL_ERROR, A01(221, 0, 84)));
                    c = 3;
                    break;
                case '\b':
                    c3z = c3z;
                    jj = jj;
                    jhA04 = jhA04;
                    interfaceC01851hA00 = interfaceC01851hA00;
                    c3z.A01 = interfaceC01851hA00;
                    JK jkA05 = jj.A05();
                    map = new HashMap();
                    map.put(A01(115, 4, 94), jhA04.A05());
                    map.put(A01(30, 10, 35), jkA05);
                    map.put(A01(40, 11, 64), c3z.A08.A08);
                    map.put(A01(221, 11, 44), Long.valueOf(jkA05.A0C()));
                    map.put(A01(232, 15, 10), jhA04.A03());
                    if (c3z.A05 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c3z = c3z;
                    c3z.A07.A0H(LQ.A02(AdErrorType.UNKNOWN_ERROR, A01(175, 20, 42)));
                    c = 3;
                    break;
                case '\n':
                    c3z = c3z;
                    jj = jj;
                    jhA04 = jhA04;
                    interfaceC01851hA00 = interfaceC01851hA00;
                    map = map;
                    c3z.A0O(interfaceC01851hA00, jj, jhA04, map);
                    c = 3;
                    break;
            }
        }
    }

    public final long A05() {
        C3Z c3z = this;
        long jA03 = 0;
        char c = c3z.A04 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3z = c3z;
                    jA03 = c3z.A04.A03();
                    c = 3;
                    break;
                case 3:
                    return jA03;
                case 4:
                    jA03 = -1;
                    c = 3;
                    break;
            }
        }
    }

    public final Handler A06() {
        return A0F;
    }

    public final JK A07() {
        C3Z c3z = this;
        JK jkA05 = null;
        char c = c3z.A04 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jkA05 = null;
                    c = 3;
                    break;
                case 3:
                    return jkA05;
                case 4:
                    c3z = c3z;
                    jkA05 = c3z.A04.A05();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String A08() {
        C3Z c3z = this;
        String strA3P = null;
        char c = c3z.A02 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA3P = null;
                    c = 3;
                    break;
                case 3:
                    return strA3P;
                case 4:
                    c3z = c3z;
                    strA3P = c3z.A02.A3P();
                    c = 3;
                    break;
            }
        }
    }

    public final void A09() {
        if (this.A02 == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(A01(68, 12, 99), OO.A04(this.A03));
        new KX(this.A02.A3P(), this.A09).A02(KW.A07, map);
    }

    public final void A0A() {
        C3Z c3z = this;
        char c = c3z.A02 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3z = c3z;
                    P7.A07(c3z.A0C, A01(130, 3, 102), P8.A0E, new PA(A01(195, 26, 34)));
                    c3z.A07.A0H(LQ.A02(AdErrorType.INTERNAL_ERROR, AdErrorType.INTERNAL_ERROR.getDefaultErrorMessage()));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c3z = c3z;
                    if (!c3z.A0D) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c3z = c3z;
                    P7.A07(c3z.A0C, A01(130, 3, 102), P8.A0B, new PA(A01(133, 18, 80)));
                    c3z.A07.A0H(LQ.A02(AdErrorType.AD_ALREADY_STARTED, AdErrorType.AD_ALREADY_STARTED.getDefaultErrorMessage()));
                    c = 3;
                    break;
                case 6:
                    c3z = c3z;
                    if (!TextUtils.isEmpty(c3z.A02.A3P())) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    c3z = c3z;
                    c3z.A09.A4T(c3z.A02.A3P());
                    c = '\b';
                    break;
                case '\b':
                    c3z = c3z;
                    c3z.A0D = true;
                    c3z.A0N();
                    c = 3;
                    break;
            }
        }
    }

    public final void A0B() {
        A0J(false);
    }

    public final synchronized void A0C() {
        A0F.post(new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.3c
            private static byte[] A01;

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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_NO_STORAGE_SPACE);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A01 = new byte[]{47, 62, 55};
            }

            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                try {
                    this.A00.A02();
                } catch (Exception e) {
                    P7.A07(this.A00.A0C, A00(0, 3, 98), P8.A0H, new PA(e));
                }
            }
        });
    }

    public final void A0D(InterfaceC01851h interfaceC01851h) {
        if (interfaceC01851h != null) {
            interfaceC01851h.onDestroy();
        }
    }

    public final void A0E(AbstractC01861i abstractC01861i) {
        this.A07 = abstractC01861i;
    }

    public final void A0F(@Nullable String str) {
        this.A0B.A0X(str);
    }

    public final void A0G(@Nullable String str) {
        A0P(str);
    }

    public final void A0H(Map<String, Object> map) {
        C3Z c3z = this;
        String strOptString = null;
        Object obj = map.get(A01(115, 4, 94));
        char c = obj instanceof JSONObject ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    obj = obj;
                    strOptString = ((JSONObject) obj).optString(A01(128, 2, 113));
                    if (!TextUtils.isEmpty(strOptString)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c3z = c3z;
                    strOptString = strOptString;
                    new KX(strOptString, c3z.A09).A02(KW.A03, null);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A0I(boolean z) {
        this.A06 = z;
    }

    public final void A0J(boolean z) {
        C3Z c3z = this;
        char c = !z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3z = c3z;
                    if (!c3z.A0D) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c3z = c3z;
                    c3z.A0D(c3z.A02);
                    c3z.A0B.A0U();
                    c3z.A00 = null;
                    c3z.A0D = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0K() {
        C3Z c3z = this;
        boolean z = true;
        char c = !K1.A1x(c3z.A0C) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3z = c3z;
                    if (!K1.A1y(c3z.A0C)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c3z = c3z;
                    if (!K1.A1q(c3z.A0C)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return z;
                case 5:
                    if (Build.VERSION.SDK_INT < 24) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(A01(119, 9, 60))) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (!z) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case '\t':
                    c3z = c3z;
                    P7.A07(c3z.A0C, A01(247, 5, 72), P8.A0W, new PA(A01(0, 30, 25)));
                    c = 4;
                    break;
                case '\n':
                    z = false;
                    c = '\b';
                    break;
            }
        }
    }

    public final boolean A0L() {
        C3Z c3z = this;
        boolean z = false;
        char c = c3z.A04 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c3z = c3z;
                    if (!c3z.A04.A0A()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    @Nullable
    public LQ A0M() {
        C3Z c3z = this;
        LQ lq = null;
        EnumSet<CacheFlag> enumSet = c3z.A08.A09;
        char c = enumSet != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    enumSet = enumSet;
                    if (!enumSet.contains(CacheFlag.NONE)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c3z = c3z;
                    if (!c3z.A0K()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return lq;
                case 5:
                    lq = new LQ(AdErrorType.CLEAR_TEXT_SUPPORT_NOT_ALLOWED, A01(221, 0, 84));
                    c = 4;
                    break;
            }
        }
    }

    public void A0P(@Nullable String str) {
        this.A03 = System.currentTimeMillis();
        if (Build.VERSION.SDK_INT < 17) {
            A5G(new LQ(AdErrorType.API_NOT_SUPPORTED, A01(221, 0, 84)));
            return;
        }
        try {
            this.A05 = this.A08.A02(this.A0C, new C0691Lb(this.A0C, str, this.A08.A08, this.A08.A07));
            this.A05.A0A(this.A06);
            this.A0B.A0V(this.A05);
        } catch (LR e) {
            A5G(LQ.A03(e));
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3Y
    public final synchronized void A5G(final LQ lq) {
        A06().post(new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.3d
            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                this.A00.A07.A0H(lq);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.C3Y
    public final synchronized void A6H(final M0 m0) {
        LQ lqA0M;
        if (K1.A1S(this.A0C) && (lqA0M = A0M()) != null) {
            Log.e(A01(51, 17, 65), lqA0M.A05());
            A5G(lqA0M);
        } else {
            A06().post(new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.3b
                private static byte[] A02;

                static {
                    A01();
                }

                private static String A00(int i, int i2, int i3) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
                                i4++;
                                c = 2;
                                break;
                            case 4:
                                return new String(bArrCopyOfRange);
                        }
                    }
                }

                private static void A01() {
                    A02 = new byte[]{2, 7, 15, -6, 5, 2, -3, -71, 9, 5, -6, -4, -2, 6, -2, 7, 13, -71, 2, 7, -71, 11, -2, 12, 9, 8, 7, 12, -2};
                }

                @Override // com.facebook.ads.redexgen.X.AnonymousClass27
                public final void A03() {
                    C02313b c02313b = this;
                    JJ jjA00 = m0.A00();
                    char c = jjA00 != null ? (char) 2 : (char) 3;
                    while (true) {
                        switch (c) {
                            case 2:
                                jjA00 = jjA00;
                                if (jjA00.A05() != null) {
                                    c = 5;
                                    break;
                                } else {
                                    c = 3;
                                    break;
                                }
                            case 3:
                                c02313b = c02313b;
                                c02313b.A00.A07.A0H(new LQ(AdErrorType.NO_AD_PLACEMENT, A00(0, 29, 32)));
                                c = 4;
                                break;
                            case 4:
                                return;
                            case 5:
                                c02313b = c02313b;
                                jjA00 = jjA00;
                                c02313b.A00.A04 = jjA00;
                                c02313b.A00.A0C();
                                c = 4;
                                break;
                        }
                    }
                }
            });
        }
    }
}
