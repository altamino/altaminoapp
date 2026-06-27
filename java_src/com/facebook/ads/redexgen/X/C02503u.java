package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3u, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02503u extends C3Z {
    private static byte[] A00;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A00 = new byte[]{16, 18, 29, 83, 28, 29, 31, 10, 83, 0, 22, 7, 83, 28, 29, 83, 1, 22, 4, 18, 1, 23, 22, 23, 83, 5, 26, 23, 22, 28, 83, 18, 23, 0, 4, 5, 74, 11, 14, 11, 26, 30, 15, 24, 74, 24, 15, 11, 14, 19, 74, 30, 5, 74, 25, 15, 30, 74, 24, 15, 29, 11, 24, 14, 74, 5, 4};
    }

    public C02503u(Context context, C3V c3v) {
        super(context, c3v);
    }

    private C2Y A01(final Runnable runnable) {
        return new C2Y() { // from class: com.facebook.ads.redexgen.X.3t
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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 63);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A02 = new byte[]{20, 19, -9, 10, 28, 6, 23, 9, 10, 9, -5, 14, 9, 10, 20, -26, 9, -15, 20, 12, 12, 14, 19, 12, -18, 18, 21, 23, 10, 24, 24, 14, 20, 19, -58, -39, -21, -43, -26, -40, -39, -40, -108, -54, -35, -40, -39, -29, -108, -35, -31, -28, -26, -39, -25, -25, -35, -29, -30, -108, -38, -35, -26, -39, -40, -77, -79, -80, -80, -84, -78, -83, -81};
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void A5s() {
                this.A00.A07.A05();
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void A68(C2G c2g) {
                this.A00.A07.A06();
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void A69(C2G c2g) {
                this.A00.A07.A07();
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void A6A(C2G c2g) {
                this.A00.A07.A0D();
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void A6B(C2G c2g) {
                this.A00.A06().removeCallbacks(runnable);
                this.A00.A02 = c2g;
                super/*com.facebook.ads.redexgen.X.3Z*/.A09();
                this.A00.A07.A0G(c2g);
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void A6C(C2G c2g) {
                C0695Lf.A05(A00(0, 34, 102), A00(34, 31, 53), A00(65, 8, 61));
                this.A00.A07.A0E();
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void A6D(C2G c2g) {
                this.A00.A07.A08();
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void A6E(C2G c2g, AdError adError) {
                this.A00.A06().removeCallbacks(runnable);
                this.A00.A07.A0H(new LQ(AdErrorType.INTERNAL_ERROR, (String) null));
                this.A00.A0D(c2g);
                this.A00.A0C();
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void onRewardedVideoActivityDestroyed() {
                this.A00.A07.A09();
            }

            @Override // com.facebook.ads.redexgen.X.C2Y
            public final void onRewardedVideoClosed() {
                this.A00.A07.A0A();
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    @Nullable
    public final LQ A0M() {
        C02503u c02503u = this;
        LQ lq = null;
        char c = c02503u.A08.A05 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c02503u = c02503u;
                    if (!c02503u.A0K()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return lq;
                case 4:
                    lq = new LQ(AdErrorType.CLEAR_TEXT_SUPPORT_NOT_ALLOWED, A02(34, 0, 31));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0N() {
        C2G c2g = (C2G) this.A02;
        c2g.A00(this.A08.A00);
        c2g.A0C();
    }

    @Override // com.facebook.ads.redexgen.X.C3Z
    public final void A0O(InterfaceC01851h interfaceC01851h, JJ jj, JH jh, final Map<String, Object> map) {
        final C2H c2h = (C2H) interfaceC01851h;
        Runnable rewardedVideoTimeout = new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.3s
            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                this.A01.A0H(map);
                this.A01.A0D(c2h);
                this.A01.A01 = null;
                this.A01.A07.A0H(new LQ(AdErrorType.RV_AD_TIMEOUT, ""));
            }
        };
        if (K1.A1f(this.A0C)) {
            A06().postDelayed(rewardedVideoTimeout, jj.A05().A05());
        }
        c2h.A0D(this.A0C, A01(rewardedVideoTimeout), map, this.A08.A05, this.A08.A03, this.A08.A04);
    }

    public final void A0Q(RewardData rewardData) {
        C02503u c02503u = this;
        char c = c02503u.A02 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A02(34, 33, 82));
                case 3:
                    c02503u = c02503u;
                    if (c02503u.A02.A3d() == AdPlacementType.REWARDED_VIDEO) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    throw new IllegalStateException(A02(0, 34, 75));
                case 5:
                    ((C2G) c02503u.A02).A01(rewardData);
                    return;
            }
        }
    }
}
