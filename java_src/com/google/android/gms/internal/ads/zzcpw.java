package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzcpw implements zzbrl, zzbro, zzbrw, zzbsr, zzxr {
    private zzyz zzgeo;

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void zzb(zzasr zzasrVar, String str, String str2) {
    }

    public final synchronized void zzc(zzyz zzyzVar) {
        this.zzgeo = zzyzVar;
    }

    public final synchronized zzyz zzald() {
        return this.zzgeo;
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onAdClosed() {
        if (this.zzgeo != null) {
            try {
                this.zzgeo.onAdClosed();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdClosed.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final synchronized void onAdFailedToLoad(int i) {
        if (this.zzgeo != null) {
            try {
                this.zzgeo.onAdFailedToLoad(i);
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdFailedToLoad.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onAdLeftApplication() {
        if (this.zzgeo != null) {
            try {
                this.zzgeo.onAdLeftApplication();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdLeftApplication.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final synchronized void onAdLoaded() {
        if (this.zzgeo != null) {
            try {
                this.zzgeo.onAdLoaded();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdLoaded.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onAdOpened() {
        if (this.zzgeo != null) {
            try {
                this.zzgeo.onAdOpened();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdOpened.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxr
    public final synchronized void onAdClicked() {
        if (this.zzgeo != null) {
            try {
                this.zzgeo.onAdClicked();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdClicked.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrw
    public final synchronized void onAdImpression() {
        if (this.zzgeo != null) {
            try {
                this.zzgeo.onAdImpression();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdImpression.", e);
            }
        }
    }
}
