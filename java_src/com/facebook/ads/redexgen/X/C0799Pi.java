package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pi, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0799Pi extends C0797Pg {
    private static final int A04 = (int) (16.0f * OY.A01);
    private static final int A05 = (int) (72.0f * OY.A01);

    @Nullable
    private InterfaceC0796Pf A00;
    private final KX A01;
    private final InterfaceC03688m A02;
    private final R8 A03;

    public C0799Pi(Context context, InterfaceC03688m interfaceC03688m, KX kx, int i, int i2) {
        super(context, interfaceC03688m, kx, i2);
        this.A03 = new R8(context, i);
        this.A03.setActionClickListener(new ViewOnClickListenerC0798Ph(this));
        this.A06.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.A01 = kx;
        this.A02 = interfaceC03688m;
        FrameLayout frameLayout = new FrameLayout(context);
        addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        setPadding(A04, A04, A04, A04);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        layoutParams.gravity = GravityCompat.START;
        OY.A0Q(this.A03, 8);
        frameLayout.addView(this.A03, layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams2.gravity = GravityCompat.END;
        frameLayout.addView(this.A06, layoutParams2);
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public final void A03() {
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public final void A04(C02282y c02282y, boolean z) {
        this.A03.setColors(c02282y.A04(true));
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public final boolean A06() {
        return this.A03.A02();
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public int getToolbarHeight() {
        return A05;
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    @Nullable
    public InterfaceC0796Pf getToolbarListener() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public void setCloseButtonStyle(R3 r3) {
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public void setPageDetails(AnonymousClass38 anonymousClass38, String str, int i, C3G c3g) {
        this.A03.setInitialUnskippableSeconds(i);
        this.A03.setSkipMessage(c3g.A01());
        OY.A0Q(this.A03, 0);
        this.A06.setAdDetails(anonymousClass38, str, this.A01, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public void setPageDetailsVisibility(int i) {
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public void setProgress(float f) {
        this.A03.setProgress(f);
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public void setShowPageDetails(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public void setToolbarActionMessage(String str) {
        this.A03.setToolbarMessage(str);
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public void setToolbarActionMode(@ToolbarActionView$ToolbarActionMode int i) {
        this.A03.setToolbarActionMode(i);
    }

    @Override // com.facebook.ads.redexgen.X.C0797Pg
    public void setToolbarListener(InterfaceC0796Pf interfaceC0796Pf) {
        this.A00 = interfaceC0796Pf;
    }
}
