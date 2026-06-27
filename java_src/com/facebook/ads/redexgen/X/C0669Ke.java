package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.facebook.ads.InstreamVideoAdListener;
import com.facebook.ads.InstreamVideoAdView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ke, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0669Ke implements InstreamVideoAdView.InstreamVideoLoadConfigBuilder, InstreamVideoAdView.InstreamVideoLoadAdConfig {

    @Nullable
    private String A00;
    private final AnonymousClass99 A01;

    public C0669Ke(AnonymousClass99 anonymousClass99) {
        this.A01 = anonymousClass99;
    }

    @Nullable
    public final String A00() {
        return this.A00;
    }

    public final InstreamVideoAdView.InstreamVideoLoadAdConfig build() {
        return this;
    }

    public final InstreamVideoAdView.InstreamVideoLoadConfigBuilder withAdListener(InstreamVideoAdListener instreamVideoAdListener) {
        this.A01.setAdListener(instreamVideoAdListener);
        return this;
    }

    public final InstreamVideoAdView.InstreamVideoLoadConfigBuilder withBid(String str) {
        this.A00 = str;
        return this;
    }
}
