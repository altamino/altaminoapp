package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzcqc implements zzbrl, zzbro, zzbsr {
    private zzatb zzgev;
    private zzasu zzgew;

    public final synchronized void zzb(zzatb zzatbVar) {
        this.zzgev = zzatbVar;
    }

    public final synchronized void zzb(zzasu zzasuVar) {
        this.zzgew = zzasuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onAdClosed() {
        if (this.zzgev != null) {
            try {
                this.zzgev.onRewardedVideoAdClosed();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdClosed.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final synchronized void onAdFailedToLoad(int i) {
        if (this.zzgev != null) {
            try {
                this.zzgev.onRewardedVideoAdFailedToLoad(i);
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdFailedToLoad.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onAdLeftApplication() {
        if (this.zzgev != null) {
            try {
                this.zzgev.onRewardedVideoAdLeftApplication();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdLeftApplication.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final synchronized void onAdLoaded() {
        if (this.zzgev != null) {
            try {
                this.zzgev.onRewardedVideoAdLoaded();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdLoaded.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onAdOpened() {
        if (this.zzgev != null) {
            try {
                this.zzgev.onRewardedVideoAdOpened();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdOpened.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onRewardedVideoStarted() {
        if (this.zzgev != null) {
            try {
                this.zzgev.onRewardedVideoStarted();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onRewardedVideoStarted.", e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0015 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbrl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzb(com.google.android.gms.internal.ads.zzasr r3, java.lang.String r4, java.lang.String r5) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.google.android.gms.internal.ads.zzatb r0 = r2.zzgev     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto L11
            com.google.android.gms.internal.ads.zzatb r0 = r2.zzgev     // Catch: android.os.RemoteException -> Lb java.lang.Throwable -> L24
            r0.zza(r3)     // Catch: android.os.RemoteException -> Lb java.lang.Throwable -> L24
            goto L11
        Lb:
            r0 = move-exception
            java.lang.String r1 = "Remote Exception at onRewarded."
            com.google.android.gms.internal.ads.zzbad.zzd(r1, r0)     // Catch: java.lang.Throwable -> L24
        L11:
            com.google.android.gms.internal.ads.zzasu r0 = r2.zzgew     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto L22
            com.google.android.gms.internal.ads.zzasu r0 = r2.zzgew     // Catch: android.os.RemoteException -> L1c java.lang.Throwable -> L24
            r0.zza(r3, r4, r5)     // Catch: android.os.RemoteException -> L1c java.lang.Throwable -> L24
            monitor-exit(r2)
            return
        L1c:
            r3 = move-exception
            java.lang.String r4 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzbad.zze(r4, r3)     // Catch: java.lang.Throwable -> L24
        L22:
            monitor-exit(r2)
            return
        L24:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcqc.zzb(com.google.android.gms.internal.ads.zzasr, java.lang.String, java.lang.String):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onRewardedVideoCompleted() {
        if (this.zzgev != null) {
            try {
                this.zzgev.onRewardedVideoCompleted();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
