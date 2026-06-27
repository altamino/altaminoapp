package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;

@zzard
/* loaded from: classes2.dex */
public final class zzxy extends zzzq {
    private final AdMetadataListener zzcgm;

    public zzxy(AdMetadataListener adMetadataListener) {
        this.zzcgm = adMetadataListener;
    }

    @Override // com.google.android.gms.internal.ads.zzzp
    public final void onAdMetadataChanged() {
        AdMetadataListener adMetadataListener = this.zzcgm;
        if (adMetadataListener != null) {
            adMetadataListener.onAdMetadataChanged();
        }
    }
}
