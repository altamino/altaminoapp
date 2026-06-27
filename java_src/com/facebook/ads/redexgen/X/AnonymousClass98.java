package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.InstreamVideoAdView;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.98, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class AnonymousClass98 extends AbstractC01861i {
    private static byte[] A01;
    public final /* synthetic */ AnonymousClass99 A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 46);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-31, -1, 12, 12, 13, 18, -66, 14, 16, 3, 17, 3, 12, 18, -66, 12, 19, 10, 10, -66, 20, 7, 3, 21};
    }

    public AnonymousClass98(AnonymousClass99 anonymousClass99) {
        this.A00 = anonymousClass99;
    }

    private void A02(InstreamVideoAdView instreamVideoAdView) {
        S6 s6A01 = SA.A01(this.A00.A0A, this.A00.A08);
        if (s6A01 != null) {
            instreamVideoAdView.addView(s6A01, new RelativeLayout.LayoutParams(-1, -1));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0C() {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.97
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A00.A02 == null) {
                    return;
                }
                this.A00.A00.A02.onAdVideoComplete(this.A00.A00.A0C);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0D() {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.95
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A00.A02 == null) {
                    return;
                }
                this.A00.A00.A02.onAdClicked(this.A00.A00.A0C);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0E() {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.96
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A00.A02 == null) {
                    return;
                }
                this.A00.A00.A02.onLoggingImpression(this.A00.A00.A0C);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0F(View view) {
        final AnonymousClass98 anonymousClass98 = this;
        char c = view == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A00(0, 24, 112));
                case 3:
                    anonymousClass98 = anonymousClass98;
                    view = view;
                    anonymousClass98.A00.A01 = view;
                    anonymousClass98.A00.A0C.removeAllViews();
                    anonymousClass98.A00.A01.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    anonymousClass98.A00.A0C.addView(anonymousClass98.A00.A01);
                    anonymousClass98.A02(anonymousClass98.A00.A0C);
                    if (Build.VERSION.SDK_INT < 18) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass98 = anonymousClass98;
                    if (!K1.A12(anonymousClass98.A00.A0A)) {
                        c = '\t';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass98 = anonymousClass98;
                    anonymousClass98.A00.A06 = new SL();
                    anonymousClass98.A00.A06.A0C(anonymousClass98.A00.A0D);
                    anonymousClass98.A00.A06.A0B(anonymousClass98.A00.A0A.getPackageName());
                    if (anonymousClass98.A00.A04 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    anonymousClass98 = anonymousClass98;
                    if (anonymousClass98.A00.A04.A07() == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass98 = anonymousClass98;
                    anonymousClass98.A00.A06.A09(anonymousClass98.A00.A04.A07().A0C());
                    c = '\b';
                    break;
                case '\b':
                    anonymousClass98 = anonymousClass98;
                    anonymousClass98.A00.A01.getOverlay().add(anonymousClass98.A00.A06);
                    anonymousClass98.A00.A01.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.facebook.ads.redexgen.X.94
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view2) {
                            AnonymousClass94 anonymousClass94 = this;
                            SL sl = null;
                            boolean z = true;
                            boolean z2 = false;
                            char c2 = anonymousClass94.A00.A00.A01 != null ? (char) 2 : (char) 3;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        anonymousClass94 = anonymousClass94;
                                        if (anonymousClass94.A00.A00.A06 != null) {
                                            c2 = 5;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 3:
                                        z2 = false;
                                        z = false;
                                        c2 = 4;
                                        break;
                                    case 4:
                                        return z;
                                    case 5:
                                        anonymousClass94 = anonymousClass94;
                                        z2 = false;
                                        anonymousClass94.A00.A00.A06.setBounds(0, 0, anonymousClass94.A00.A00.A01.getWidth(), anonymousClass94.A00.A00.A01.getHeight());
                                        sl = anonymousClass94.A00.A00.A06;
                                        if (!anonymousClass94.A00.A00.A06.A0E()) {
                                            c2 = 6;
                                            break;
                                        } else {
                                            c2 = 7;
                                            break;
                                        }
                                    case 6:
                                        z2 = z;
                                        c2 = 7;
                                        break;
                                    case 7:
                                        sl = sl;
                                        sl.A0D(z2);
                                        c2 = 4;
                                        break;
                                }
                            }
                        }
                    });
                    c = '\t';
                    break;
                case '\t':
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0G(InterfaceC01851h interfaceC01851h) {
        if (this.A00.A04 == null) {
            return;
        }
        this.A00.A09 = true;
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.93
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A00.A02 == null) {
                    return;
                }
                this.A00.A00.A02.onAdLoaded(this.A00.A00.A0C);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0H(final LQ lq) {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.92
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A00.A02 == null) {
                    return;
                }
                this.A00.A00.A02.onError(this.A00.A00.A0C, LQ.A00(lq));
            }
        });
    }
}
