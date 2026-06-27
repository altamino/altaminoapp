package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzcla extends zzamw implements zzbsm {
    private zzamv zzdhl;
    private zzbsn zzgai;

    public final synchronized void zza(zzamv zzamvVar) {
        this.zzdhl = zzamvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsm
    public final synchronized void zza(zzbsn zzbsnVar) {
        this.zzgai = zzbsnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onAdClicked() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onAdClosed() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onAdFailedToLoad(int i) throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onAdFailedToLoad(i);
        }
        if (this.zzgai != null) {
            this.zzgai.onAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onAdLeftApplication() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onAdOpened() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onAdLoaded() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onAdLoaded();
        }
        if (this.zzgai != null) {
            this.zzgai.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void zza(zzamy zzamyVar) throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.zza(zzamyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onAdImpression() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onAppEvent(String str, String str2) throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onAppEvent(str, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void zza(zzafe zzafeVar, String str) throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.zza(zzafeVar, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onVideoEnd() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onVideoEnd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void zzcz(String str) throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.zzcz(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void zzsm() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.zzsm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onVideoPlay() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onVideoPlay();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void zzb(zzato zzatoVar) throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.zzb(zzatoVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void onVideoPause() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.onVideoPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void zzb(Bundle bundle) throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.zzb(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void zzsn() throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.zzsn();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void zzcs(int i) throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.zzcs(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final synchronized void zza(zzatq zzatqVar) throws RemoteException {
        if (this.zzdhl != null) {
            this.zzdhl.zza(zzatqVar);
        }
    }
}
