package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0710Lw {

    @Nullable
    private static Lu A08;
    private static byte[] A09;
    private static final O0 A0A;
    private static final Executor A0B;
    private C0700Lk A00;
    private C3Y A01;
    private MQ A02;

    @Nullable
    private String A03;
    private Map<String, String> A04;
    private final Context A05;
    private final C0711Lx A06 = C0711Lx.A00();
    private final String A07 = M2.A00();

    private static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 4);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0G() {
        A09 = new byte[]{-119, -110, -113, -117, -108, -102, -91, -104, -117, -105, -101, -117, -103, -102, -91, -113, -118, -77, -79, -70, -79, -66, -75, -81, 120, 117, 118, 117, 124, 120, 118, 120, -78, -36, -119, -69, -73, -93, -119, 87, 104, 102, 98, 100, 89, 122, 43, 81, 116, 119, 119, 43, 112, 125, 125, 122, 125, 43, 110, 122, 111, 112, 43, 102, 48, 126, 104, 43, 48, 126, -73, -72, -119, -81, -78, -75, -75, -119, -37, -50, -52, -50, -46, -33, -50, -51, -92, -59, 118, -60, -69, -54, -51, -59, -56, -63, 118, -71, -59, -60, -60, -69, -71, -54, -65, -59, -60, -51, -50, -91, -56, -53, -53, -89, -50, -50, -54, -106, -115, -100, -97, -105, -102, -109};
    }

    static {
        A0G();
        A0A = new O0();
        A0B = Executors.newCachedThreadPool(A0A);
    }

    public C0710Lw(Context context) {
        this.A05 = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Lp A06(long j) {
        return new C0705Lq(this, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC0703Ln A08(long j) {
        return new C0704Lo(this, j);
    }

    private void A0F() {
        C0710Lw c0710Lw = this;
        char c = c0710Lw.A05 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0710Lw = c0710Lw;
                    if (!C0780Op.A0G(c0710Lw.A05)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c0710Lw = c0710Lw;
                    PA pa = new PA(A0A(39, 5, 18));
                    pa.A03(1);
                    P7.A07(c0710Lw.A05, A0A(117, 7, 36), P8.A1O, pa);
                    c = 3;
                    break;
            }
        }
    }

    private void A0H(int i, String str) {
        C0695Lf.A05(A0A(107, 10, 91), A0A(70, 16, 101), A0A(24, 8, 65));
        C0695Lf.A04(A0A(107, 10, 91), String.format(Locale.US, A0A(44, 26, 7), Integer.valueOf(i), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I(LQ lq) {
        if (this.A01 != null) {
            this.A01.A5G(lq);
        }
        A0U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J(LQ lq) {
        OR.A00(new C0707Ls(this, lq));
    }

    private void A0K(C0700Lk c0700Lk, boolean z) {
        C0710Lw c0710Lw = this;
        C0709Lv c0709LvFetch = null;
        String strA02 = null;
        c0710Lw.A0U();
        char c = !z ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    if (A08 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0710Lw = c0710Lw;
                    c0700Lk = c0700Lk;
                    c0709LvFetch = A08.fetch(c0710Lw, c0700Lk);
                    if (c0709LvFetch == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0709LvFetch = c0709LvFetch;
                    if (c0709LvFetch.A01 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0710Lw = c0710Lw;
                    c0709LvFetch = c0709LvFetch;
                    c0710Lw.A0R(c0709LvFetch.A01);
                    c = 6;
                    break;
                case 6:
                    return;
                case 7:
                    c0709LvFetch = c0709LvFetch;
                    if (c0709LvFetch.A00 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0710Lw = c0710Lw;
                    c0709LvFetch = c0709LvFetch;
                    c0710Lw.A0J(c0709LvFetch.A00);
                    c = 6;
                    break;
                case '\t':
                    c0710Lw = c0710Lw;
                    if (OL.A00(c0710Lw.A05) != OK.A07) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0710Lw = c0710Lw;
                    c0710Lw.A0F();
                    c0710Lw.A0J(new LQ(AdErrorType.NETWORK_ERROR, A0A(86, 21, 82)));
                    c = 6;
                    break;
                case 11:
                    c0710Lw = c0710Lw;
                    c0700Lk = c0700Lk;
                    c0710Lw.A00 = c0700Lk;
                    JE.A0B(c0710Lw.A05);
                    if (!C0699Lj.A08(c0700Lk)) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c0700Lk = c0700Lk;
                    strA02 = C0699Lj.A02(c0700Lk);
                    if (strA02 == null) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c0710Lw = c0710Lw;
                    strA02 = strA02;
                    c0710Lw.A0T(strA02, 0L);
                    c = 6;
                    break;
                case 14:
                    c0710Lw = c0710Lw;
                    c0710Lw.A0J(LQ.A02(AdErrorType.LOAD_TOO_FREQUENTLY, null));
                    c = 6;
                    break;
                case 15:
                    c0710Lw = c0710Lw;
                    c0700Lk = c0700Lk;
                    A0B.execute(new C0701Ll(c0710Lw, c0700Lk, z));
                    c = 6;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Q(M0 m0) {
        if (this.A01 != null) {
            this.A01.A6H(m0);
        }
        A0U();
    }

    private void A0R(M0 m0) {
        C0T c0tA08 = null;
        OR.A00(new C0706Lr(this, m0));
        char c = K1.A1e(this.A05) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0tA08 = C0645Jf.A02().A08();
                    if (c0tA08 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0tA08 = c0tA08;
                    c0tA08.A38();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0S(String str, long j) {
        String str2;
        try {
            C0713Lz c0713LzA06 = this.A06.A06(this.A05, str, j, this.A03);
            JJ placement = c0713LzA06.A00();
            C0418Al.A05(this.A05, str);
            if (placement != null) {
                K1.A0Z(this.A05).A28(placement.A08());
                DynamicLoaderFactory.makeLoader(this.A05).getInitApi().maybeAttachCrashListener(this.A05);
                if (ProcessUtils.sRemoteProcess) {
                    if (K1.A0t(this.A05)) {
                        C0775Ok.A02(this.A05);
                    } else {
                        C0775Ok.A03(this.A05);
                    }
                }
                C02654j.A0O(this.A05, placement.A06());
                C0699Lj.A05(placement.A05().A0B(), this.A00);
                P1.A01(this.A05, A0B, placement);
                PA pa = new PA(A0A(32, 7, 101) + C0746Nh.A02());
                pa.A04(1);
                pa.A07(false);
                P7.A09(this.A05, A0A(17, 7, 72), P8.A16, pa);
            }
            switch (c0713LzA06.A01()) {
                case A02:
                    M0 m0 = (M0) c0713LzA06;
                    if (placement != null) {
                        if (placement.A05().A0E()) {
                            C0699Lj.A07(str, this.A00);
                        }
                        if (this.A04 != null) {
                            str2 = this.A04.get(A0A(0, 17, 66));
                        } else {
                            str2 = null;
                        }
                        if (!TextUtils.isEmpty(c0713LzA06.A02()) && !TextUtils.isEmpty(str2)) {
                            new C0664Jz(this.A05, str2, c0713LzA06.A02()).A08();
                        }
                    }
                    A0R(m0);
                    break;
                case A03:
                    M1 m1 = (M1) c0713LzA06;
                    String strA04 = m1.A04();
                    AdErrorType adErrorTypeAdErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(m1.A03(), AdErrorType.ERROR_MESSAGE);
                    A0H(m1.A03(), strA04);
                    if (strA04 == null) {
                        strA04 = str;
                    }
                    A0J(LQ.A02(adErrorTypeAdErrorTypeFromCode, strA04));
                    break;
                default:
                    A0J(LQ.A02(AdErrorType.UNKNOWN_RESPONSE, str));
                    break;
            }
        } catch (Exception e) {
            A0J(LQ.A02(AdErrorType.PARSER_FAILURE, e.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0T(String str, long j) {
        A0B.execute(new C0702Lm(this, str, j));
    }

    public final void A0U() {
        if (this.A02 != null) {
            this.A02.A0N(1);
            this.A02.A0O(1);
            this.A02 = null;
        }
    }

    public final void A0V(C0700Lk c0700Lk) {
        A0K(c0700Lk, false);
    }

    public final void A0W(C3Y c3y) {
        this.A01 = c3y;
    }

    public final void A0X(@Nullable String str) {
        this.A03 = str;
    }
}
