package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.internal.api.AdNativeComponentView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pp, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0806Pp extends AdNativeComponentView {
    private static final int A01 = (int) (1.0f * OY.A01);
    private final ImageView A00;

    public C0806Pp(Context context) {
        super(context);
        this.A00 = new R5(context);
        this.A00.setScaleType(ImageView.ScaleType.CENTER_CROP);
        EnumC0759Nu.A04(this.A00, EnumC0759Nu.A0A);
        addView(this.A00, new ViewGroup.LayoutParams(-1, -1));
        OY.A0P(this.A00, -2130706433);
        setPadding(A01, A01, A01, A01);
    }

    public View getAdContentsView() {
        return this.A00;
    }

    public ImageView getImageCardView() {
        return this.A00;
    }
}
