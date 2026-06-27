package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzclt extends zzaon {
    private zzcjy<zzaov, zzcla> zzfzw;

    private zzclt(zzclq zzclqVar, zzcjy zzcjyVar) {
        this.zzfzw = zzcjyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaom
    public final void zzsw() throws RemoteException {
        ((zzcla) this.zzfzw.zzfzn).onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzaom
    public final void zzdb(String str) throws RemoteException {
        ((zzcla) this.zzfzw.zzfzn).onAdFailedToLoad(0);
    }
}
