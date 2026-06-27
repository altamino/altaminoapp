package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

/* loaded from: classes2.dex */
public final class zzagt extends zzage {
    private final UnifiedNativeAd.UnconfirmedClickListener zzczn;

    public zzagt(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zzczn = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagd
    public final void onUnconfirmedClickReceived(String str) {
        this.zzczn.onUnconfirmedClickReceived(str);
    }

    @Override // com.google.android.gms.internal.ads.zzagd
    public final void onUnconfirmedClickCancelled() {
        this.zzczn.onUnconfirmedClickCancelled();
    }
}
