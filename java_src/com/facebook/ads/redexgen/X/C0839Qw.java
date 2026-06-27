package com.facebook.ads.redexgen.X;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0839Qw extends C0878Sj {
    private static byte[] A0H;
    private static final int A0I;
    private static final int A0J;
    private static final int A0K;
    private static final int A0L;
    private static final int A0M;
    private ObjectAnimator A00;
    private ImageView A01;
    private RelativeLayout A02;

    @Nullable
    private EnumC02664k A03;

    @Nullable
    private C02684m A04;
    private C0885Sq A05;
    private C0438Bg A06;
    private boolean A07;
    private boolean A08;
    private boolean A09;
    private boolean A0A;
    private boolean A0B;
    private final C3D A0C;
    private final KM A0D;
    private final OP A0E;
    private final C6K A0F;
    private final Map<String, String> A0G;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 37);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A0H = new byte[]{-71, -87, -89, -78, -85, -98, -105, -102, -107, -97, -92, -86, -88, -91, -107, -90, -91, -87, -97, -86, -97, -91, -92, -16, -32, -34, -23, -30, -42, -22, -12, -32, -28, -6, -16, -30};
    }

    static {
        A04();
        A0K = (int) (48.0f * OY.A01);
        A0M = (int) (40.0f * OY.A01);
        A0J = (int) (16.0f * OY.A01);
        A0I = (int) (56.0f * OY.A01);
        A0L = (int) (200.0f * OY.A01);
    }

    public C0839Qw(Context context, C3D c3d, KM km, C6K c6k, OP op, InterfaceC03688m interfaceC03688m) {
        super(context);
        this.A0G = new HashMap();
        this.A07 = false;
        this.A0C = c3d;
        this.A0D = km;
        this.A0F = c6k;
        this.A0E = op;
        this.A01 = new C0837Qu(context);
        this.A06 = new C0438Bg(context, true, null);
        this.A06.setClickable(false);
        A02();
        A07(c3d.A0C(), interfaceC03688m);
        A08(this.A0B);
    }

    private View A00(C02684m c02684m, EnumC02664k enumC02664k) {
        C0839Qw c0839Qw = this;
        String strA09 = null;
        EnumC0768Od enumC0768Od = null;
        int i = 0;
        char c = enumC02664k == EnumC02664k.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0839Qw = c0839Qw;
                    strA09 = C02654j.A09(c0839Qw.getContext());
                    enumC0768Od = EnumC0768Od.REPORT_AD;
                    i = -552389;
                    c = 3;
                    break;
                case 3:
                    C0839Qw c0839Qw2 = c0839Qw;
                    return new RQ(c0839Qw2.getContext()).A0J(strA09).A0I(C02654j.A07(c0839Qw2.getContext())).A0G(c02684m.A04()).A0M(false).A0E(enumC0768Od).A0D(i).A0H(c0839Qw2.A0C.A0N().A01()).A0O(false).A0L(false).A0N(false).A0P();
                case 4:
                    c0839Qw = c0839Qw;
                    strA09 = C02654j.A08(c0839Qw.getContext());
                    enumC0768Od = EnumC0768Od.HIDE_AD;
                    i = -13272859;
                    c = 3;
                    break;
            }
        }
    }

    private void A02() {
        this.A01.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(this.A01, new RelativeLayout.LayoutParams(-1, -1));
        new SM(this.A01).A04().A06(new C0840Qx(this)).A07(this.A0C.A0H().A06());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        C0839Qw c0839Qw = this;
        char c = c0839Qw.A0A ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0839Qw = c0839Qw;
                    if (!c0839Qw.A09) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0839Qw = c0839Qw;
                    c0839Qw.A0G.put(A01(29, 7, 92), Boolean.TRUE.toString());
                    c0839Qw.A0D.A4P(c0839Qw.A0C.A0C(), new SN(c0839Qw.A0G).A04(c0839Qw.A0F).A03(c0839Qw.A0E).A07());
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A05(C02684m c02684m, EnumC02664k enumC02664k) {
        C0839Qw c0839Qw = this;
        boolean z = false;
        View viewA00 = null;
        char c = c0839Qw.getWidth() >= A0L ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    c0839Qw = c0839Qw;
                    if (c0839Qw.getHeight() < A0L) {
                        c = '\b';
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
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0839Qw = c0839Qw;
                    c02684m = c02684m;
                    enumC02664k = enumC02664k;
                    viewA00 = c0839Qw.A00(c02684m, enumC02664k);
                    c = 6;
                    break;
                case 6:
                    C0839Qw c0839Qw2 = c0839Qw;
                    View view = viewA00;
                    OY.A0P(view, -1);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(13);
                    view.setLayoutParams(layoutParams);
                    c0839Qw2.removeAllViews();
                    c0839Qw2.addView(view);
                    return;
                case 7:
                    c0839Qw = c0839Qw;
                    viewA00 = c0839Qw.getAdHiddenViewTextOnly();
                    c = 6;
                    break;
                case '\b':
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    private void A07(String str, InterfaceC03688m interfaceC03688m) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setPadding(A0J, A0J, A0J, A0J);
        ViewGroup.LayoutParams adDetailsContainerParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout.setLayoutParams(adDetailsContainerParams);
        addView(relativeLayout);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -872415232});
        gradientDrawable.setCornerRadius(0.0f);
        OY.A0S(relativeLayout, gradientDrawable);
        this.A02 = new RelativeLayout(getContext());
        RelativeLayout adDetailsContainer = this.A02;
        OY.A0N(adDetailsContainer);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        View adDetailsContainer2 = this.A02;
        relativeLayout.addView(adDetailsContainer2, layoutParams);
        this.A05 = new C0885Sq(getContext(), str, this.A0C.A0N(), this.A0C.A0I().A00(), interfaceC03688m, this.A0C.A0F());
        this.A05.A0F(this.A0C.A0I().A08(), true, 22, -1);
        this.A05.A0E(this.A0C.A0I().A05(), false, 14, -1);
        this.A05.A0D(this.A0C.A0I().A03(), false, 14, -1);
        this.A05.A0C(this.A0C.A0I().A01(), false, 14, -1);
        this.A02.addView(this.A05, new RelativeLayout.LayoutParams(-1, -2));
        C0837Qu c0837Qu = new C0837Qu(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(A0K, A0K);
        layoutParams2.addRule(2, this.A02.getId());
        c0837Qu.setLayoutParams(layoutParams2);
        c0837Qu.setFullCircleCorners(this.A0C.A0I().A00().equals(EnumC02232t.A04));
        relativeLayout.addView(c0837Qu);
        new SM(c0837Qu).A05(A0K, A0K).A07(this.A0C.A0N().A01());
    }

    private void A08(boolean z) {
        C0839Qw c0839Qw = this;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) c0839Qw.A05.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(A0M, A0M);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0839Qw = c0839Qw;
                    layoutParams = layoutParams;
                    layoutParams2 = layoutParams2;
                    layoutParams.rightMargin = 0;
                    layoutParams2.topMargin = A0J;
                    layoutParams2.rightMargin = A0J;
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(10);
                    c0839Qw.addView(c0839Qw.A06, layoutParams2);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0839Qw = c0839Qw;
                    layoutParams = layoutParams;
                    layoutParams2 = layoutParams2;
                    layoutParams.rightMargin = A0I;
                    layoutParams2.addRule(15);
                    layoutParams2.addRule(11);
                    c0839Qw.A02.addView(c0839Qw.A06, layoutParams2);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0A() {
        C0839Qw c0839Qw = this;
        char c = c0839Qw.A00 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0839Qw = c0839Qw;
                    if (!c0839Qw.A08) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    if (Build.VERSION.SDK_INT < 19) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0839Qw = c0839Qw;
                    c0839Qw.A00.pause();
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c0839Qw = c0839Qw;
                    c0839Qw.A00.cancel();
                    c = 5;
                    break;
            }
        }
    }

    public final void A0B() {
        C0839Qw c0839Qw = this;
        char c = c0839Qw.A00 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0839Qw = c0839Qw;
                    if (!c0839Qw.A08) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    if (Build.VERSION.SDK_INT < 19) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0839Qw = c0839Qw;
                    c0839Qw.A00.resume();
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c0839Qw = c0839Qw;
                    c0839Qw.A00.start();
                    c = 5;
                    break;
            }
        }
    }

    public final void A0C() {
        if (this.A00 != null) {
            this.A00.cancel();
        }
        this.A08 = true;
    }

    public final void A0D(int i) {
        this.A0G.put(A01(6, 17, 17), String.valueOf(i));
    }

    public final void A0E(C02684m c02684m, EnumC02664k enumC02664k) {
        this.A07 = true;
        this.A04 = c02684m;
        this.A03 = enumC02664k;
        A05(c02684m, enumC02664k);
    }

    public final void A0F(boolean z) {
        int i = 0;
        int i2 = 0;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getLayoutParams();
        char c = z ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    i = -1;
                    c = 3;
                    break;
                case 3:
                    layoutParams = layoutParams;
                    layoutParams.width = i;
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    layoutParams.height = i2;
                    return;
                case 5:
                    i2 = -1;
                    c = 4;
                    break;
                case 6:
                    i2 = 0;
                    i = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final void A0G(boolean z) {
        this.A05.A0G(z);
    }

    public final void A0H(boolean z, int i) {
        C0839Qw c0839Qw = this;
        float f = 0.0f;
        float f2 = 0.99f;
        char c = c0839Qw.A00 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0839Qw = c0839Qw;
                    c0839Qw.A00.cancel();
                    c = 3;
                    break;
                case 3:
                    if (!z) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    f = 1.01f;
                    c = 5;
                    break;
                case 5:
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    C0839Qw c0839Qw2 = c0839Qw;
                    c0839Qw2.A00 = ObjectAnimator.ofPropertyValuesHolder(c0839Qw2, PropertyValuesHolder.ofFloat(A01(0, 6, 33), f, f2), PropertyValuesHolder.ofFloat(A01(23, 6, 88), f, f2));
                    c0839Qw2.A00.setInterpolator(new AbstractInterpolatorC03166l() { // from class: com.facebook.ads.redexgen.X.6m
                        private static final float[] A00 = {0.0f, 1.0E-4f, 2.0E-4f, 5.0E-4f, 8.0E-4f, 0.0013f, 0.0018f, 0.0024f, 0.0032f, 0.004f, 0.0049f, 0.0059f, 0.0069f, 0.0081f, 0.0093f, 0.0106f, 0.012f, 0.0135f, 0.0151f, 0.0167f, 0.0184f, 0.0201f, 0.022f, 0.0239f, 0.0259f, 0.0279f, 0.03f, 0.0322f, 0.0345f, 0.0368f, 0.0391f, 0.0416f, 0.0441f, 0.0466f, 0.0492f, 0.0519f, 0.0547f, 0.0574f, 0.0603f, 0.0632f, 0.0662f, 0.0692f, 0.0722f, 0.0754f, 0.0785f, 0.0817f, 0.085f, 0.0884f, 0.0917f, 0.0952f, 0.0986f, 0.1021f, 0.1057f, 0.1093f, 0.113f, 0.1167f, 0.1205f, 0.1243f, 0.1281f, 0.132f, 0.1359f, 0.1399f, 0.1439f, 0.148f, 0.1521f, 0.1562f, 0.1604f, 0.1647f, 0.1689f, 0.1732f, 0.1776f, 0.182f, 0.1864f, 0.1909f, 0.1954f, 0.1999f, 0.2045f, 0.2091f, 0.2138f, 0.2184f, 0.2232f, 0.2279f, 0.2327f, 0.2376f, 0.2424f, 0.2473f, 0.2523f, 0.2572f, 0.2622f, 0.2673f, 0.2723f, 0.2774f, 0.2826f, 0.2877f, 0.2929f, 0.2982f, 0.3034f, 0.3087f, 0.3141f, 0.3194f, 0.3248f, 0.3302f, 0.3357f, 0.3412f, 0.3467f, 0.3522f, 0.3578f, 0.3634f, 0.369f, 0.3747f, 0.3804f, 0.3861f, 0.3918f, 0.3976f, 0.4034f, 0.4092f, 0.4151f, 0.421f, 0.4269f, 0.4329f, 0.4388f, 0.4448f, 0.4508f, 0.4569f, 0.463f, 0.4691f, 0.4752f, 0.4814f, 0.4876f, 0.4938f, 0.5f, 0.5063f, 0.5126f, 0.5189f, 0.5252f, 0.5316f, 0.538f, 0.5444f, 0.5508f, 0.5573f, 0.5638f, 0.5703f, 0.5768f, 0.5834f, 0.59f, 0.5966f, 0.6033f, 0.6099f, 0.6166f, 0.6233f, 0.6301f, 0.6369f, 0.6436f, 0.6505f, 0.6573f, 0.6642f, 0.671f, 0.678f, 0.6849f, 0.6919f, 0.6988f, 0.7059f, 0.7129f, 0.7199f, 0.727f, 0.7341f, 0.7413f, 0.7484f, 0.7556f, 0.7628f, 0.77f, 0.7773f, 0.7846f, 0.7919f, 0.7992f, 0.8066f, 0.814f, 0.8214f, 0.8288f, 0.8363f, 0.8437f, 0.8513f, 0.8588f, 0.8664f, 0.874f, 0.8816f, 0.8892f, 0.8969f, 0.9046f, 0.9124f, 0.9201f, 0.928f, 0.9358f, 0.9437f, 0.9516f, 0.9595f, 0.9675f, 0.9755f, 0.9836f, 0.9918f, 1.0f};

                        {
                            float[] fArr = A00;
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractInterpolatorC03166l, android.animation.TimeInterpolator
                        public final /* bridge */ /* synthetic */ float getInterpolation(float f3) {
                            return super.getInterpolation(f3);
                        }
                    });
                    c0839Qw2.A00.setDuration(i);
                    c0839Qw2.A00.setRepeatCount(-1);
                    c0839Qw2.A00.setRepeatMode(2);
                    c0839Qw2.A00.start();
                    c0839Qw2.A08 = false;
                    return;
                case 7:
                    f2 = 1.01f;
                    c = 6;
                    break;
                case '\b':
                    f = f2;
                    c = 5;
                    break;
            }
        }
    }

    public final boolean A0I() {
        return this.A07;
    }

    public C3D getAdDataBundle() {
        return this.A0C;
    }

    private View getAdHiddenViewTextOnly() {
        TextView textView = new TextView(getContext());
        OY.A0Y(textView, true, 14);
        textView.setText(C02654j.A07(getContext()));
        textView.setGravity(17);
        return textView;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0839Qw c0839Qw = this;
        super.onLayout(z, i, i2, i3, i4);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0839Qw = c0839Qw;
                    if (!c0839Qw.A0I()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0839Qw = c0839Qw;
                    c0839Qw.removeAllViews();
                    c0839Qw.A05(c0839Qw.A04, c0839Qw.A03);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public void setAdReportingFlowListener(PZ pz) {
        this.A05.setAdReportingFlowListener(pz);
    }

    public void setShouldPlayButtonOnTop(boolean z) {
        if (z != this.A0B) {
            this.A0B = z;
            OY.A0L(this.A06);
            A08(this.A0B);
        }
    }

    public void setViewability(boolean z) {
        this.A0A = z;
        A03();
    }
}
