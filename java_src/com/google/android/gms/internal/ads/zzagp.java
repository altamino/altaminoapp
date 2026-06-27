package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

@zzard
/* loaded from: classes2.dex */
public final class zzagp extends zzafs {
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener zzczh;

    public zzagp(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener) {
        this.zzczh = onCustomTemplateAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final void zzb(zzafe zzafeVar) {
        this.zzczh.onCustomTemplateAdLoaded(zzafh.zza(zzafeVar));
    }
}
