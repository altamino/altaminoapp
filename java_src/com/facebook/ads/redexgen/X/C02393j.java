package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.android.exoplayer2.C;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3j, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02393j extends C3Z {
    public C02393j(Context context, C3V c3v) {
        super(context, c3v);
    }

    private C2S A01(final Runnable runnable) {
        return new C2S() { // from class: com.facebook.ads.redexgen.X.3i
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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 21);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A02 = new byte[]{-40, -41, -78, -41, -35, -50, -37, -36, -35, -46, -35, -46, -54, -43, -75, -40, -48, -48, -46, -41, -48, -78, -42, -39, -37, -50, -36, -36, -46, -40, -41, -112, -75, -69, -84, -71, -70, -69, -80, -69, -80, -88, -77, 103, -80, -76, -73, -71, -84, -70, -70, -80, -74, -75, 103, -83, -80, -71, -84, -85, -73, -38, -41, -26, -22, -37, -24, -106, -33, -23, -106, -28, -21, -30, -30, -106, -27, -28, -106, -30, -27, -41, -38, -65, -28, -22, -37, -24, -23, -22, -33, -22, -33, -41, -30, -73, -38, -72, -57, -64, -62, -58, -58, -62, -60, -14, -64, -66, -68, -55, -65, -51, -54, -60, -65, -119, -60, -55, -49, -64, -55, -49, -119, -68, -66, -49, -60, -54, -55, -119, -79, -92, -96, -78};
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void A5Y(AnonymousClass26 anonymousClass26, String str, boolean z) {
                C02383i c02383i = this;
                Intent intent = null;
                boolean z2 = false;
                c02383i.A00.A07.A0D();
                char c = !TextUtils.isEmpty(str) ? (char) 2 : '\t';
                while (true) {
                    switch (c) {
                        case 2:
                            z2 = true;
                            c = 3;
                            break;
                        case 3:
                            if (!z) {
                                c = '\b';
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            if (!z2) {
                                c = '\b';
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 5:
                            c02383i = c02383i;
                            intent = new Intent(A00(108, 26, 70));
                            if (!(c02383i.A00.A0C instanceof Activity)) {
                                c = 6;
                                break;
                            } else {
                                c = 7;
                                break;
                            }
                        case 6:
                            intent = intent;
                            intent.addFlags(C.ENCODING_PCM_MU_LAW);
                            c = 7;
                            break;
                        case 7:
                            c02383i = c02383i;
                            str = str;
                            intent = intent;
                            intent.setData(Uri.parse(str));
                            c02383i.A00.A0C.startActivity(intent);
                            c = '\b';
                            break;
                        case '\b':
                            return;
                        case '\t':
                            z2 = false;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void A5Z(AnonymousClass26 anonymousClass26) {
                this.A00.A07.A02();
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void A5a(AnonymousClass26 anonymousClass26) {
                this.A00.A07.A04();
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void A5b(AnonymousClass26 anonymousClass26) {
                C02383i c02383i = this;
                char c = anonymousClass26 != c02383i.A00.A01 ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            return;
                        case 3:
                            anonymousClass26 = anonymousClass26;
                            if (anonymousClass26 != null) {
                                c = 5;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            c02383i = c02383i;
                            anonymousClass26 = anonymousClass26;
                            P7.A07(c02383i.A00.A0C, A00(97, 3, 66), P8.A0L, new PA(A00(60, 37, 97)));
                            c02383i.A5c(anonymousClass26, AdError.internalError(2004));
                            c = 2;
                            break;
                        case 5:
                            c02383i = c02383i;
                            anonymousClass26 = anonymousClass26;
                            c02383i.A00.A06().removeCallbacks(runnable);
                            c02383i.A00.A02 = anonymousClass26;
                            super/*com.facebook.ads.redexgen.X.3Z*/.A09();
                            c02383i.A00.A07.A0G(anonymousClass26);
                            c = 2;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void A5c(AnonymousClass26 anonymousClass26, AdError adError) {
                C02383i c02383i = this;
                char c = anonymousClass26 != c02383i.A00.A01 ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            return;
                        case 3:
                            c02383i = c02383i;
                            anonymousClass26 = anonymousClass26;
                            c02383i.A00.A06().removeCallbacks(runnable);
                            c02383i.A00.A0D(anonymousClass26);
                            if (!K1.A0p(c02383i.A00.A0C)) {
                                c = 4;
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 4:
                            c02383i = c02383i;
                            c02383i.A00.A0C();
                            c = 5;
                            break;
                        case 5:
                            c02383i = c02383i;
                            adError = adError;
                            c02383i.A00.A07.A0H(new LQ(adError.getErrorCode(), adError.getErrorMessage()));
                            c = 2;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void A5d(AnonymousClass26 anonymousClass26) {
                C0695Lf.A05(A00(0, 31, 84), A00(31, 29, 50), A00(100, 8, 120));
                this.A00.A07.A0E();
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void A5e() {
                this.A00.A07.A08();
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void A5f() {
                this.A00.A07.A06();
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void A5g() {
                this.A00.A07.A07();
            }

            @Override // com.facebook.ads.redexgen.X.C2S
            public final void onInterstitialActivityDestroyed() {
                this.A00.A07.A00();
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0N() {
        ((AnonymousClass26) this.A02).A09();
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0O(InterfaceC01851h interfaceC01851h, JJ jj, JH jh, final Map<String, Object> map) {
        final AnonymousClass26 anonymousClass26 = (AnonymousClass26) interfaceC01851h;
        AnonymousClass27 anonymousClass27 = new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.3h
            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                C02373h c02373h = this;
                c02373h.A01.A0H(map);
                c02373h.A01.A0D(anonymousClass26);
                char c = K1.A0p(c02373h.A01.A0C) ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            c02373h = c02373h;
                            c02373h.A01.A01 = null;
                            c02373h.A01.A07.A0H(new LQ(AdErrorType.INTERSTITIAL_AD_TIMEOUT, ""));
                            c = 3;
                            break;
                        case 3:
                            return;
                        case 4:
                            c02373h = c02373h;
                            c02373h.A01.A0C();
                            c = 3;
                            break;
                    }
                }
            }
        };
        A06().postDelayed(anonymousClass27, jj.A05().A05());
        anonymousClass26.A08(this.A0C, A01(anonymousClass27), map, this.A08.A09, this.A08.A03, this.A08.A04, this.A08.A01);
    }
}
