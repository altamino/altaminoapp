package com.facebook.ads.redexgen.X;

import android.animation.LayoutTransition;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.Nullable;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pg, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0797Pg extends LinearLayout {

    @Nullable
    private InterfaceC0796Pf A00;
    private final RelativeLayout A01;
    private final KX A02;
    private final InterfaceC03688m A03;
    private final R4 A04;
    private final U6 A05;
    public final PJ A06;
    private static final int A08 = (int) (10.0f * OY.A01);
    private static final int A0B = (int) (16.0f * OY.A01);
    private static final int A09 = A0B - A08;
    private static final int A0A = (A0B * 2) - A08;
    public static final int A07 = (int) (56.0f * OY.A01);

    public C0797Pg(Context context, InterfaceC03688m interfaceC03688m, KX kx, int i) {
        super(context);
        this.A03 = interfaceC03688m;
        this.A02 = kx;
        this.A06 = new PJ(context, i);
        this.A04 = new R4(context);
        this.A05 = new U6(context);
        this.A01 = new RelativeLayout(context);
    }

    public C0797Pg(Context context, InterfaceC03688m interfaceC03688m, KX kx, R3 r3, int i) {
        super(context);
        this.A03 = interfaceC03688m;
        this.A02 = kx;
        setGravity(16);
        this.A04 = new R4(context);
        this.A04.setCloseButtonStyle(r3);
        this.A04.setLayoutTransition(new LayoutTransition());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(A09, A09, A0A, A09);
        addView(this.A04, layoutParams);
        this.A01 = new RelativeLayout(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        this.A05 = new U6(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        this.A05.setLayoutParams(layoutParams3);
        this.A01.addView(this.A05);
        addView(this.A01, layoutParams2);
        this.A06 = new PJ(context, i);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams4.setMargins(0, A0B / 2, A0B / 2, A0B / 2);
        addView(this.A06, layoutParams4);
    }

    private void A01() {
        this.A04.setVisibility(8);
        this.A04.setCloseButtonEnabled(false);
        ((LinearLayout.LayoutParams) this.A01.getLayoutParams()).leftMargin = A08;
    }

    private void A02() {
        this.A04.setVisibility(0);
        this.A04.setCloseButtonEnabled(true);
        ((LinearLayout.LayoutParams) this.A01.getLayoutParams()).leftMargin = 0;
    }

    public void A03() {
        OY.A0L(this.A05);
    }

    public void A04(C02282y c02282y, boolean z) {
        C0797Pg c0797Pg = this;
        int iA04 = c02282y.A04(z);
        c0797Pg.A05.A01(c02282y.A0A(z), iA04);
        c0797Pg.A06.setIconColors(iA04);
        c0797Pg.A04.setIconColors(iA04);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0797Pg = c0797Pg;
                    GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-1778384896, 0});
                    gradientDrawable.setCornerRadius(0.0f);
                    OY.A0S(c0797Pg, gradientDrawable);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0797Pg = c0797Pg;
                    OY.A0P(c0797Pg, 0);
                    c = 3;
                    break;
            }
        }
    }

    public final void A05(boolean z) {
        int i = 0;
        PJ pj = this.A06;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    pj.setVisibility(i);
                    return;
                case 4:
                    i = 8;
                    c = 3;
                    break;
            }
        }
    }

    public boolean A06() {
        return this.A04.A00();
    }

    public int getToolbarHeight() {
        return A07;
    }

    @Nullable
    public InterfaceC0796Pf getToolbarListener() {
        return this.A00;
    }

    public void setCloseButtonStyle(R3 r3) {
        this.A04.setCloseButtonStyle(r3);
    }

    public void setPageDetails(AnonymousClass38 anonymousClass38, String str, int i, C3G c3g) {
        boolean z = false;
        this.A05.setPageDetails(anonymousClass38);
        A02();
        R4 r4 = this.A04;
        char c = i <= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    C0797Pg c0797Pg = this;
                    r4.setCloseButtonEnabled(z);
                    c0797Pg.A06.setAdDetails(anonymousClass38, str, c0797Pg.A02, c0797Pg.A03);
                    return;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public void setPageDetailsVisibility(int i) {
        this.A01.setVisibility(i);
    }

    public void setProgress(float f) {
        this.A04.setProgress(f);
    }

    public void setShowPageDetails(boolean z) {
        this.A01.removeAllViews();
        if (z) {
            this.A01.addView(this.A05);
        }
    }

    public void setToolbarActionMessage(String str) {
    }

    public void setToolbarActionMode(@ToolbarActionView$ToolbarActionMode int i) {
        C0797Pg c0797Pg = this;
        char c = i == 1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0797Pg = c0797Pg;
                    c0797Pg.setCloseButtonStyle(R3.A02);
                    c0797Pg.A02();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (i != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0797Pg = c0797Pg;
                    c0797Pg.setCloseButtonStyle(R3.A03);
                    c0797Pg.A02();
                    c = 3;
                    break;
                case 6:
                    if (i != 3) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0797Pg = c0797Pg;
                    c0797Pg.setCloseButtonStyle(R3.A04);
                    c0797Pg.A02();
                    c = 3;
                    break;
                case '\b':
                    if (i != 4) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c0797Pg = c0797Pg;
                    c0797Pg.A01();
                    c = 3;
                    break;
            }
        }
    }

    public void setToolbarListener(InterfaceC0796Pf interfaceC0796Pf) {
        this.A00 = interfaceC0796Pf;
        this.A04.setCloseClickListener(new ViewOnClickListenerC0795Pe(this));
    }
}
