package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardData;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4E, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4E implements AnonymousClass46 {
    private static byte[] A07;
    private static final String A08;
    private C02503u A01;

    @Nullable
    private String A02;
    private final S2SRewardedVideoAdExtendedListener A04;
    private final C4S A05;
    private final List<C4U> A06 = new ArrayList();
    private int A00 = 0;
    private boolean A03 = false;

    private static String A03(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A07 = new byte[]{-68, -23, -101, -36, -33, -101, -25, -22, -36, -33, -101, -28, -18, -101, -36, -25, -19, -32, -36, -33, -12, -101, -28, -23, -101, -21, -19, -22, -30, -19, -32, -18, -18, -87, -101, -44, -22, -16, -101, -18, -29, -22, -16, -25, -33, -101, -14, -36, -28, -17, -101, -31, -22, -19, -101, -36, -33, -57, -22, -36, -33, -32, -33, -93, -92, -101, -17, -22, -101, -35, -32, -101, -34, -36, -25, -25, -32, -33, -93, -48, -48, -51, -48, 126, -54, -51, -65, -62, -57, -52, -59, 126, -48, -61, -43, -65, -48, -62, -61, -62, 126, -44, -57, -62, -61, -51, 126, -65, -62, -92, -77, -84};
    }

    static {
        A05();
        A08 = C4E.class.getSimpleName();
    }

    public C4E(C4S c4s, AnonymousClass42 anonymousClass42, String str) {
        this.A05 = c4s;
        this.A04 = new C4Y(str, anonymousClass42, this, c4s);
    }

    private void A07(@Nullable String str, boolean z, final boolean z2) {
        C4E c4e = this;
        char c = !c4e.A03 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4e = c4e;
                    if (c4e.A01 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    Log.w(A08, A03(0, 78, 61));
                    c = 4;
                    break;
                case 4:
                    final C4E c4e2 = c4e;
                    c4e2.A08(false);
                    c4e2.A03 = false;
                    final C3V c3v = new C3V(c4e2.A05.A0C, LW.A07, AdPlacementType.REWARDED_VIDEO, LV.A07, 1);
                    c3v.A08(z);
                    c3v.A06(c4e2.A05.A05);
                    c3v.A07(c4e2.A05.A06);
                    c4e2.A01 = new C02503u(c4e2.A05.A0B, c3v);
                    c4e2.A01.A0E(new AbstractC01861i() { // from class: com.facebook.ads.redexgen.X.4C
                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A05() {
                            this.A01.A0B();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A06() {
                            this.A01.A04.onRewardServerFailed();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A07() {
                            this.A01.A04.onRewardServerSuccess();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A08() {
                            this.A01.A04.onRewardedVideoCompleted();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A09() {
                            this.A01.A04.onRewardedVideoActivityDestroyed();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0A() {
                            this.A01.A04.onRewardedVideoClosed();
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0D() {
                            this.A01.A04.onAdClicked(this.A01.A05.A00());
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0E() {
                            this.A01.A04.onLoggingImpression(this.A01.A05.A00());
                            if (z2) {
                                this.A01.A0D(c3v);
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0G(InterfaceC01851h interfaceC01851h) {
                            this.A01.A02 = this.A01.A01.A08();
                            C2G c2g = (C2G) interfaceC01851h;
                            if (this.A01.A05.A02 != null) {
                                c2g.A01(this.A01.A05.A02);
                            }
                            this.A01.A05.A00 = c2g.A0B();
                            this.A01.A03 = true;
                            this.A01.A04.onAdLoaded(this.A01.A05.A00());
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC01861i
                        public final void A0H(LQ lq) {
                            this.A01.A08(true);
                            this.A01.A04.onError(this.A01.A05.A00(), LQ.A00(lq));
                        }
                    });
                    c4e2.A01.A0I(c4e2.A05.A07);
                    c4e2.A01.A0G(str);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08(boolean z) {
        if (this.A01 != null) {
            this.A01.A0E(new AbstractC01861i() { // from class: com.facebook.ads.redexgen.X.4D
            });
            this.A01.A0J(z);
            this.A01 = null;
        }
    }

    public final long A0A() {
        C4E c4e = this;
        long jA05 = 0;
        char c = c4e.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4e = c4e;
                    jA05 = c4e.A01.A05();
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

    public final void A0B() {
        C4E c4e = this;
        C4U c4uRemove = null;
        char c = c4e.A06.isEmpty() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c4e = c4e;
                    c4uRemove = c4e.A06.remove(0);
                    if (c4uRemove == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c4uRemove = c4uRemove;
                    if (!c4uRemove.A08()) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c4e = c4e;
                    c4uRemove = c4uRemove;
                    c4e.A03 = true;
                    c4e.A01 = c4uRemove.A07();
                    c4e.A0H(c4uRemove.A06().A00());
                    c4e.A00++;
                    c = 2;
                    break;
            }
        }
    }

    public final void A0C(RewardData rewardData) {
        this.A05.A02 = rewardData;
        if (this.A03) {
            this.A01.A0Q(rewardData);
        }
    }

    public final void A0D(C3V c3v) {
        if (this.A00 >= K1.A0L(this.A05.A0B)) {
            return;
        }
        this.A06.add(new C4U(this.A02, c3v, this.A05, this.A04, this));
    }

    public final void A0E(@Nullable String str, boolean z, boolean z2) {
        try {
            A07(str, z, z2);
        } catch (Exception e) {
            Log.e(A08, A03(78, 31, 32), e);
            P7.A07(this.A05.A0B, A03(109, 3, 5), P8.A0O, new PA(e));
            this.A04.onError(this.A05.A00(), AdError.internalError(2004));
        }
    }

    public final boolean A0F() {
        C4E c4e = this;
        boolean z = false;
        char c = c4e.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c4e = c4e;
                    if (!c4e.A01.A0L()) {
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

    public final boolean A0G() {
        return this.A03;
    }

    public final boolean A0H(int i) {
        C4E c4e = this;
        boolean z = false;
        char c = !c4e.A03 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4e = c4e;
                    c4e.A04.onError(c4e.A05.A00(), AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    c4e = c4e;
                    if (c4e.A01 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c4e = c4e;
                    c4e.A01.A08.A03(i);
                    c4e.A01.A0A();
                    c4e.A03 = false;
                    z = true;
                    c = 3;
                    break;
                case 6:
                    c4e = c4e;
                    z = false;
                    c4e.A03 = false;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass46
    public final void destroy() {
        A08(true);
    }
}
