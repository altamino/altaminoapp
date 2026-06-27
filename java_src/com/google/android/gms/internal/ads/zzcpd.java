package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
final class zzcpd implements com.google.android.gms.ads.internal.zzf {
    private final /* synthetic */ zzbvy zzgdf;

    zzcpd(zzcpa zzcpaVar, zzbvy zzbvyVar) {
        this.zzgdf = zzbvyVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzg(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzky() {
        this.zzgdf.zzadf().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzkz() {
        this.zzgdf.zzadg().onAdImpression();
        this.zzgdf.zzadh().zzagx();
    }
}
