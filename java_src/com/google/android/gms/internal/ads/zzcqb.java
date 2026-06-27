package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzcqb implements zzbro, zzbsr {
    private zzaub zzgeu;

    public final synchronized void zza(zzaub zzaubVar) {
        this.zzgeu = zzaubVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final synchronized void onAdLoaded() {
        if (this.zzgeu != null) {
            try {
                this.zzgeu.onRewardedAdLoaded();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final synchronized void onAdFailedToLoad(int i) {
        if (this.zzgeu != null) {
            try {
                this.zzgeu.onRewardedAdFailedToLoad(i);
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
