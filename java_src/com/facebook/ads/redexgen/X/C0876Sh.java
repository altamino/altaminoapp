package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0876Sh extends SU {
    private static byte[] A0F;
    private static final int A0G;
    private static final int A0H;
    private static final int A0I;
    private static final int A0J;
    private static final int A0K;
    private static final int A0L;
    private static final int A0M;
    private static final int A0N;
    private int A00;
    private int A01;
    private LinearLayout A02;
    private TextView A03;
    private TextView A04;
    private TextView A05;
    private C02252v A06;
    private C02292z A07;
    private C0879Sk A08;
    private boolean A09;
    private boolean A0A;
    private final LinearLayout A0B;
    private final RelativeLayout A0C;
    private final RelativeLayout A0D;
    private final TextView A0E;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 15);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A0F = new byte[]{13, 41};
    }

    static {
        A07();
        A0M = C02794x.A01(-1, 77);
        A0J = (int) (12.0f * OY.A01);
        A0K = (int) (8.0f * OY.A01);
        A0G = (int) (26.0f * OY.A01);
        A0I = (int) (144.0f * OY.A01);
        A0H = (int) (48.0f * OY.A01);
        A0L = (int) (16.0f * OY.A01);
        A0N = (int) (14.0f * OY.A01);
    }

    public C0876Sh(Context context, int i, boolean z, C02282y c02282y, String str, KM km, InterfaceC03688m interfaceC03688m, C6K c6k, OP op) {
        this(context, i, z, c02282y, str, km, interfaceC03688m, c6k, op, false);
    }

    public C0876Sh(Context context, int i, boolean z, C02282y c02282y, String str, KM km, InterfaceC03688m interfaceC03688m, C6K c6k, OP op, boolean z2) {
        super(context, i, c02282y, str, km, interfaceC03688m, c6k, op);
        this.A0A = false;
        this.A00 = 0;
        this.A01 = 0;
        this.A09 = z2;
        super.A03.setFullCircleCorners(z);
        setPadding(A0J, A0J, A0J, 0);
        this.A0C = new RelativeLayout(getContext());
        this.A05 = new TextView(getContext());
        this.A02 = new LinearLayout(getContext());
        this.A08 = new C0879Sk(getContext(), A0N, 5, A0M, -1);
        this.A0D = new RelativeLayout(getContext());
        this.A0B = new LinearLayout(getContext());
        this.A04 = new TextView(getContext());
        this.A03 = new TextView(getContext());
        super.A01.addView(this.A0C);
        super.A01.addView(this.A0B);
        this.A0E = new TextView(getContext());
        OY.A0M(this);
        A05();
    }

    private void A01() {
        super.A02.setLayoutParams(new LinearLayout.LayoutParams(-1, A0H));
        super.A02.setPadding(0, 0, 0, 0);
    }

    private void A02() {
        this.A0B.setOrientation(1);
        this.A0B.setPadding(0, 0, 0, A0J);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, this.A0C.getId());
        this.A0B.setLayoutParams(layoutParams);
        this.A0B.removeAllViews();
        this.A03.setMaxLines(2);
        this.A03.setEllipsize(TextUtils.TruncateAt.END);
        this.A03.setGravity(16);
        this.A03.setTextColor(-1);
        OY.A0Y(this.A03, false, 16);
        this.A0B.addView(this.A03, new LinearLayout.LayoutParams(-1, -2));
    }

    private void A03() {
        this.A0C.removeAllViews();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.bottomMargin = A0J;
        this.A0C.setLayoutParams(layoutParams);
        OY.A0N(this.A0C);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(super.A00, super.A00);
        layoutParams2.addRule(15);
        layoutParams2.addRule(9);
        this.A0C.addView(super.A03, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.leftMargin = A0K;
        layoutParams3.addRule(1, super.A03.getId());
        layoutParams3.addRule(15);
        this.A0C.addView(this.A0D, layoutParams3);
        this.A0D.removeAllViews();
        OY.A0N(this.A05);
        this.A05.setLayoutParams(SU.A04);
        this.A05.setTextColor(-1);
        OY.A0Y(this.A05, true, 18);
        this.A0D.addView(this.A05);
        this.A02.setOrientation(0);
        this.A02.setGravity(16);
        RelativeLayout.LayoutParams iconAndMetaDataContainerParams = new RelativeLayout.LayoutParams(-2, A0L);
        iconAndMetaDataContainerParams.topMargin = A0K / 2;
        iconAndMetaDataContainerParams.addRule(3, this.A05.getId());
        this.A0D.addView(this.A02, iconAndMetaDataContainerParams);
        this.A02.removeAllViews();
        this.A08.setGravity(16);
        this.A02.addView(this.A08, new LinearLayout.LayoutParams(-2, -1));
        this.A04.setTextColor(-1);
        this.A04.setGravity(16);
        this.A04.setIncludeFontPadding(false);
        OY.A0Y(this.A04, false, 14);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams4.leftMargin = A0K;
        this.A02.addView(this.A04, layoutParams4);
    }

    private void A04() {
        this.A0E.setMaxLines(1);
        this.A0E.setEllipsize(TextUtils.TruncateAt.END);
        this.A0E.setGravity(17);
        this.A0E.setTextColor(-1);
        this.A0E.setAllCaps(true);
        OY.A0Y(this.A0E, false, 12);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = A0J;
        layoutParams.bottomMargin = A0G;
        this.A0E.setLayoutParams(layoutParams);
    }

    private void A05() {
        removeAllViews();
        super.A01.setLayoutParams(SU.A04);
        A03();
        A02();
        A01();
        A04();
        A06();
        OY.A0L(super.A01);
        OY.A0L(super.A02);
        OY.A0L(this.A0E);
        addView(super.A01);
        addView(super.A02);
        addView(this.A0E);
    }

    private void A06() {
        C0876Sh c0876Sh = this;
        char c = c0876Sh.A06 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0876Sh = c0876Sh;
                    c0876Sh.A05.setText(c0876Sh.A06.A08());
                    c0876Sh.A03.setText(c0876Sh.A06.A02());
                    c0876Sh.A0E.setText(c0876Sh.A06.A06());
                    if (!TextUtils.isEmpty(c0876Sh.A07.A03())) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0876Sh = c0876Sh;
                    OY.A0I(((SU) c0876Sh).A02);
                    c = 5;
                    break;
                case 5:
                    c0876Sh = c0876Sh;
                    if (!TextUtils.isEmpty(c0876Sh.A06.A06())) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0876Sh = c0876Sh;
                    OY.A0I(c0876Sh.A0E);
                    c = 7;
                    break;
                case 7:
                    c0876Sh = c0876Sh;
                    if (!TextUtils.isEmpty(c0876Sh.A06.A05())) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0876Sh = c0876Sh;
                    c0876Sh.A02.setVisibility(8);
                    c = 2;
                    break;
                case '\t':
                    c0876Sh = c0876Sh;
                    c0876Sh.A02.setVisibility(0);
                    c0876Sh.A08.setRating(Float.parseFloat(c0876Sh.A06.A05()));
                    if (c0876Sh.A06.A04() == null) {
                        c = 2;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0876Sh = c0876Sh;
                    c0876Sh.A04.setText(A00(0, 1, 42) + NumberFormat.getNumberInstance().format(Integer.parseInt(c0876Sh.A06.A04())) + A00(1, 1, 15));
                    c = 2;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.SU
    public final void A08(int i) {
        C0876Sh c0876Sh = this;
        int i2 = 0;
        LinearLayout.LayoutParams layoutParams = null;
        int i3 = 1;
        char c = i == 1 ? (char) 2 : (char) 15;
        while (true) {
            switch (c) {
                case 2:
                    i2 = i3;
                    c = 3;
                    break;
                case 3:
                    c0876Sh = c0876Sh;
                    boolean isPortrait = c0876Sh.A09;
                    if (!isPortrait) {
                        c = '\n';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0876Sh = c0876Sh;
                    if (!c0876Sh.A0A) {
                        c = '\n';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0876Sh = c0876Sh;
                    c0876Sh.setOrientation(i3);
                    layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    c0876Sh.setBackgroundResource(0);
                    ((SU) c0876Sh).A01.setLayoutParams(layoutParams);
                    ((SU) c0876Sh).A02.setLayoutParams(new LinearLayout.LayoutParams(-1, A0H));
                    if (i2 != 0) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0876Sh = c0876Sh;
                    layoutParams = layoutParams;
                    layoutParams.weight = 0.7f;
                    OY.A0P(c0876Sh, -1087164882);
                    c0876Sh.A04();
                    c0876Sh.A0E.setGravity(3);
                    c = 7;
                    break;
                case 7:
                    c0876Sh = c0876Sh;
                    OY.A0L(c0876Sh.A0E);
                    c0876Sh.addView(c0876Sh.A0E);
                    c = '\b';
                    break;
                case '\b':
                    c0876Sh.bringToFront();
                    return;
                case '\t':
                    c0876Sh = c0876Sh;
                    c0876Sh.A0E.setGravity(i3);
                    c = 7;
                    break;
                case '\n':
                    if (i2 == 0) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c0876Sh = c0876Sh;
                    c0876Sh.setOrientation(i3);
                    if (i2 != 0) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c0876Sh = c0876Sh;
                    c0876Sh.setWeightSum(5.0f);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
                    layoutParams2.weight = 4.0f;
                    layoutParams2.bottomMargin = A0G - A0J;
                    ((SU) c0876Sh).A01.setLayoutParams(layoutParams2);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, A0H);
                    layoutParams3.bottomMargin = A0G / 2;
                    layoutParams3.weight = 1.0f;
                    layoutParams3.gravity = 80;
                    ((SU) c0876Sh).A02.setLayoutParams(layoutParams3);
                    ((SU) c0876Sh).A02.setMinWidth(A0I);
                    OY.A0L(c0876Sh.A0E);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -1);
                    layoutParams4.topMargin = 0;
                    layoutParams4.bottomMargin = A0K;
                    c0876Sh.A0B.addView(c0876Sh.A0E, layoutParams4);
                    c0876Sh.A0B.setPadding(0, 0, 0, 0);
                    c0876Sh.A0E.setGravity(3);
                    c = '\b';
                    break;
                case '\r':
                    i3 = 0;
                    c = 11;
                    break;
                case 14:
                    c0876Sh = c0876Sh;
                    c0876Sh.A05();
                    c = '\b';
                    break;
                case 15:
                    i2 = 0;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.SU
    public final void A09(boolean z) {
        this.A0A = z;
    }

    public final int A0A(int i) {
        return this.A00 + this.A01 + A0K;
    }

    public final View getExpandableLayout() {
        return this.A0B;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.A00 == 0) {
            this.A00 = this.A03.getHeight();
            this.A01 = this.A0E.getHeight();
        }
    }

    @Override // com.facebook.ads.redexgen.X.SU
    public void setInfo(C02252v c02252v, C02292z c02292z, String str, String str2, @Nullable SX sx) {
        super.setInfo(c02252v, c02292z, str, str2, sx);
        this.A06 = c02252v;
        this.A07 = c02292z;
        A06();
    }
}
