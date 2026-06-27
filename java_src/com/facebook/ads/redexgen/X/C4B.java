package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.EnumSet;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4B, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4B implements AnonymousClass46 {
    private static byte[] A05;
    private static final String A06;
    private C02393j A00;
    private boolean A01;
    private boolean A02;
    private final InterstitialAdExtendedListener A03;
    private final C4K A04;

    private static String A04(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A05 = new byte[]{13, 34, 108, 45, 40, 108, 32, 35, 45, 40, 108, 37, 63, 108, 45, 32, 62, 41, 45, 40, 53, 108, 37, 34, 108, 60, 62, 35, 43, 62, 41, 63, 63, 98, 108, 21, 35, 57, 108, 63, 36, 35, 57, 32, 40, 108, 59, 45, 37, 56, 108, 42, 35, 62, 108, 45, 40, 0, 35, 45, 40, 41, 40, 100, 101, 108, 56, 35, 108, 46, 41, 108, 47, 45, 32, 32, 41, 40, 99, 114, 107, 21, 50, 40, 57, 46, 47, 40, 53, 40, 53, 61, 48, 124, 48, 51, 61, 56, 124, 63, 61, 48, 48, 57, 56, 124, 43, 52, 53, 48, 57, 124, 47, 52, 51, 43, 53, 50, 59, 124, 53, 50, 40, 57, 46, 47, 40, 53, 40, 53, 61, 48, 114};
    }

    static {
        A05();
        A06 = C4B.class.getSimpleName();
    }

    public C4B(C4K c4k, AnonymousClass42 anonymousClass42, String str) {
        this.A04 = c4k;
        this.A03 = new C4W(str, anonymousClass42, this);
    }

    public final long A08() {
        C4B c4b = this;
        long jA05 = 0;
        char c = c4b.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4b = c4b;
                    jA05 = c4b.A00.A05();
                    c = 3;
                    break;
                case 3:
                    return jA05;
                case 4:
                    jA05 = -1;
                    c = 3;
                    break;
            }
        }
    }

    public final void A09(EnumSet<CacheFlag> enumSet, @Nullable String str) {
        EnumSet<CacheFlag> enumSet2 = enumSet;
        final C4B c4b = this;
        char c = !c4b.A02 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4b = c4b;
                    if (c4b.A00 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    Log.w(A06, A04(0, 78, 116));
                    c = 4;
                    break;
                case 4:
                    c4b = c4b;
                    c4b.A02 = false;
                    if (!c4b.A01) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c4b = c4b;
                    if (!K1.A0n(c4b.A04.A0A)) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 6:
                    c4b = c4b;
                    P7.A07(c4b.A04.A0A, A04(78, 3, 58), P8.A0A, new PA(A04(81, 52, 100)));
                    c4b.A03.onError(c4b.A04.A00(), new AdError(AdErrorType.LOAD_CALLED_WHILE_SHOWING_AD.getErrorCode(), AdErrorType.LOAD_CALLED_WHILE_SHOWING_AD.getDefaultErrorMessage()));
                    c = 7;
                    break;
                case 7:
                    return;
                case '\b':
                    c4b = c4b;
                    if (c4b.A00 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c4b = c4b;
                    c4b.A00.A0E(new AbstractC01861i() { // from class: com.facebook.ads.redexgen.X.47
                    });
                    c4b.A00.A0B();
                    c4b.A00 = null;
                    c = '\n';
                    break;
                case '\n':
                    c4b = c4b;
                    enumSet2 = enumSet2;
                    str = str;
                    C3V c3v = new C3V(c4b.A04.A0B, LY.A01(c4b.A04.A0A.getResources().getDisplayMetrics()), AdPlacementType.INTERSTITIAL, LV.A07, 1, enumSet2);
                    c3v.A06(c4b.A04.A05);
                    c3v.A07(c4b.A04.A06);
                    c3v.A04(c4b.A04.A02);
                    c4b.A00 = new C02393j(c4b.A04.A0A, c3v);
                    c4b.A00.A0E(new AbstractC01861i() { // from class: com.facebook.ads.redexgen.X.49
                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A00() {
                            this.A00.A01 = false;
                            this.A00.A03.onInterstitialActivityDestroyed();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A02() {
                            this.A00.A01 = false;
                            if (this.A00.A00 != null) {
                                this.A00.A00.A0E(new AbstractC01861i() { // from class: com.facebook.ads.redexgen.X.48
                                });
                                this.A00.A00.A0B();
                                this.A00.A00 = null;
                            }
                            this.A00.A03.onInterstitialDismissed(this.A00.A04.A00());
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A04() {
                            this.A00.A03.onInterstitialDisplayed(this.A00.A04.A00());
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A06() {
                            this.A00.A03.onRewardedAdServerFailed();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A07() {
                            this.A00.A03.onRewardedAdServerSucceeded();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A08() {
                            this.A00.A03.onRewardedAdCompleted();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0D() {
                            this.A00.A03.onAdClicked(this.A00.A04.A00());
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0E() {
                            this.A00.A03.onLoggingImpression(this.A00.A04.A00());
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0F(View view) {
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0G(InterfaceC01851h interfaceC01851h) {
                            this.A00.A02 = true;
                            this.A00.A03.onAdLoaded(this.A00.A04.A00());
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0H(LQ lq) {
                            this.A00.A03.onError(this.A00.A04.A00(), LQ.A00(lq));
                        }
                    });
                    c4b.A00.A0G(str);
                    c = 7;
                    break;
            }
        }
    }

    public final boolean A0A() {
        C4B c4b = this;
        boolean z = false;
        char c = c4b.A00 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c4b = c4b;
                    if (!c4b.A00.A0L()) {
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

    public final boolean A0B() {
        return this.A02;
    }

    public final boolean A0C() {
        C4B c4b = this;
        boolean z = false;
        char c = !c4b.A02 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4b = c4b;
                    c4b.A03.onError(c4b.A04.A00(), AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    c4b = c4b;
                    if (c4b.A00 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c4b = c4b;
                    P7.A07(c4b.A04.A0A, A04(78, 3, 58), P8.A0G, new PA(AdErrorType.INTERSTITIAL_CONTROLLER_IS_NULL.getDefaultErrorMessage()));
                    c4b.A03.onError(c4b.A04.A00(), AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
                    c = 3;
                    break;
                case 6:
                    c4b = c4b;
                    c4b.A00.A0A();
                    c4b.A01 = true;
                    c4b.A02 = false;
                    z = true;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass46
    public final void destroy() {
        if (this.A00 != null) {
            this.A00.A0E(new AbstractC01861i() { // from class: com.facebook.ads.redexgen.X.4A
            });
            this.A00.A0J(true);
            this.A00 = null;
            this.A02 = false;
            this.A01 = false;
        }
    }
}
