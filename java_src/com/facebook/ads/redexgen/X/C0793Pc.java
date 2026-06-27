package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0793Pc extends RelativeLayout implements PK {
    private WeakReference<C8s> A00;
    private boolean A01;
    private boolean A02;
    private final int A03;
    private final LinearLayout A04;
    private final TextView A05;
    private final C02262w A06;
    private final InterfaceC03718p A07;
    private final KM A08;

    @Nullable
    private final KX A09;
    private final C0740Nb A0A;
    private final OP A0B;
    private final InterfaceC03688m A0C;
    private final C0882Sn A0D;
    private final AbstractC02052b A0E;
    private final C6K A0F;
    private static final RelativeLayout.LayoutParams A0J = new RelativeLayout.LayoutParams(-1, -1);
    private static final int A0G = (int) (16.0f * OY.A01);
    private static final int A0I = (int) (56.0f * OY.A01);
    private static final int A0H = (int) (230.0f * OY.A01);

    public C0793Pc(Context context, C02262w c02262w, KM km, InterfaceC03688m interfaceC03688m) {
        super(context);
        this.A0B = new OP();
        this.A07 = new PU(this);
        this.A06 = c02262w;
        this.A08 = km;
        this.A03 = this.A06.A0F().A03() / 1000;
        this.A0C = interfaceC03688m;
        this.A09 = this.A06.A0C() == null ? null : new KX(this.A06.A0C(), this.A08);
        this.A0E = new PV(this);
        this.A0F = new C6K(this, 1, this.A0E);
        this.A0F.A0V(250);
        this.A0D = new C0882Sn(context);
        OY.A0N(this.A0D);
        this.A05 = new TextView(getContext());
        OY.A0N(this.A05);
        this.A04 = new LinearLayout(getContext());
        boolean z = getResources().getConfiguration().orientation == 1;
        A05();
        A0A(z);
        A09(z);
        OY.A0P(this, Color.parseColor(this.A06.A0H()));
        this.A0A = new C0740Nb(this.A03, new C0792Pb(this, this.A06, this.A03));
        this.A0F.A0T();
    }

    private void A05() {
        this.A0D.setProgress(0);
        this.A0D.A01(false, Color.parseColor(this.A06.A0I()), 14);
        this.A0D.setText(this.A06.A0G().A04(String.valueOf(this.A03)));
        OY.A0P(this.A0D, 0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0I);
        layoutParams.addRule(10);
        addView(this.A0D, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(C3D c3d) {
        C0793Pc c0793Pc = this;
        int i = 0;
        KT kt = null;
        C0839Qw c0839Qw = null;
        char c = c0793Pc.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0793Pc = c0793Pc;
                    c0793Pc.A02 = true;
                    c0793Pc.A0A.A06();
                    if (c0793Pc.A0F == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0793Pc = c0793Pc;
                    c0793Pc.A0F.A0U();
                    c = 5;
                    break;
                case 5:
                    c0793Pc = c0793Pc;
                    View view = new View(c0793Pc.getContext());
                    view.setOnClickListener(new PW(c0793Pc));
                    c0793Pc.addView(view, new RelativeLayout.LayoutParams(-1, -1));
                    kt = new KT();
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    c0793Pc = c0793Pc;
                    if (i >= c0793Pc.A04.getChildCount()) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0793Pc = c0793Pc;
                    c3d = c3d;
                    c0839Qw = (C0839Qw) c0793Pc.A04.getChildAt(i);
                    if (c0839Qw.getAdDataBundle() != c3d) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    kt = kt;
                    kt.A06(i);
                    c = '\t';
                    break;
                case '\t':
                    c0839Qw = c0839Qw;
                    c0839Qw.A0C();
                    i++;
                    c = 6;
                    break;
                case '\n':
                    c0793Pc = c0793Pc;
                    c3d = c3d;
                    kt = kt;
                    c0793Pc.A08(c3d.A0C(), kt);
                    c3d.A07(c0793Pc.A06.A03());
                    c3d.A0E(c0793Pc.A06.A06());
                    c3d.A08(c0793Pc.A06.A04());
                    OY.A0K(c0793Pc);
                    c0793Pc.A0C.A2g(J8.A05.A02(), new PX(c3d));
                    if (c0793Pc.A00 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c0793Pc = c0793Pc;
                    if (c0793Pc.A00.get() == null) {
                        c = 2;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c0793Pc = c0793Pc;
                    c0793Pc.A00.get().A0O(c0793Pc.A07);
                    c = 2;
                    break;
            }
        }
    }

    private void A08(String str, KT kt) {
        kt.A04(((int) (this.A03 - this.A0A.A03())) * 1000);
        kt.A07(this.A03 * 1000);
        kt.A05(this.A06.A0K().size());
        kt.A08(this.A0A.A04());
        kt.A03(this.A06.A0F().A04());
        this.A08.A49(str, new SN().A04(this.A0F).A03(this.A0B).A02(kt).A06(true).A07());
    }

    private void A09(boolean z) {
        int i = 0;
        this.A04.setPadding(A0G / 2, A0G / 2, A0G / 2, A0G / 2);
        LinearLayout linearLayout = this.A04;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = 1;
                    c = 3;
                    break;
                case 3:
                    C0793Pc c0793Pc = this;
                    linearLayout.setOrientation(i);
                    c0793Pc.A0B(z, c0793Pc.A06.A0K());
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(3, c0793Pc.A05.getId());
                    c0793Pc.addView(c0793Pc.A04, layoutParams);
                    return;
                case 4:
                    i = 0;
                    c = 3;
                    break;
            }
        }
    }

    private void A0A(boolean z) {
        this.A05.setText(this.A06.A0G().A03());
        OY.A0Y(this.A05, true, 32);
        this.A05.setTextColor(Color.parseColor(this.A06.A0J()));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(z ? A0H : -1, -2);
        layoutParams.setMargins(A0G, 0, A0G, A0G / 2);
        layoutParams.addRule(3, this.A0D.getId());
        addView(this.A05, layoutParams);
    }

    /* JADX WARN: Incorrect condition in loop: B:11:0x0027 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0B(boolean r18, java.util.List<com.facebook.ads.redexgen.X.C3D> r19) {
        /*
            r17 = this;
            r3 = r17
            android.widget.LinearLayout r1 = r3.A04
            int r0 = r19.size()
            float r0 = (float) r0
            r1.setWeightSum(r0)
            int r1 = r19.size()
            r0 = 2
            if (r1 != r0) goto Lb2
            r9 = 1
        L14:
            int r1 = r19.size()
            r0 = 3
            if (r1 < r0) goto Laf
            if (r18 != 0) goto Laf
            r2 = 1
        L1e:
            r8 = 0
            java.util.Iterator r7 = r19.iterator()
        L23:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto Lb5
            java.lang.Object r12 = r7.next()
            com.facebook.ads.redexgen.X.3D r12 = (com.facebook.ads.redexgen.X.C3D) r12
            com.facebook.ads.redexgen.X.Qw r10 = new com.facebook.ads.redexgen.X.Qw
            android.content.Context r11 = r3.getContext()
            com.facebook.ads.redexgen.X.KM r13 = r3.A08
            com.facebook.ads.redexgen.X.6K r14 = r3.A0F
            com.facebook.ads.redexgen.X.OP r15 = r3.A0B
            com.facebook.ads.redexgen.X.8m r0 = r3.A0C
            r16 = r0
            r10.<init>(r11, r12, r13, r14, r15, r16)
            r10.setShouldPlayButtonOnTop(r2)
            com.facebook.ads.redexgen.X.2w r0 = r3.A06
            com.facebook.ads.redexgen.X.2o r0 = r0.A0F()
            boolean r0 = r0.A06()
            r10.A0G(r0)
            r0 = 10
            r10.setRadius(r0)
            android.widget.LinearLayout$LayoutParams r4 = new android.widget.LinearLayout$LayoutParams
            if (r18 == 0) goto Lad
            r1 = -1
        L5c:
            if (r18 == 0) goto Lab
            r0 = 0
        L5f:
            r4.<init>(r1, r0)
            int r0 = com.facebook.ads.redexgen.X.C0793Pc.A0G
            int r6 = r0 / 2
            int r0 = com.facebook.ads.redexgen.X.C0793Pc.A0G
            int r5 = r0 / 2
            int r0 = com.facebook.ads.redexgen.X.C0793Pc.A0G
            int r1 = r0 / 2
            int r0 = com.facebook.ads.redexgen.X.C0793Pc.A0G
            int r0 = r0 / 2
            r4.setMargins(r6, r5, r1, r0)
            r0 = 1065353216(0x3f800000, float:1.0)
            r4.weight = r0
            com.facebook.ads.redexgen.X.PY r0 = new com.facebook.ads.redexgen.X.PY
            r0.<init>(r3, r10)
            r10.setOnTouchListener(r0)
            r10.setOnClickListener(r0)
            com.facebook.ads.redexgen.X.Pa r0 = new com.facebook.ads.redexgen.X.Pa
            r0.<init>(r3, r10)
            r10.setAdReportingFlowListener(r0)
            if (r9 == 0) goto La0
            int r0 = r8 % 2
            if (r0 == 0) goto La9
            r1 = 1
        L93:
            com.facebook.ads.redexgen.X.2w r0 = r3.A06
            com.facebook.ads.redexgen.X.2o r0 = r0.A0F()
            int r0 = r0.A05()
            r10.A0H(r1, r0)
        La0:
            android.widget.LinearLayout r0 = r3.A04
            r0.addView(r10, r4)
            int r8 = r8 + 1
            goto L23
        La9:
            r1 = 0
            goto L93
        Lab:
            r0 = -1
            goto L5f
        Lad:
            r1 = 0
            goto L5c
        Laf:
            r2 = 0
            goto L1e
        Lb2:
            r9 = 0
            goto L14
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0793Pc.A0B(boolean, java.util.List):void");
    }

    public final void A0D() {
        C0793Pc c0793Pc = this;
        boolean zA0I = true;
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    c0793Pc = c0793Pc;
                    int i3 = c0793Pc.A04.getChildCount();
                    if (i >= i3) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c0793Pc = c0793Pc;
                    C0839Qw c0839Qw = (C0839Qw) c0793Pc.A04.getChildAt(i);
                    zA0I &= c0839Qw.A0I();
                    c0839Qw.A0C();
                    i++;
                    i2 = 2;
                    break;
                case 4:
                    if (!zA0I) {
                        i2 = 7;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 5:
                    c0793Pc = c0793Pc;
                    if (c0793Pc.A0C == null) {
                        i2 = 7;
                        break;
                    } else {
                        i2 = 6;
                        break;
                    }
                case 6:
                    c0793Pc = c0793Pc;
                    c0793Pc.A0C.A2f(J8.A09.A02());
                    i2 = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    public final void A0E(boolean z) {
        C0793Pc c0793Pc = this;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c0793Pc = c0793Pc;
                    if (i >= c0793Pc.A04.getChildCount()) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0793Pc = c0793Pc;
                    ((C0839Qw) c0793Pc.A04.getChildAt(i)).A0A();
                    c = 5;
                    break;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    c0793Pc = c0793Pc;
                    ((C0839Qw) c0793Pc.A04.getChildAt(i)).A0B();
                    c = 5;
                    break;
                case 7:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A45(Intent intent, Bundle bundle, C8s c8s) {
        if (this.A0C == null) {
            return;
        }
        this.A0C.A2Z(this, A0J);
        c8s.A0N(this.A07);
        this.A00 = new WeakReference<>(c8s);
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A5x(boolean z) {
        this.A0A.A06();
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A67(boolean z) {
        C0793Pc c0793Pc = this;
        char c = !c0793Pc.A02 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (!z) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0793Pc = c0793Pc;
                    if (!c0793Pc.A01) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    c0793Pc = c0793Pc;
                    c0793Pc.A0A.A07();
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A6x(Bundle bundle) {
        this.A0A.A06();
    }

    public final OP getTouchDataRecorder() {
        return this.A0B;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C0793Pc c0793Pc = this;
        RelativeLayout.LayoutParams layoutParams = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        int i2 = 0;
        LinearLayout linearLayout = null;
        int i3 = 0;
        char c = configuration.orientation == 1 ? (char) 2 : (char) 16;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    c0793Pc = c0793Pc;
                    layoutParams = (RelativeLayout.LayoutParams) c0793Pc.A05.getLayoutParams();
                    if (!z) {
                        c = 15;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i2 = A0H;
                    c = 5;
                    break;
                case 5:
                    c0793Pc = c0793Pc;
                    layoutParams = layoutParams;
                    layoutParams.width = i2;
                    linearLayout = c0793Pc.A04;
                    if (!z) {
                        c = 14;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    i = 1;
                    c = 7;
                    break;
                case 7:
                    c0793Pc = c0793Pc;
                    linearLayout = linearLayout;
                    linearLayout.setOrientation(i);
                    if (c0793Pc.A06.A0K().size() < 3) {
                        c = '\r';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (!z) {
                        c = '\t';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\t':
                    z2 = true;
                    c = '\n';
                    break;
                case '\n':
                    i3 = 0;
                    c = 11;
                    break;
                case 11:
                    c0793Pc = c0793Pc;
                    if (i3 >= c0793Pc.A04.getChildCount()) {
                        c = 17;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c0793Pc = c0793Pc;
                    C0839Qw c0839Qw = (C0839Qw) c0793Pc.A04.getChildAt(i3);
                    c0839Qw.A0F(z);
                    c0839Qw.setShouldPlayButtonOnTop(z2);
                    i3++;
                    c = 11;
                    break;
                case '\r':
                    z2 = false;
                    c = '\n';
                    break;
                case 14:
                    i = 0;
                    c = 7;
                    break;
                case 15:
                    i2 = -1;
                    c = 5;
                    break;
                case 16:
                    z = false;
                    c = 3;
                    break;
                case 17:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void onDestroy() {
        this.A0A.A06();
        if (this.A0F != null) {
            this.A0F.A0U();
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.A0B.A06(motionEvent, this, this);
        if (motionEvent.getAction() == 1) {
            this.A08.A4L(this.A06.A0K().get(0).A0C(), new SN().A04(this.A0F).A03(this.A0B).A06(true).A07());
        }
        return true;
    }

    public void setIsAdReportingLayoutVisible(boolean z) {
        this.A01 = z;
    }

    public void setListener(InterfaceC03688m interfaceC03688m) {
    }
}
