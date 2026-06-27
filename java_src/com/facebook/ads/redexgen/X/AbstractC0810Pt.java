package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pt, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC0810Pt extends RelativeLayout implements PK {

    @Nullable
    private C0740Nb A00;

    @Nullable
    private C0813Pw A01;

    @Nullable
    private Q6 A02;
    private boolean A03;
    private boolean A04;
    public C02172n A05;
    private final OJ A06;
    private final InterfaceC03688m A07;
    public final AnonymousClass31 A08;
    public final KM A09;
    public final KX A0A;
    public final C0797Pg A0B;

    public AbstractC0810Pt(Context context, KM km, InterfaceC03688m interfaceC03688m, AnonymousClass31 anonymousClass31) {
        super(context.getApplicationContext());
        this.A03 = false;
        this.A09 = km;
        this.A07 = interfaceC03688m;
        this.A06 = new OJ(this);
        this.A08 = anonymousClass31;
        this.A0A = new KX(this.A08.A0D(), this.A09);
        this.A04 = ((this instanceof Q9) && K1.A1l(context)) || ((this instanceof C0811Pu) && K1.A1j(context));
        if (this.A04 && K1.A1k(context)) {
            this.A0B = new C0799Pi(getContext(), getAudienceNetworkListener(), this.A0A, 0, anonymousClass31.A04());
        } else {
            this.A0B = new C0797Pg(getContext(), getAudienceNetworkListener(), this.A0A, R3.A03, this.A08.A04());
        }
    }

    private C02282y A00(int i) {
        AbstractC0810Pt abstractC0810Pt = this;
        C02282y c02282yA01 = null;
        char c = i == 1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0810Pt = abstractC0810Pt;
                    c02282yA01 = abstractC0810Pt.A05.A01();
                    c = 3;
                    break;
                case 3:
                    return c02282yA01;
                case 4:
                    abstractC0810Pt = abstractC0810Pt;
                    c02282yA01 = abstractC0810Pt.A05.A00();
                    c = 3;
                    break;
            }
        }
    }

    private void A03() {
        removeAllViews();
        OY.A0L(this);
    }

    private void A04() {
        AbstractC0810Pt abstractC0810Pt = this;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        char c = abstractC0810Pt.A0C() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0810Pt = abstractC0810Pt;
                    if (abstractC0810Pt.A01 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    abstractC0810Pt = abstractC0810Pt;
                    layoutParams = layoutParams;
                    abstractC0810Pt.A03 = true;
                    abstractC0810Pt.A01 = new C0813Pw(abstractC0810Pt.getContext(), abstractC0810Pt.A08);
                    KZ.A07(abstractC0810Pt.A01, abstractC0810Pt.A0A, KW.A0V);
                    abstractC0810Pt.A07.A2Y(abstractC0810Pt, 0, layoutParams);
                    abstractC0810Pt.A07.A2Y(abstractC0810Pt.A01, 1, layoutParams);
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setStartOffset(1450L);
                    alphaAnimation.setDuration(200L);
                    alphaAnimation.setAnimationListener(new QD(abstractC0810Pt));
                    abstractC0810Pt.startAnimation(alphaAnimation);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    abstractC0810Pt = abstractC0810Pt;
                    layoutParams = layoutParams;
                    abstractC0810Pt.A07.A2Y(abstractC0810Pt, 0, layoutParams);
                    if (abstractC0810Pt.A02 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    abstractC0810Pt = abstractC0810Pt;
                    abstractC0810Pt.A02.A4q();
                    c = 4;
                    break;
            }
        }
    }

    private void A05(C02282y c02282y, boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.A0B.getToolbarHeight());
        layoutParams.addRule(10);
        this.A0B.A04(c02282y, z);
        addView(this.A0B, layoutParams);
    }

    public final void A07(int i) {
        this.A00 = new C0740Nb(i, new QE(this, i));
        this.A00.A07();
    }

    public final void A08(View view, boolean z, int i) {
        A09(view, z, i, false);
    }

    public final void A09(View view, boolean isDarkBackground, int i, boolean z) {
        AbstractC0810Pt abstractC0810Pt = this;
        C02282y c02282yA00 = null;
        boolean z2 = false;
        int toolbarHeight = 0;
        boolean z3 = false;
        abstractC0810Pt.A06.A05(OI.A02);
        abstractC0810Pt.A03();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        char c = isDarkBackground ? (char) 2 : '\r';
        while (true) {
            switch (c) {
                case 2:
                    z3 = false;
                    toolbarHeight = 0;
                    c = 3;
                    break;
                case 3:
                    abstractC0810Pt = abstractC0810Pt;
                    view = view;
                    layoutParams = layoutParams;
                    z3 = false;
                    layoutParams.setMargins(0, toolbarHeight, 0, 0);
                    abstractC0810Pt.addView(view, layoutParams);
                    c02282yA00 = abstractC0810Pt.A00(i);
                    abstractC0810Pt.A05(c02282yA00, isDarkBackground);
                    if (!z) {
                        c = 4;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case 4:
                    abstractC0810Pt = abstractC0810Pt;
                    if (!abstractC0810Pt.A04) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    if (!isDarkBackground) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z2 = true;
                    c = 7;
                    break;
                case 7:
                    abstractC0810Pt = abstractC0810Pt;
                    c02282yA00 = c02282yA00;
                    OY.A0P(abstractC0810Pt, c02282yA00.A07(z2));
                    if (abstractC0810Pt.A07 == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    abstractC0810Pt = abstractC0810Pt;
                    abstractC0810Pt.A04();
                    if (!isDarkBackground) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    if (Build.VERSION.SDK_INT < 19) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    abstractC0810Pt = abstractC0810Pt;
                    abstractC0810Pt.A06.A05(OI.A03);
                    c = 11;
                    break;
                case 11:
                    return;
                case '\f':
                    z2 = z3;
                    c = 7;
                    break;
                case '\r':
                    abstractC0810Pt = abstractC0810Pt;
                    toolbarHeight = abstractC0810Pt.A0B.getToolbarHeight();
                    c = 3;
                    break;
            }
        }
    }

    public final void A0A(C8s c8s) {
        AbstractC0810Pt abstractC0810Pt = this;
        C0797Pg c0797Pg = null;
        AnonymousClass38 anonymousClass38A0B = null;
        String strA0D = null;
        int iA03 = 0;
        abstractC0810Pt.A06.A04(c8s.A0M().getWindow());
        abstractC0810Pt.A05 = abstractC0810Pt.A08.A09();
        AnonymousClass32 anonymousClass32 = null;
        char c = abstractC0810Pt.A08.A0H() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0810Pt = abstractC0810Pt;
                    iA03 = 0;
                    if (abstractC0810Pt.A08.A0H().get(0) == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    abstractC0810Pt = abstractC0810Pt;
                    anonymousClass32 = abstractC0810Pt.A08.A0H().get(iA03);
                    c = 4;
                    break;
                case 4:
                    abstractC0810Pt = abstractC0810Pt;
                    c0797Pg = abstractC0810Pt.A0B;
                    anonymousClass38A0B = abstractC0810Pt.A08.A0B();
                    strA0D = abstractC0810Pt.A08.A0D();
                    if (anonymousClass32 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    iA03 = anonymousClass32.A03().A03();
                    c = 6;
                    break;
                case 6:
                    AbstractC0810Pt abstractC0810Pt2 = abstractC0810Pt;
                    c0797Pg.setPageDetails(anonymousClass38A0B, strA0D, iA03, abstractC0810Pt2.A08.A0C());
                    abstractC0810Pt2.A0B.setToolbarListener(new QA(abstractC0810Pt2, c8s));
                    return;
            }
        }
    }

    public final void A0B(C8s c8s) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(200L);
        alphaAnimation.setAnimationListener(new QC(this, this, c8s));
        startAnimation(alphaAnimation);
    }

    public final boolean A0C() {
        AbstractC0810Pt abstractC0810Pt = this;
        boolean z = false;
        boolean z2 = false;
        char c = !abstractC0810Pt.A08.A0H().isEmpty() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0810Pt = abstractC0810Pt;
                    z2 = false;
                    if (!abstractC0810Pt.A08.A0H().get(0).A0B()) {
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
                    z = z2;
                    c = 4;
                    break;
            }
        }
    }

    public final boolean A0D() {
        AbstractC0810Pt abstractC0810Pt = this;
        boolean z = false;
        boolean z2 = false;
        char c = !abstractC0810Pt.A08.A0H().isEmpty() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0810Pt = abstractC0810Pt;
                    z2 = false;
                    if (!abstractC0810Pt.A08.A0H().get(0).A0A()) {
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
                    z = z2;
                    c = 4;
                    break;
            }
        }
    }

    public final boolean A0E() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public void A5x(boolean z) {
        AbstractC0810Pt abstractC0810Pt = this;
        char c = abstractC0810Pt.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0810Pt = abstractC0810Pt;
                    if (!abstractC0810Pt.A00.A05()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    abstractC0810Pt = abstractC0810Pt;
                    abstractC0810Pt.A00.A06();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public void A67(boolean z) {
        AbstractC0810Pt abstractC0810Pt = this;
        char c = abstractC0810Pt.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0810Pt = abstractC0810Pt;
                    if (!abstractC0810Pt.A00.A04()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    abstractC0810Pt = abstractC0810Pt;
                    abstractC0810Pt.A00.A07();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public KM getAdEventManager() {
        return this.A09;
    }

    public InterfaceC03688m getAudienceNetworkListener() {
        return this.A07;
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public void onDestroy() {
        this.A06.A03();
        this.A0B.setToolbarListener(null);
        A03();
    }

    public void setListener(InterfaceC03688m interfaceC03688m) {
    }

    public void setOnAdShownListener(Q6 q6) {
        this.A02 = q6;
    }
}
