package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzcqm extends zzzq {
    private final /* synthetic */ zzcqj zzgfo;
    private final /* synthetic */ zzzp zzgfp;

    zzcqm(zzcqj zzcqjVar, zzzp zzzpVar) {
        this.zzgfo = zzcqjVar;
        this.zzgfp = zzzpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzp
    public final void onAdMetadataChanged() throws RemoteException {
        zzzp zzzpVar;
        if (!this.zzgfo.zzgfg || (zzzpVar = this.zzgfp) == null) {
            return;
        }
        zzzpVar.onAdMetadataChanged();
    }
}
