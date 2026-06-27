package com.facebook.ads.redexgen.X;

import android.R;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Arrays;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class TP extends AbstractC0888St {

    @Nullable
    private static TP A0M;
    private static byte[] A0N;
    private static final int A0O;
    private static final int A0P;
    private static final int A0Q;
    private static final int A0R;
    private static final int A0S;
    private float A00;
    private int A01;
    private int A02;
    private int A03;
    private int A04;
    private int A05;
    private View A06;
    private LinearLayout A07;
    private LinearLayout A08;
    private TextView A09;
    private C0868Rz A0A;
    private S0 A0B;
    private S9 A0C;
    private T0 A0D;
    private TS A0E;
    private boolean A0F;
    private boolean A0G;
    private boolean A0H;
    private final View A0I;
    private final C1S A0J;
    private final KX A0K;
    private final B8 A0L;

    private static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0N, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0M() {
        A0N = new byte[]{-70};
    }

    static {
        A0M();
        A0Q = (int) (26.0f * OY.A01);
        A0O = (int) (4.0f * OY.A01);
        A0S = (int) (OY.A01 * 8.0f);
        A0P = C02794x.A01(-1, 77);
        A0R = (int) (12.0f * OY.A01);
        A0M = null;
    }

    private TP(T0 t0, C02282y c02282y, boolean z) {
        super(t0, c02282y, true);
        this.A01 = 0;
        this.A0F = false;
        this.A0H = false;
        this.A0D = t0;
        this.A0K = new KX(t0.A05().A0D(), t0.A06());
        this.A0L = this.A0D.A0B();
        if (this.A0L != null) {
            OY.A0N(this.A0L);
        }
        this.A0I = this.A0D.A04();
        this.A0J = C1T.A01(t0.A02(), t0.A06(), t0.A05().A0D(), Uri.parse(t0.A05().A0H().get(0).A05().A04()), new HashMap(), false, true);
        C0886Sr.A00(t0.A02(), this, t0.A05().A0H().get(0).A03().A06());
        setupLayoutConfiguration(z);
        setUpWatchContent(c02282y);
        A0G();
        A0H();
        postDelayed(new TG(this), 1000L);
    }

    public static TP A0A(T0 t0, C02282y c02282y, boolean z) {
        char c = A0M != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    t0 = t0;
                    if (!A0M.getUrl().equals(t0.A05().A0H().get(0).A05().A04())) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    t0 = t0;
                    c02282y = c02282y;
                    A0M = new TP(t0, c02282y, z);
                    c = 4;
                    break;
                case 4:
                    A0M.A0J();
                    A0M.A0I();
                    A0M.A0K();
                    return A0M;
                case 5:
                    t0 = t0;
                    A0M.A0D = t0;
                    A0M.A0R(z);
                    c = 4;
                    break;
            }
        }
    }

    private void A0D() {
        OY.A0L(this.A0E);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.A0F ? this.A02 / 4 : this.A02 / 5);
        layoutParams.addRule(14);
        layoutParams.addRule(2, this.A09.getId());
        layoutParams.setMargins(0, 0, 0, 0);
        addView(this.A0E, 3, layoutParams);
    }

    private void A0E() {
        OY.A0L(this.A08);
        this.A08 = new LinearLayout(this.A0D.A02());
        OY.A0M(this.A08);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.A0F ? this.A02 / 4 : this.A02 / 5);
        layoutParams.addRule(12);
        this.A08.setLayoutParams(layoutParams);
        addView(this.A08, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0F() {
        OY.A0L(this.A0C);
        this.A0C = new S9(this.A0D.A02(), new TL(this));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 0.9f;
        this.A07.addView(this.A0C, layoutParams);
    }

    private void A0G() {
        OY.A0L(this.A07);
        this.A07 = new LinearLayout(this.A0D.A02());
        this.A07.setOrientation(1);
        OY.A0N(this.A07);
        A0L();
        this.A07.setBackgroundColor(-1);
        addView(this.A07);
    }

    private void A0H() {
        OY.A0L(this.A0A);
        this.A0A = new C0868Rz(this.A0D.A02());
        OY.A0N(this.A0A);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.weight = 0.1f;
        this.A0A.setListener(new TJ(this));
        this.A0A.setOnTouchListener(new TK(this));
        this.A07.addView(this.A0A, layoutParams);
        OY.A0L(this.A0B);
        this.A0B = new S0(this.A0D.A02(), null, R.attr.progressBarStyleHorizontal);
        this.A07.addView(this.A0B, new LinearLayout.LayoutParams(-1, A0O));
    }

    private void A0I() {
        if (this.A0I != null) {
            OY.A0L(this.A0I);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AbstractC0888St.A05, AbstractC0888St.A05);
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            layoutParams.setMargins(AbstractC0888St.A04, this.A05, AbstractC0888St.A04, AbstractC0888St.A04);
            addView(this.A0I, layoutParams);
        }
    }

    private void A0J() {
        TP tp = this;
        RelativeLayout.LayoutParams layoutParams = null;
        char c = tp.A0L != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    tp = tp;
                    OY.A0L(tp.A0L);
                    tp.A0L.setPadding(A0R, A0R, A0R, A0R);
                    tp.A0L.A0A(-1, A0P);
                    tp.A0L.setTranslationY(0.0f);
                    layoutParams = new RelativeLayout.LayoutParams(-1, A0Q);
                    if (!tp.A0G) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    tp = tp;
                    layoutParams = layoutParams;
                    layoutParams.addRule(8, tp.A06.getId());
                    c = 4;
                    break;
                case 4:
                    tp = tp;
                    layoutParams = layoutParams;
                    tp.addView(tp.A0L, layoutParams);
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    layoutParams = layoutParams;
                    layoutParams.addRule(12);
                    c = 4;
                    break;
            }
        }
    }

    private void A0K() {
        TP tp = this;
        C0797Pg c0797PgA09 = null;
        boolean z = false;
        char c = tp.A0D.A09() == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    tp = tp;
                    c0797PgA09 = tp.A0D.A09();
                    if (!tp.A0G) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    tp = tp;
                    c0797PgA09 = c0797PgA09;
                    c0797PgA09.setShowPageDetails(z);
                    tp.A0D.A09().setToolbarListener(new TH(tp, tp.A0D.A09().getToolbarListener()));
                    c = 2;
                    break;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0L() {
        TP tp = this;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (tp.A03 * 4) / 5);
        char c = tp.A0X() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    tp = tp;
                    layoutParams = layoutParams;
                    layoutParams.setMargins(0, 0, 0, 0);
                    layoutParams.addRule(12);
                    tp.A07.setLayoutParams(layoutParams);
                    c = 3;
                    break;
                case 3:
                    TP tp2 = tp;
                    tp2.A07.setTranslationY(0.0f);
                    tp2.A07.setLayoutParams(layoutParams);
                    return;
                case 4:
                    tp = tp;
                    layoutParams = layoutParams;
                    layoutParams.setMargins(0, tp.A03 + 1, 0, 0);
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Q(boolean z) {
        TP tp = this;
        float f = 0.0f;
        LinearLayout linearLayout = null;
        View view = null;
        ObjectAnimator mediaViewTransAnim = null;
        float[] fArr = null;
        float[] fArr2 = null;
        String strA0C = null;
        String strA0C2 = null;
        char c = 0;
        ObjectAnimator objectAnimatorOfFloat = null;
        char c2 = 0;
        float f2 = 0.0f;
        int height = 0;
        char c3 = 0;
        int i = 0;
        ObjectAnimator objectAnimatorOfFloat2 = null;
        ObjectAnimator objectAnimatorOfFloat3 = null;
        int[] iArr = null;
        int i2 = 0;
        AnimatorSet animatorSet = null;
        int i3 = 0;
        tp.A0G = z;
        tp.postDelayed(new TM(tp, z), 250L);
        char c4 = z ? (char) 2 : (char) 27;
        while (true) {
            switch (c4) {
                case 2:
                    tp = tp;
                    mediaViewTransAnim = ObjectAnimator.ofFloat(tp.A0E, A0C(0, 1, 57), tp.A0E.getY(), tp.A03 / 5);
                    c4 = 3;
                    break;
                case 3:
                    tp = tp;
                    linearLayout = tp.A07;
                    strA0C = A0C(0, 1, 57);
                    fArr = new float[]{tp.A07.getY(), 0.0f};
                    c = 1;
                    if (!z) {
                        c4 = 26;
                        break;
                    } else {
                        c4 = 4;
                        break;
                    }
                case 4:
                    tp = tp;
                    f = tp.A03 / 5;
                    c4 = 5;
                    break;
                case 5:
                    tp = tp;
                    linearLayout = linearLayout;
                    strA0C = strA0C;
                    fArr = fArr;
                    fArr[c] = f;
                    objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(linearLayout, strA0C, fArr);
                    objectAnimatorOfFloat2.setDuration(500L);
                    i3 = (tp.A03 / 2) - (tp.A01 / 2);
                    view = tp.A06;
                    strA0C2 = A0C(0, 1, 57);
                    fArr2 = new float[]{tp.A06.getY(), 0.0f};
                    c2 = 1;
                    if (!z) {
                        c4 = 6;
                        break;
                    } else {
                        c4 = 7;
                        break;
                    }
                case 6:
                    tp = tp;
                    if (!tp.A0F) {
                        c4 = 25;
                        break;
                    } else {
                        c4 = 7;
                        break;
                    }
                case 7:
                    f2 = 0.0f;
                    c4 = '\b';
                    break;
                case '\b':
                    tp = tp;
                    view = view;
                    strA0C2 = strA0C2;
                    fArr2 = fArr2;
                    fArr2[c2] = f2;
                    objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, strA0C2, fArr2);
                    objectAnimatorOfFloat3.setDuration(500L);
                    if (tp.A0L != null) {
                        c4 = 24;
                        break;
                    } else {
                        c4 = '\t';
                        break;
                    }
                case '\t':
                    height = 0;
                    c4 = '\n';
                    break;
                case '\n':
                    if (!z) {
                        c4 = 23;
                        break;
                    } else {
                        c4 = 11;
                        break;
                    }
                case 11:
                    tp = tp;
                    i = (tp.A02 / 5) - height;
                    c4 = '\f';
                    break;
                case '\f':
                    tp = tp;
                    if (tp.A0L == null) {
                        c4 = 22;
                        break;
                    } else {
                        c4 = '\r';
                        break;
                    }
                case '\r':
                    tp = tp;
                    objectAnimatorOfFloat = ObjectAnimator.ofFloat(tp.A0L, A0C(0, 1, 57), tp.A0L.getY(), i);
                    c4 = 14;
                    break;
                case 14:
                    tp = tp;
                    iArr = new int[]{tp.A06.getHeight(), 0};
                    c3 = 1;
                    if (!z) {
                        c4 = 21;
                        break;
                    } else {
                        c4 = 15;
                        break;
                    }
                case 15:
                    tp = tp;
                    i2 = tp.A03 / 5;
                    c4 = 16;
                    break;
                case 16:
                    tp = tp;
                    objectAnimatorOfFloat2 = objectAnimatorOfFloat2;
                    objectAnimatorOfFloat3 = objectAnimatorOfFloat3;
                    iArr = iArr;
                    iArr[c3] = i2;
                    ValueAnimator duration = ValueAnimator.ofInt(iArr).setDuration(500L);
                    duration.addUpdateListener(new TN(tp));
                    animatorSet = new AnimatorSet();
                    animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
                    animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3, duration);
                    if (mediaViewTransAnim == null) {
                        c4 = 18;
                        break;
                    } else {
                        c4 = 17;
                        break;
                    }
                case 17:
                    animatorSet = animatorSet;
                    mediaViewTransAnim.setDuration(500L);
                    animatorSet.playTogether(mediaViewTransAnim);
                    c4 = 18;
                    break;
                case 18:
                    if (objectAnimatorOfFloat == null) {
                        c4 = 20;
                        break;
                    } else {
                        c4 = 19;
                        break;
                    }
                case 19:
                    animatorSet = animatorSet;
                    objectAnimatorOfFloat.setDuration(500L);
                    animatorSet.playTogether(objectAnimatorOfFloat);
                    c4 = 20;
                    break;
                case 20:
                    AnimatorSet animatorSet2 = animatorSet;
                    animatorSet2.addListener(new TO(tp, z));
                    animatorSet2.start();
                    return;
                case 21:
                    tp = tp;
                    i2 = tp.A01;
                    c4 = 16;
                    break;
                case 22:
                    objectAnimatorOfFloat = null;
                    c4 = 14;
                    break;
                case 23:
                    tp = tp;
                    i = (tp.A03 - A0Q) - A0S;
                    c4 = '\f';
                    break;
                case 24:
                    tp = tp;
                    height = tp.A0L.getHeight();
                    c4 = '\n';
                    break;
                case 25:
                    f2 = i3;
                    c4 = '\b';
                    break;
                case 26:
                    tp = tp;
                    f = tp.A03;
                    c4 = 5;
                    break;
                case 27:
                    mediaViewTransAnim = null;
                    c4 = 3;
                    break;
            }
        }
    }

    private void A0R(boolean z) {
        TP tp = this;
        RelativeLayout.LayoutParams layoutParams = null;
        tp.setupLayoutConfiguration(z);
        OY.A0L(tp.A06);
        tp.A06 = tp.A0D.A03();
        OY.A0N(tp.A06);
        char c = tp.A0G ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    tp = tp;
                    layoutParams = new RelativeLayout.LayoutParams(-1, tp.A03 / 5);
                    layoutParams.addRule(14);
                    layoutParams.addRule(10);
                    c = 3;
                    break;
                case 3:
                    TP tp2 = tp;
                    tp2.A06.setTranslationY(0.0f);
                    tp2.addView(tp2.A06, 1, layoutParams);
                    tp2.A0E();
                    tp2.A0D();
                    return;
                case 4:
                    tp = tp;
                    layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.addRule(13);
                    tp.A0G();
                    tp.A0H();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0V() {
        super.A0V();
        A0M = null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0W(AnonymousClass32 anonymousClass32, String str, double d, @Nullable Bundle bundle, @Nullable Q6 q6) {
        Q6 q62 = q6;
        TP tp = this;
        int i = 0;
        super.A0W(anonymousClass32, str, d, bundle, q62);
        String strA07 = anonymousClass32.A04().A07();
        char c = strA07 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    strA07 = strA07;
                    if (strA07.trim().length() != 0) {
                        c = '\f';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    tp = tp;
                    OY.A0Q(tp.A08, 8);
                    c = 4;
                    break;
                case 4:
                    if (d <= 0.0d) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    tp = tp;
                    tp.A01 = (int) (tp.A04 / d);
                    c = 6;
                    break;
                case 6:
                    tp = tp;
                    if (!tp.A0F) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    tp = tp;
                    i = tp.A02;
                    c = '\b';
                    break;
                case '\b':
                    tp = tp;
                    q62 = q62;
                    tp.A01 = i;
                    if (q62 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    q62 = q62;
                    q62.A4q();
                    c = '\n';
                    break;
                case '\n':
                    return;
                case 11:
                    tp = tp;
                    i = tp.A01;
                    c = '\b';
                    break;
                case '\f':
                    tp = tp;
                    strA07 = strA07;
                    tp.A09.setText(strA07);
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A0X() {
        return this.A0G;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A0Y() {
        return true;
    }

    private String getUrl() {
        return this.A0D.A05().A0H().get(0).A05().A04();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setupLayoutConfiguration(A0X());
        A0L();
    }

    private void setUpWatchContent(C02282y c02282y) {
        int i = 0;
        this.A06 = this.A0D.A03();
        OY.A0N(this.A06);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        addView(this.A06, 1, layoutParams);
        this.A09 = new TextView(this.A0D.A02());
        OY.A0N(this.A09);
        this.A09.setGravity(17);
        this.A09.setTextColor(c02282y.A05(true));
        this.A09.setEllipsize(TextUtils.TruncateAt.END);
        this.A09.setMaxLines(2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        int i2 = A0S;
        int i3 = A0S / 2;
        int i4 = A0S;
        char c = this.A0L == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = A0S;
                    c = 3;
                    break;
                case 3:
                    TP tp = this;
                    RelativeLayout.LayoutParams layoutParams3 = layoutParams2;
                    layoutParams3.setMargins(i2, i3, i4, i);
                    tp.addView(tp.A09, layoutParams3);
                    OY.A0N(tp.A09);
                    tp.A0E = new TS(tp.A0D, tp.A0D.A05().A0H().get(0).A05().A03(), c02282y, new TI(tp));
                    OY.A0H(1001, tp.A0E);
                    tp.A0D();
                    tp.A0E();
                    return;
                case 4:
                    i = A0Q;
                    c = 3;
                    break;
            }
        }
    }

    private void setupLayoutConfiguration(boolean z) {
        TP tp = this;
        boolean z2 = false;
        int toolbarHeight = 0;
        int i = 0;
        int i2 = 0;
        char c = tp.A0D.A00() == 2 ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    z2 = true;
                    c = 3;
                    break;
                case 3:
                    tp = tp;
                    tp.A0F = z2;
                    if (tp.A0D.A09() != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i2 = 0;
                    toolbarHeight = 0;
                    c = 5;
                    break;
                case 5:
                    tp = tp;
                    tp.A05 = toolbarHeight;
                    tp.A0G = z;
                    tp.A02 = Resources.getSystem().getDisplayMetrics().heightPixels;
                    tp.A04 = Resources.getSystem().getDisplayMetrics().widthPixels;
                    i = tp.A02;
                    if (!tp.A0F) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    tp.A03 = i + i2;
                    return;
                case 7:
                    tp = tp;
                    i2 = tp.A05;
                    c = 6;
                    break;
                case '\b':
                    tp = tp;
                    toolbarHeight = tp.A0D.A09().getToolbarHeight();
                    c = 5;
                    break;
                case '\t':
                    i2 = 0;
                    z2 = false;
                    c = 3;
                    break;
            }
        }
    }
}
