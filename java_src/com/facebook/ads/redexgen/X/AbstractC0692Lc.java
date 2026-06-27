package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC0692Lc extends RelativeLayout implements InterfaceC0696Lg {

    @Nullable
    private QL A00;

    public AbstractC0692Lc(Context context) {
        super(context);
    }

    public AbstractC0692Lc(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }

    public void A09() {
    }

    public void A0A() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A46(QL ql) {
        this.A00 = ql;
        A09();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A7C(QL ql) {
        A0A();
        this.A00 = null;
    }

    @Nullable
    public QL getVideoView() {
        return this.A00;
    }
}
