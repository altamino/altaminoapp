package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzcng extends zzaot {
    private zzcjy<zzaov, zzcla> zzfzw;

    private zzcng(zzcnd zzcndVar, zzcjy zzcjyVar) {
        this.zzfzw = zzcjyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaos
    public final void zzsw() throws RemoteException {
        ((zzcla) this.zzfzw.zzfzn).onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzaos
    public final void zzdb(String str) throws RemoteException {
        ((zzcla) this.zzfzw.zzfzn).onAdFailedToLoad(0);
    }
}
