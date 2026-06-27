package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;

/* loaded from: classes2.dex */
final /* synthetic */ class zzbst implements zzbtu {
    static final zzbtu zzfka = new zzbst();

    private zzbst() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtu
    public final void zzr(Object obj) {
        ((AdMetadataListener) obj).onAdMetadataChanged();
    }
}
