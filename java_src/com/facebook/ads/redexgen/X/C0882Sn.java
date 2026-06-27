package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sn, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0882Sn extends LinearLayout {
    private final TextView A00;
    private final C0870Sb A01;
    private static final int A02 = (int) (16.0f * OY.A01);
    private static final int A04 = (int) (14.0f * OY.A01);
    private static final int A03 = C02794x.A01(-1, 77);

    public C0882Sn(Context context) {
        super(context);
        setOrientation(0);
        setGravity(16);
        this.A01 = new C0870Sb(context);
        this.A01.setPadding(A02, A02, A02, A02);
        this.A01.setProgress(0.0f);
        A00(A03, -1);
        this.A00 = new TextView(context);
        A01(false, -1, A04);
        addView(this.A01);
        addView(this.A00);
    }

    private final void A00(int i, int i2) {
        this.A01.A02(i, i2);
    }

    public final void A01(boolean z, int i, int i2) {
        OY.A0Y(this.A00, z, i2);
        this.A00.setTextColor(i);
    }

    public void setProgress(int i) {
        this.A01.setProgressWithAnimation(i);
    }

    public void setText(String str) {
        this.A00.setText(str);
    }
}
