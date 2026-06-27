package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class PS extends C8H {
    public PS(Context context) {
        super(context);
        setCarouselLayoutManager(context);
    }

    @Override // com.facebook.ads.redexgen.X.C8H
    public C7P getLayoutManager() {
        return (C7P) super.getLayoutManager();
    }

    private void setCarouselLayoutManager(Context context) {
        C7P c7p = new C7P(context, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            c7p.A1a(true);
        }
        super.setLayoutManager(c7p);
    }

    @Override // com.facebook.ads.redexgen.X.C8H
    public void setLayoutManager(C7N c7n) {
    }
}
