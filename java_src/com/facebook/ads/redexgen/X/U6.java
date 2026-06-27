package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class U6 extends LinearLayout {
    public static final int A03 = (int) (OY.A01 * 32.0f);
    private static final int A04 = (int) (OY.A01 * 8.0f);
    private TextView A00;
    private TextView A01;
    private C0837Qu A02;

    public U6(Context context) {
        super(context);
        A00(context);
    }

    private final void A00(Context context) {
        setGravity(16);
        this.A02 = new C0837Qu(context);
        this.A02.setFullCircleCorners(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A03, A03);
        layoutParams.setMargins(0, 0, A04, 0);
        addView(this.A02, layoutParams);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        this.A00 = new TextView(context);
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        OY.A0Y(this.A00, true, 16);
        this.A00.setEllipsize(TextUtils.TruncateAt.END);
        this.A00.setSingleLine(true);
        this.A01 = new TextView(context);
        OY.A0Y(this.A01, false, 14);
        linearLayout.addView(this.A00);
        linearLayout.addView(this.A01);
        addView(linearLayout, layoutParams2);
    }

    public final void A01(int i, int i2) {
        this.A00.setTextColor(i);
        this.A01.setTextColor(i2);
    }

    public void setPageDetails(AnonymousClass38 anonymousClass38) {
        SM sm = new SM(this.A02);
        sm.A05(A03, A03);
        sm.A07(anonymousClass38.A01());
        this.A00.setText(anonymousClass38.A02());
        this.A01.setText(anonymousClass38.A03());
    }
}
