package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public final class zzclb extends zzatl implements zzbsm {
    private zzbsn zzgai;
    private zzatk zzgaj;
    private zzbvo zzgak;

    public final synchronized void zza(zzatk zzatkVar) {
        this.zzgaj = zzatkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsm
    public final synchronized void zza(zzbsn zzbsnVar) {
        this.zzgai = zzbsnVar;
    }

    public final synchronized void zza(zzbvo zzbvoVar) {
        this.zzgak = zzbvoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzae(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzae(iObjectWrapper);
        }
        if (this.zzgak != null) {
            this.zzgak.onInitializationSucceeded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzd(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzd(iObjectWrapper, i);
        }
        if (this.zzgak != null) {
            this.zzgak.zzdl(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzah(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzah(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zza(IObjectWrapper iObjectWrapper, zzato zzatoVar) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zza(iObjectWrapper, zzatoVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzaj(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzaj(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzai(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzai(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zze(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zze(iObjectWrapper, i);
        }
        if (this.zzgai != null) {
            this.zzgai.onAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzak(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzak(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzal(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzal(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzag(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzag(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzaf(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzaf(iObjectWrapper);
        }
        if (this.zzgai != null) {
            this.zzgai.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final synchronized void zzb(Bundle bundle) throws RemoteException {
        if (this.zzgaj != null) {
            this.zzgaj.zzb(bundle);
        }
    }
}
