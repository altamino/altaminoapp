package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class RF implements PK {
    private static byte[] A0A;
    private int A00;
    private MA A01;
    private final C8s A02;
    private final KM A03;
    private final InterfaceC03688m A04;
    private final QL A05;
    private final C9N A09 = new R9(this);
    private final C9P A08 = new RA(this);
    private final C9T A06 = new RB(this);
    private final C9X A07 = new RC(this);

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A0A = new byte[]{11, -2, -7, -6, 4, -30, -27, -39, -44, -57, -62, -61, -51, -77, -80, -86, -34, -47, -52, -51, -41, -79, -42, -36, -51, -38, -37, -36, -47, -36, -55, -44, -83, -34, -51, -42, -36, 66, 64, 50, 27, 46, 65, 54, 67, 50, 16, 65, 46, 15, 66, 65, 65, 60, 59, -68, -48, -49, -54, -53, -57, -68, -44, -1, 8, 5, 1, 10, 16, -16, 11, 7, 1, 10, 38, 25, 20, 21, 31, 3, 21, 21, 27, 4, 25, 29, 21, -11, -24, -29, -28, -18, -53, -18, -26, -26, -28, -15};
    }

    public RF(C8s c8s, KM km, InterfaceC03688m interfaceC03688m) {
        this.A02 = c8s;
        this.A03 = km;
        this.A05 = new QL(c8s.A0M());
        this.A05.A0Q(new C0626Im(c8s.A0M()));
        this.A05.getEventBus().A03(this.A09, this.A08, this.A06, this.A07);
        this.A04 = interfaceC03688m;
        this.A05.setIsFullScreen(true);
        this.A05.setVolume(1.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        interfaceC03688m.A2Z(this.A05, layoutParams);
        C0794Pd c0794Pd = new C0794Pd(c8s.A0M());
        c0794Pd.setOnClickListener(new RD(this, c8s));
        interfaceC03688m.A2Z(c0794Pd, c0794Pd.getDefaultLayoutParams());
    }

    public final void A04(int i) {
        this.A05.setVideoProgressReportIntervalMs(i);
    }

    public final void A05(View view) {
        this.A05.setControlsAnchorView(view);
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A45(Intent intent, Bundle bundle, C8s c8s) {
        C8s c8s2 = c8s;
        RF rf = this;
        boolean z = false;
        String stringExtra = intent.getStringExtra(A02(37, 18, 120));
        char c = stringExtra != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    stringExtra = stringExtra;
                    if (!stringExtra.isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    rf = rf;
                    c8s2 = c8s2;
                    stringExtra = stringExtra;
                    U5 u5 = new U5(c8s2.A0M(), stringExtra);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    int i = (int) (16.0f * OY.A01);
                    layoutParams.setMargins(i, i, i, i);
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    u5.setOnClickListener(new RE(rf));
                    rf.A04.A2Z(u5, layoutParams);
                    c = 4;
                    break;
                case 4:
                    rf = rf;
                    intent = intent;
                    c8s2 = c8s2;
                    z = false;
                    rf.A00 = intent.getIntExtra(A02(74, 13, 91), 0);
                    rf.A01 = new MA((Context) c8s2.A0M(), rf.A03, rf.A05, intent.getStringExtra(A02(63, 11, 71)), intent.getBundleExtra(A02(87, 11, 42)));
                    rf.A05.setVideoMPD(intent.getStringExtra(A02(0, 8, 64)));
                    rf.A05.setVideoURI(intent.getStringExtra(A02(8, 8, 9)));
                    if (rf.A00 <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    rf = rf;
                    rf.A05.A0O(rf.A00);
                    c = 6;
                    break;
                case 6:
                    intent = intent;
                    String ctaText = A02(55, 8, 6);
                    if (!intent.getBooleanExtra(ctaText, z)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    rf = rf;
                    rf.A05.A0P(EnumC0697Lh.A05);
                    c = '\b';
                    break;
                case '\b':
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A5x(boolean z) {
        this.A04.A2g(A02(16, 21, 19), new C0666Kb());
        this.A05.A0K();
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A67(boolean z) {
        this.A04.A2g(A02(16, 21, 19), new KV());
        this.A05.A0P(EnumC0697Lh.A05);
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A6x(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void onDestroy() {
        this.A04.A2g(A02(16, 21, 19), new C0662Jx(this.A00, this.A05.getCurrentPositionInMillis()));
        this.A01.A0c(this.A05.getCurrentPositionInMillis());
        this.A05.A0N();
        this.A05.A0J();
    }
}
