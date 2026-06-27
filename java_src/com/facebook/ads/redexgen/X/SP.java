package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class SP extends LinearLayout {
    private static final int A03 = (int) (OY.A01 * 16.0f);
    private static final int A04 = (int) (OY.A01 * 8.0f);
    private final ImageView A00;
    private final TextView A01;
    private final OM A02;

    public SP(Context context) {
        super(context);
        setOrientation(0);
        this.A00 = new ImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A03, A03);
        layoutParams.rightMargin = A04;
        layoutParams.gravity = 16;
        this.A01 = new TextView(context);
        OY.A0Y(this.A01, false, 14);
        addView(this.A00, layoutParams);
        addView(this.A01, new LinearLayout.LayoutParams(-1, -2));
        this.A02 = new OM(-13158601);
        this.A02.A01(A04, A04, A04, A04);
        OY.A0S(this, this.A02);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.A02.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_ATOP));
    }

    public void setHighlightColor(int i) {
        this.A00.setColorFilter(i);
        this.A01.setTextColor(i);
    }

    public void setIcon(@Nullable EnumC0768Od enumC0768Od) {
        SP sp = this;
        char c = enumC0768Od == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    sp = sp;
                    OY.A0I(sp.A00);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    sp = sp;
                    enumC0768Od = enumC0768Od;
                    sp.A00.setImageBitmap(C0769Oe.A01(enumC0768Od));
                    c = 3;
                    break;
            }
        }
    }

    public void setText(String str) {
        this.A01.setText(str);
    }
}
