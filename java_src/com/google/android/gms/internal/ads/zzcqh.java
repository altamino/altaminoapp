package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzcqh extends zzaap {
    private final /* synthetic */ zzcqf zzgfi;
    private final /* synthetic */ zzaao zzgfj;

    zzcqh(zzcqf zzcqfVar, zzaao zzaaoVar) {
        this.zzgfi = zzcqfVar;
        this.zzgfj = zzaaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaao
    public final void onAdMetadataChanged() throws RemoteException {
        zzaao zzaaoVar;
        if (!this.zzgfi.zzgfg || (zzaaoVar = this.zzgfj) == null) {
            return;
        }
        zzaaoVar.onAdMetadataChanged();
    }
}
