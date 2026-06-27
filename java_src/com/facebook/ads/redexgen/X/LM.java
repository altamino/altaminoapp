package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class LM implements NativeAdBase.NativeAdLoadConfigBuilder, NativeAdBase.NativeLoadAdConfig {

    @Nullable
    private NativeAdBase.MediaCacheFlag A02;

    @Nullable
    private String A03;
    private boolean A04;
    private final NativeAdBase A05;
    private final L8 A06;
    private int A01 = -1;
    private int A00 = -1;

    public LM(L8 l8, NativeAdBase nativeAdBase) {
        this.A06 = l8;
        this.A05 = nativeAdBase;
    }

    public final NativeAdBase.NativeLoadAdConfig build() {
        return this;
    }

    public final void loadAd() {
        if (this.A02 == null) {
            this.A02 = NativeAdBase.MediaCacheFlag.ALL;
        }
        this.A06.A1E(EnumC0685Kv.A00(this.A02), this.A03, new IB(this.A04, this.A01, this.A00));
    }

    public final NativeAdBase.NativeAdLoadConfigBuilder withAdListener(NativeAdListener nativeAdListener) {
        this.A06.setAdListener(nativeAdListener, this.A05);
        return this;
    }

    public final NativeAdBase.NativeAdLoadConfigBuilder withBid(String str) {
        this.A03 = str;
        return this;
    }

    public final NativeAdBase.NativeAdLoadConfigBuilder withMediaCacheFlag(NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A02 = mediaCacheFlag;
        return this;
    }

    public final NativeAdBase.NativeAdLoadConfigBuilder withPreloadedIconView(int i, int i2) {
        this.A04 = true;
        this.A01 = i;
        this.A00 = i2;
        return this;
    }
}
