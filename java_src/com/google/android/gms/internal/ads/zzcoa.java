package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
final class zzcoa extends zzatl {
    private final /* synthetic */ zzbsv zzgcd;
    private final /* synthetic */ zzbri zzgce;
    private final /* synthetic */ zzbse zzgcf;
    private final /* synthetic */ zzbvj zzgcg;

    zzcoa(zzcnw zzcnwVar, zzbsv zzbsvVar, zzbri zzbriVar, zzbse zzbseVar, zzbvj zzbvjVar) {
        this.zzgcd = zzbsvVar;
        this.zzgce = zzbriVar;
        this.zzgcf = zzbseVar;
        this.zzgcg = zzbvjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzae(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzaf(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzd(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zze(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzag(IObjectWrapper iObjectWrapper) {
        this.zzgcd.zzta();
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzai(IObjectWrapper iObjectWrapper) {
        this.zzgcd.zzsz();
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzaj(IObjectWrapper iObjectWrapper) {
        this.zzgce.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzak(IObjectWrapper iObjectWrapper) {
        this.zzgcf.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zza(IObjectWrapper iObjectWrapper, zzato zzatoVar) {
        this.zzgcg.zza(zzatoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzah(IObjectWrapper iObjectWrapper) {
        this.zzgcg.zzrq();
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzal(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zzgcf.onRewardedVideoCompleted();
    }
}
