package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

@zzard
/* loaded from: classes2.dex */
public final class zzago extends zzafp {
    private final NativeCustomTemplateAd.OnCustomClickListener zzczg;

    public zzago(NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zzczg = onCustomClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzafo
    public final void zza(zzafe zzafeVar, String str) {
        this.zzczg.onCustomClick(zzafh.zza(zzafeVar), str);
    }
}
