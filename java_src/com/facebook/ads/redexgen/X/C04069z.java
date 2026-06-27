package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.View;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9z, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C04069z extends AbstractC01861i {
    private static byte[] A02;
    private View A00;
    private C03638h A01;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 4);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{118, -108, -95, -95, -94, -89, 83, -93, -91, -104, -90, -104, -95, -89, 83, -95, -88, -97, -97, 83, -108, -105, -119, -100, -104, -86};
    }

    public C04069z(C03638h c03638h) {
        this.A01 = c03638h;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0D() {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.9x
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A01.A05() == null) {
                    return;
                }
                this.A00.A01.A05().onAdClicked(this.A00.A01.A06());
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0E() {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.9y
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A01.A05() == null) {
                    return;
                }
                this.A00.A01.A05().onLoggingImpression(this.A00.A01.A06());
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0F(View view) {
        final C04069z c04069z = this;
        final SL sl = null;
        char c = view == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A02(0, 26, 47));
                case 3:
                    c04069z = c04069z;
                    view = view;
                    c04069z.A00 = view;
                    c04069z.A01.A06().removeAllViews();
                    c04069z.A01.A06().addView(c04069z.A00);
                    if (!(c04069z.A00 instanceof SI)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c04069z = c04069z;
                    LY.A03(c04069z.A01.A04(), c04069z.A00, c04069z.A01.A08());
                    c = 5;
                    break;
                case 5:
                    c04069z = c04069z;
                    MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.9v
                        @Override // com.facebook.ads.redexgen.X.C2M
                        public final void A01() {
                            if (this.A00.A01.A05() == null) {
                                return;
                            }
                            this.A00.A01.A05().onAdLoaded(this.A00.A01.A06());
                        }
                    });
                    c04069z.A01.A09(c04069z.A01.A06(), c04069z.A00);
                    if (Build.VERSION.SDK_INT < 18) {
                        c = '\r';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c04069z = c04069z;
                    if (!K1.A12(c04069z.A01.A06().getContext())) {
                        c = '\r';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c04069z = c04069z;
                    sl = new SL();
                    c04069z.A01.A0A(sl);
                    sl.A0C(c04069z.A01.getPlacementId());
                    sl.A0B(c04069z.A01.A06().getContext().getPackageName());
                    if (c04069z.A01.A07() == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c04069z = c04069z;
                    if (c04069z.A01.A07().A07() == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c04069z = c04069z;
                    sl = sl;
                    sl.A09(c04069z.A01.A07().A07().A0C());
                    c = '\n';
                    break;
                case '\n':
                    c04069z = c04069z;
                    if (!(c04069z.A00 instanceof SI)) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c04069z = c04069z;
                    sl = sl;
                    sl.A0A(((SI) c04069z.A00).getViewabilityChecker());
                    c = '\f';
                    break;
                case '\f':
                    c04069z = c04069z;
                    sl = sl;
                    c04069z.A00.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.facebook.ads.redexgen.X.9w
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view2) {
                            ViewOnLongClickListenerC04039w viewOnLongClickListenerC04039w = this;
                            SL sl2 = null;
                            boolean z = false;
                            char c2 = viewOnLongClickListenerC04039w.A00.A00 != null ? (char) 2 : (char) 5;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        viewOnLongClickListenerC04039w = viewOnLongClickListenerC04039w;
                                        z = false;
                                        sl.setBounds(0, 0, viewOnLongClickListenerC04039w.A00.A00.getWidth(), viewOnLongClickListenerC04039w.A00.A00.getHeight());
                                        sl2 = sl;
                                        if (!sl.A0E()) {
                                            c2 = 3;
                                            break;
                                        } else {
                                            c2 = 4;
                                            break;
                                        }
                                    case 3:
                                        z = true;
                                        c2 = 4;
                                        break;
                                    case 4:
                                        sl2 = sl2;
                                        sl2.A0D(z);
                                        c2 = 5;
                                        break;
                                    case 5:
                                        return true;
                                }
                            }
                        }
                    });
                    c04069z.A00.getOverlay().add(sl);
                    c = '\r';
                    break;
                case '\r':
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0G(InterfaceC01851h interfaceC01851h) {
        if (this.A01.A07() != null) {
            this.A01.A07().A0A();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01861i
    public final void A0H(final LQ lq) {
        MD.A00(new C2M() { // from class: com.facebook.ads.redexgen.X.9u
            @Override // com.facebook.ads.redexgen.X.C2M
            public final void A01() {
                if (this.A00.A01.A05() != null) {
                    this.A00.A01.A05().onError(this.A00.A01.A06(), LQ.A00(lq));
                }
            }
        });
    }
}
