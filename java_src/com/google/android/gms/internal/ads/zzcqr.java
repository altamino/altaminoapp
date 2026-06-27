package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzcqr implements zzban<zzcrc> {
    private final /* synthetic */ zzavy zzgfr;

    zzcqr(zzcqq zzcqqVar, zzavy zzavyVar) {
        this.zzgfr = zzavyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        try {
            this.zzgfr.onError("Internal error.");
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzcrc zzcrcVar) {
        zzcrc zzcrcVar2 = zzcrcVar;
        try {
            this.zzgfr.zzk(zzcrcVar2.zzgfw, zzcrcVar2.zzgfx);
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }
}
