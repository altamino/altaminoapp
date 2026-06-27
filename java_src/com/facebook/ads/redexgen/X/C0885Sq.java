package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0885Sq extends LinearLayout {
    private static byte[] A0G;
    private static final int A0H;
    private static final int A0I;
    private static final int A0J;
    private static final int A0K;
    private static final int A0L;
    private ImageView A00;
    private ImageView A01;
    private LinearLayout A02;
    private TextView A03;
    private TextView A04;
    private TextView A05;
    private TextView A06;
    private TextView A07;
    private TextView A08;
    private TextView A09;

    @Nullable
    private PZ A0A;
    private final LinearLayout A0B;
    private final EnumC02232t A0C;
    private final AnonymousClass38 A0D;
    private final InterfaceC03688m A0E;
    private final String A0F;

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 89);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A0G = new byte[]{-119, -4};
    }

    static {
        A07();
        A0K = (int) (14.0f * OY.A01);
        A0L = (int) (OY.A01 * 8.0f);
        A0J = (int) (10.0f * OY.A01);
        A0H = (int) (OY.A01 * 8.0f);
        A0I = (int) (17.0f * OY.A01);
    }

    public C0885Sq(Context context, String str, AnonymousClass38 anonymousClass38, EnumC02232t enumC02232t, InterfaceC03688m interfaceC03688m, int i) {
        super(context);
        setOrientation(1);
        this.A0F = str;
        this.A0C = enumC02232t;
        this.A0E = interfaceC03688m;
        this.A0D = anonymousClass38;
        A06();
        this.A0B = new LinearLayout(context);
        this.A0B.setOrientation(0);
        this.A0B.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = A0L / 2;
        addView(this.A0B, layoutParams);
        A0A(this.A0B);
        this.A07 = A00();
        this.A0B.addView(this.A07);
        A09(this.A0B);
        this.A05 = A00();
        this.A0B.addView(this.A05);
        A08(this.A0B);
        this.A03 = A00();
        this.A0B.addView(this.A03);
        A0B(this.A0B, i);
    }

    private TextView A00() {
        TextView textView = new TextView(getContext());
        textView.setText(A04(0, 2, 18));
        textView.setTextColor(-1);
        OY.A0Y(textView, false, 14);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        layoutParams.leftMargin = A0L;
        layoutParams.rightMargin = A0L;
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    private void A06() {
        this.A09 = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = A0L;
        this.A09.setLayoutParams(layoutParams);
        addView(this.A09);
    }

    private void A08(LinearLayout linearLayout) {
        this.A04 = new TextView(getContext());
        this.A04.setEllipsize(TextUtils.TruncateAt.END);
        this.A04.setMaxLines(1);
        this.A04.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(this.A04);
    }

    private void A09(LinearLayout linearLayout) {
        EnumC0768Od enumC0768Od = null;
        this.A06 = new TextView(getContext());
        this.A06.setEllipsize(TextUtils.TruncateAt.END);
        this.A06.setMaxLines(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = A0L / 2;
        this.A06.setLayoutParams(layoutParams);
        this.A00 = new ImageView(getContext());
        this.A00.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.A00.setColorFilter(-1);
        ImageView imageView = this.A00;
        char c = this.A0C.equals(EnumC02232t.A03) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    enumC0768Od = EnumC0768Od.GOOGLE;
                    c = 3;
                    break;
                case 3:
                    C0885Sq c0885Sq = this;
                    LinearLayout linearLayout2 = linearLayout;
                    imageView.setImageBitmap(C0769Oe.A01(enumC0768Od));
                    linearLayout2.addView(c0885Sq.A00, new LinearLayout.LayoutParams(A0K, A0K));
                    linearLayout2.addView(c0885Sq.A06);
                    return;
                case 4:
                    enumC0768Od = EnumC0768Od.GLOBE;
                    c = 3;
                    break;
            }
        }
    }

    private void A0A(LinearLayout linearLayout) {
        this.A08 = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = A0L / 2;
        this.A08.setLayoutParams(layoutParams);
        this.A01 = new ImageView(getContext());
        this.A01.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.A01.setColorFilter(-1);
        this.A01.setImageBitmap(C0769Oe.A01(EnumC0768Od.RATINGS));
        linearLayout.addView(this.A01, new LinearLayout.LayoutParams(A0K, A0K));
        linearLayout.addView(this.A08);
    }

    private void A0B(LinearLayout linearLayout, int i) {
        this.A02 = new LinearLayout(getContext());
        this.A02.setOrientation(0);
        this.A02.setGravity(16);
        linearLayout.addView(this.A02, new LinearLayout.LayoutParams(-2, -1));
        ImageView imageView = new ImageView(getContext());
        char c = 1 == i ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    imageView = imageView;
                    imageView.setImageBitmap(C0769Oe.A01(EnumC0768Od.AN_INFO_ICON));
                    c = 3;
                    break;
                case 3:
                    C0885Sq c0885Sq = this;
                    ImageView imageView2 = imageView;
                    imageView2.setColorFilter(-1);
                    c0885Sq.A02.addView(imageView2, new LinearLayout.LayoutParams(A0K, A0K));
                    ImageView imageView3 = new ImageView(c0885Sq.getContext());
                    imageView3.setImageBitmap(C0769Oe.A01(EnumC0768Od.AD_CHOICES_ICON));
                    imageView3.setColorFilter(-1);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A0K, A0K);
                    layoutParams.leftMargin = A0J;
                    c0885Sq.A02.addView(imageView3, layoutParams);
                    c0885Sq.A02.setOnClickListener(new ViewOnClickListenerC0884Sp(c0885Sq));
                    OY.A0T(c0885Sq, c0885Sq.A02, A0H, A0I);
                    return;
                case 4:
                    imageView = imageView;
                    imageView.setImageBitmap(C0769Oe.A01(EnumC0768Od.DEFAULT_INFO_ICON));
                    c = 3;
                    break;
            }
        }
    }

    public final void A0C(String str, boolean z, int i, int i2) {
        C0885Sq c0885Sq = this;
        int i3 = 0;
        TextView textView = null;
        int i4 = 8;
        c0885Sq.A04.setText(str);
        c0885Sq.A04.setTextColor(i2);
        OY.A0Y(c0885Sq.A04, z, i);
        TextView textView2 = c0885Sq.A04;
        char c = TextUtils.isEmpty(str) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    i3 = i4;
                    c = 3;
                    break;
                case 3:
                    c0885Sq = c0885Sq;
                    str = str;
                    textView2 = textView2;
                    textView2.setVisibility(i3);
                    textView = c0885Sq.A03;
                    if (!TextUtils.isEmpty(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    textView.setVisibility(i4);
                    return;
                case 5:
                    i4 = 0;
                    c = 4;
                    break;
                case 6:
                    i3 = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final void A0D(String str, boolean z, int i, int i2) {
        C0885Sq c0885Sq = this;
        TextView textView = null;
        int i3 = 0;
        TextView textView2 = null;
        int i4 = 0;
        int i5 = 8;
        c0885Sq.A06.setText(str);
        c0885Sq.A06.setTextColor(i2);
        OY.A0Y(c0885Sq.A06, z, i);
        ImageView imageView = c0885Sq.A00;
        char c = TextUtils.isEmpty(str) ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    i3 = i5;
                    c = 3;
                    break;
                case 3:
                    c0885Sq = c0885Sq;
                    str = str;
                    imageView = imageView;
                    imageView.setVisibility(i3);
                    textView2 = c0885Sq.A06;
                    if (!TextUtils.isEmpty(str)) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i4 = i5;
                    c = 5;
                    break;
                case 5:
                    c0885Sq = c0885Sq;
                    str = str;
                    textView2 = textView2;
                    textView2.setVisibility(i4);
                    textView = c0885Sq.A05;
                    if (!TextUtils.isEmpty(str)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    textView.setVisibility(i5);
                    return;
                case 7:
                    i5 = 0;
                    c = 6;
                    break;
                case '\b':
                    i4 = 0;
                    c = 5;
                    break;
                case '\t':
                    i3 = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final void A0E(String str, boolean z, int i, int i2) {
        C0885Sq c0885Sq = this;
        TextView textView = null;
        int i3 = 0;
        TextView textView2 = null;
        int i4 = 0;
        int i5 = 8;
        c0885Sq.A08.setText(str);
        c0885Sq.A08.setTextColor(i2);
        OY.A0Y(c0885Sq.A08, z, i);
        ImageView imageView = c0885Sq.A01;
        char c = TextUtils.isEmpty(str) ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    i3 = i5;
                    c = 3;
                    break;
                case 3:
                    c0885Sq = c0885Sq;
                    str = str;
                    imageView = imageView;
                    imageView.setVisibility(i3);
                    textView2 = c0885Sq.A08;
                    if (!TextUtils.isEmpty(str)) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i4 = i5;
                    c = 5;
                    break;
                case 5:
                    c0885Sq = c0885Sq;
                    str = str;
                    textView2 = textView2;
                    textView2.setVisibility(i4);
                    textView = c0885Sq.A07;
                    if (!TextUtils.isEmpty(str)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    textView.setVisibility(i5);
                    return;
                case 7:
                    i5 = 0;
                    c = 6;
                    break;
                case '\b':
                    i4 = 0;
                    c = 5;
                    break;
                case '\t':
                    i3 = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final void A0F(String str, boolean z, int i, int i2) {
        this.A09.setText(str);
        this.A09.setTextColor(i2);
        OY.A0Y(this.A09, z, i);
        this.A09.setMaxLines(2);
        this.A09.setEllipsize(TextUtils.TruncateAt.END);
    }

    public final void A0G(boolean z) {
        C0885Sq c0885Sq = this;
        int i = 0;
        char c = z ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    c0885Sq = c0885Sq;
                    if (!TextUtils.isEmpty(c0885Sq.A08.getText())) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0885Sq = c0885Sq;
                    i = 0;
                    c0885Sq.A01.setVisibility(0);
                    c0885Sq.A08.setVisibility(0);
                    c0885Sq.A07.setVisibility(0);
                    c = 4;
                    break;
                case 4:
                    c0885Sq = c0885Sq;
                    if (!TextUtils.isEmpty(c0885Sq.A04.getText())) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c0885Sq = c0885Sq;
                    c0885Sq.A04.setVisibility(i);
                    c0885Sq.A03.setVisibility(i);
                    c = 6;
                    break;
                case 6:
                    c0885Sq = c0885Sq;
                    c0885Sq.A00.setVisibility(8);
                    c0885Sq.A06.setVisibility(8);
                    c0885Sq.A05.setVisibility(8);
                    c = 7;
                    break;
                case 7:
                    return;
                case '\b':
                    c0885Sq = c0885Sq;
                    if (!TextUtils.isEmpty(c0885Sq.A06.getText())) {
                        c = '\t';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\t':
                    c0885Sq = c0885Sq;
                    i = 0;
                    c0885Sq.A00.setVisibility(0);
                    c0885Sq.A06.setVisibility(0);
                    c0885Sq.A05.setVisibility(0);
                    c = '\n';
                    break;
                case '\n':
                    c0885Sq = c0885Sq;
                    c0885Sq.A01.setVisibility(8);
                    c0885Sq.A08.setVisibility(8);
                    c0885Sq.A07.setVisibility(8);
                    c0885Sq.A04.setVisibility(8);
                    c0885Sq.A03.setVisibility(8);
                    c = 7;
                    break;
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0885Sq c0885Sq = this;
        int measuredWidth = 0;
        int i5 = 0;
        super.onLayout(z, i, i2, i3, i4);
        char c = !z ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0885Sq = c0885Sq;
                    int size = View.MeasureSpec.getSize(0);
                    c0885Sq.A0B.measure(size, size);
                    measuredWidth = c0885Sq.A0B.getMeasuredWidth();
                    i5 = measuredWidth - i3;
                    if (i5 <= 0) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0885Sq = c0885Sq;
                    c0885Sq.A06.setMaxWidth(c0885Sq.A06.getWidth() - i5);
                    c0885Sq.A04.setMaxWidth(c0885Sq.A04.getWidth() - i5);
                    c = 2;
                    break;
                case 5:
                    c0885Sq = c0885Sq;
                    c0885Sq.A06.setMaxWidth(measuredWidth);
                    c0885Sq.A04.setMaxWidth(measuredWidth);
                    c = 2;
                    break;
            }
        }
    }

    public void setAdReportingFlowListener(PZ pz) {
        this.A0A = pz;
    }
}
