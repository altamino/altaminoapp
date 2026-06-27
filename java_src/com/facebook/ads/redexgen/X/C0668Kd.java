package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Kd, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0668Kd implements AdView.AdViewLoadConfigBuilder, AdView.AdViewLoadConfig {

    @Nullable
    private String A00;
    private final C03638h A01;

    public C0668Kd(C03638h c03638h) {
        this.A01 = c03638h;
    }

    @Nullable
    public final String A00() {
        return this.A00;
    }

    public final AdView.AdViewLoadConfig build() {
        return this;
    }

    public final AdView.AdViewLoadConfigBuilder withAdListener(AdListener adListener) {
        this.A01.setAdListener(adListener);
        return this;
    }

    public final AdView.AdViewLoadConfigBuilder withBid(String str) {
        this.A00 = str;
        return this;
    }
}
