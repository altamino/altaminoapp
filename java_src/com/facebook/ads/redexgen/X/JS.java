package com.facebook.ads.redexgen.X;

import com.facebook.ads.AudienceNetworkAds;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class JS implements AudienceNetworkAds.InitResult {
    private final String A00;
    private final boolean A01;

    public JS(boolean z, String str) {
        this.A01 = z;
        this.A00 = str;
    }

    public final String getMessage() {
        return this.A00;
    }

    public final boolean isSuccess() {
        return this.A01;
    }
}
