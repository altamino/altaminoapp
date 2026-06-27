package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Rk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0853Rk extends LinearLayout {
    private final ImageView A00;
    private final LinearLayout A01;
    private final TextView A02;
    private static final int A05 = (int) (8.0f * OY.A01);
    private static final int A06 = (int) (14.5d * OY.A01);
    private static final int A04 = (int) (20.0f * OY.A01);
    public static final LinearLayout.LayoutParams A03 = new LinearLayout.LayoutParams(-1, -2);

    public C0853Rk(Context context) {
        super(context);
        this.A00 = new ImageView(context);
        this.A00.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 16;
        this.A00.setLayoutParams(layoutParams);
        this.A01 = new LinearLayout(context);
        this.A01.setOrientation(1);
        this.A01.setPadding(A05 * 2, 0, 0, 0);
        this.A01.setLayoutParams(A03);
        this.A02 = new TextView(context);
        OY.A0Y(this.A02, true, 16);
        this.A02.setTextColor(-14934495);
        this.A01.addView(this.A02, A03);
        setOrientation(0);
        addView(this.A00);
        addView(this.A01);
    }

    public void setInfo(EnumC0768Od enumC0768Od, String str, String str2) {
        C0853Rk c0853Rk = this;
        c0853Rk.A00.setImageBitmap(C0769Oe.A01(enumC0768Od));
        c0853Rk.A02.setText(str);
        char c = !TextUtils.isEmpty(str2) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0853Rk = c0853Rk;
                    str2 = str2;
                    TextView textView = new TextView(c0853Rk.getContext());
                    OY.A0Y(textView, false, 14);
                    textView.setTextColor(-10459280);
                    textView.setText(str2);
                    c0853Rk.A01.addView(textView, A03);
                    c0853Rk.setPadding(0, A05, 0, A05);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0853Rk = c0853Rk;
                    c0853Rk.setPadding(0, A06, 0, A06);
                    c = 3;
                    break;
            }
        }
    }
}
