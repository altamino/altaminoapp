package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
final class zzcot implements com.google.android.gms.ads.internal.zzf {
    private final /* synthetic */ zzcxu zzgbx;
    private final /* synthetic */ zzcxm zzgby;
    private final /* synthetic */ zzbbr zzgcx;
    private final /* synthetic */ zzcoz zzgcy;
    private final /* synthetic */ zzcor zzgcz;

    zzcot(zzcor zzcorVar, zzbbr zzbbrVar, zzcxu zzcxuVar, zzcxm zzcxmVar, zzcoz zzcozVar) {
        this.zzgcz = zzcorVar;
        this.zzgcx = zzbbrVar;
        this.zzgbx = zzcxuVar;
        this.zzgby = zzcxmVar;
        this.zzgcy = zzcozVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzky() {
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzkz() {
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzg(View view) {
        this.zzgcx.set(this.zzgcz.zzgcv.zza(this.zzgbx, this.zzgby, view, this.zzgcy));
    }
}
