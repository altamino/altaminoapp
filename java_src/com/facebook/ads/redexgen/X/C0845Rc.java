package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.transition.ChangeBounds;
import android.transition.Explode;
import android.transition.TransitionSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Rc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0845Rc extends RU {
    private static final int A01 = (int) (8.0f * OY.A01);
    private final RelativeLayout A00;

    public C0845Rc(Context context, KM km, String str, AnonymousClass38 anonymousClass38, PK pk, InterfaceC03688m interfaceC03688m) {
        super(context, km, str, anonymousClass38, pk, interfaceC03688m);
        this.A00 = new RelativeLayout(getContext());
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        OY.A0P(this.A00, -1728053248);
        this.A00.setOnClickListener(new RY(this));
    }

    private static RelativeLayout.LayoutParams A0A(boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, z ? -1 : -2);
        layoutParams.addRule(12);
        return layoutParams;
    }

    private void A0B() {
        C0845Rc c0845Rc = this;
        char c = Build.VERSION.SDK_INT >= 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0845Rc = c0845Rc;
                    TransitionSet transitionSet = new TransitionSet();
                    transitionSet.setOrdering(0);
                    transitionSet.addTransition(new ChangeBounds()).addTransition(new Explode());
                    OY.A0W(c0845Rc, transitionSet);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0845Rc = c0845Rc;
                    OY.A0U(c0845Rc);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0K() {
        C02684m c02684mA03 = C02654j.A03(getContext());
        C0853Rk c0853Rk = new C0853Rk(getContext());
        c0853Rk.setInfo(EnumC0768Od.HIDE_AD, C02654j.A0B(getContext()), C02654j.A0A(getContext()));
        c0853Rk.setOnClickListener(new RZ(this));
        C02684m c02684mA04 = C02654j.A04(getContext());
        C0853Rk c0853Rk2 = new C0853Rk(getContext());
        c0853Rk2.setInfo(EnumC0768Od.REPORT_AD, C02654j.A0F(getContext()), C02654j.A0E(getContext()));
        c0853Rk2.setOnClickListener(new ViewOnClickListenerC0843Ra(this));
        C0853Rk c0853Rk3 = new C0853Rk(getContext());
        c0853Rk3.setInfo(EnumC0768Od.AD_CHOICES_ICON, C02654j.A0G(getContext()), "");
        c0853Rk3.setOnClickListener(new ViewOnClickListenerC0844Rb(this));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setClickable(true);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A01 * 2, A01, A01 * 2, A01);
        OY.A0P(linearLayout, -1);
        char c = !c02684mA03.A05().isEmpty() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0853Rk = c0853Rk;
                    layoutParams = layoutParams;
                    linearLayout = linearLayout;
                    linearLayout.addView(c0853Rk, layoutParams);
                    c = 3;
                    break;
                case 3:
                    c02684mA04 = c02684mA04;
                    if (!c02684mA04.A05().isEmpty()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    c0853Rk2 = c0853Rk2;
                    layoutParams = layoutParams;
                    linearLayout = linearLayout;
                    linearLayout.addView(c0853Rk2, layoutParams);
                    c = 5;
                    break;
                case 5:
                    C0845Rc c0845Rc = this;
                    LinearLayout linearLayout2 = linearLayout;
                    linearLayout2.addView(c0853Rk3, layoutParams);
                    c0845Rc.A0B();
                    c0845Rc.A00.removeAllViews();
                    c0845Rc.A00.addView(linearLayout2, A0A(false));
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0L() {
        OY.A0J(this);
        this.A00.removeAllViews();
        OY.A0L(this);
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0M(C02684m c02684m, EnumC02664k enumC02664k) {
        C02684m c02684m2 = c02684m;
        EnumC02664k enumC02664k2 = enumC02664k;
        C0845Rc c0845Rc = this;
        String strA01 = null;
        boolean z = false;
        String strA09 = null;
        RQ rqA0F = null;
        int i = 0;
        RQ rqA0G = null;
        EnumC0768Od enumC0768Od = null;
        RQ rqA0E = null;
        RQ rqA0D = null;
        char c = enumC02664k2 == EnumC02664k.A04 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    enumC02664k2 = enumC02664k2;
                    if (enumC02664k2 != EnumC02664k.A05) {
                        c = 18;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    c0845Rc = c0845Rc;
                    rqA0F = new RQ(c0845Rc.getContext()).A0F(c0845Rc.A0B);
                    if (!z) {
                        c = 17;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0845Rc = c0845Rc;
                    strA09 = C02654j.A09(c0845Rc.getContext());
                    c = 7;
                    break;
                case 7:
                    c0845Rc = c0845Rc;
                    c02684m2 = c02684m2;
                    rqA0F = rqA0F;
                    strA09 = strA09;
                    rqA0G = rqA0F.A0J(strA09).A0I(C02654j.A07(c0845Rc.getContext())).A0G(c02684m2.A04());
                    if (!z) {
                        c = 16;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    enumC0768Od = EnumC0768Od.REPORT_AD;
                    c = '\t';
                    break;
                case '\t':
                    rqA0G = rqA0G;
                    enumC0768Od = enumC0768Od;
                    rqA0E = rqA0G.A0E(enumC0768Od);
                    if (!z) {
                        c = 15;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    i = -552389;
                    c = 11;
                    break;
                case 11:
                    c0845Rc = c0845Rc;
                    rqA0E = rqA0E;
                    rqA0D = rqA0E.A0D(i);
                    if (c0845Rc.A0A == null) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c0845Rc = c0845Rc;
                    strA01 = c0845Rc.A0A.A01();
                    c = '\r';
                    break;
                case '\r':
                    c0845Rc = c0845Rc;
                    rqA0D = rqA0D;
                    strA01 = strA01;
                    RR rrA0P = rqA0D.A0H(strA01).A0K(((RU) c0845Rc).A00).A0P();
                    OY.A0P(rrA0P, -1);
                    OY.A0U(c0845Rc);
                    c0845Rc.A00.removeAllViews();
                    c0845Rc.A00.addView(rrA0P, A0A(true));
                    c = 2;
                    break;
                case 14:
                    strA01 = "";
                    c = '\r';
                    break;
                case 15:
                    i = -13272859;
                    c = 11;
                    break;
                case 16:
                    enumC0768Od = EnumC0768Od.HIDE_AD;
                    c = '\t';
                    break;
                case 17:
                    c0845Rc = c0845Rc;
                    strA09 = C02654j.A08(c0845Rc.getContext());
                    c = 7;
                    break;
                case 18:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0N(C02684m c02684m, EnumC02664k enumC02664k) {
        boolean isReportFlow = enumC02664k == EnumC02664k.A05;
        C0856Rn c0856Rn = new C0856Rn(getContext(), c02684m, this.A0B, isReportFlow ? C02654j.A0F(getContext()) : C02654j.A0B(getContext()), isReportFlow ? EnumC0768Od.REPORT_AD : EnumC0768Od.HIDE_AD);
        c0856Rn.setClickable(true);
        OY.A0P(c0856Rn, -1);
        c0856Rn.setPadding(A01 * 2, A01, A01 * 2, A01);
        A0B();
        this.A00.removeAllViews();
        this.A00.addView(c0856Rn, A0A(false));
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final boolean A0P() {
        return false;
    }
}
