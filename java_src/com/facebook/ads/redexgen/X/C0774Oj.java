package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Oj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0774Oj extends C0878Sj {
    private final ImageView A00;

    public C0774Oj(Context context) {
        super(context);
        this.A00 = new ImageView(context);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(String str) {
        SM sm = new SM(this.A00);
        sm.A04();
        sm.A07(str);
    }
}
