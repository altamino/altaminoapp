package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzcmi extends zzaoq {
    private zzcjy<zzaov, zzcla> zzfzw;
    private final /* synthetic */ zzcmg zzgbb;

    private zzcmi(zzcmg zzcmgVar, zzcjy zzcjyVar) {
        this.zzgbb = zzcmgVar;
        this.zzfzw = zzcjyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaop
    public final void zza(zzang zzangVar) throws RemoteException {
        this.zzgbb.zzgba = zzangVar;
        ((zzcla) this.zzfzw.zzfzn).onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzaop
    public final void zzdb(String str) throws RemoteException {
        ((zzcla) this.zzfzw.zzfzn).onAdFailedToLoad(0);
    }
}
