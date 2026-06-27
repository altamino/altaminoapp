package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzcqa implements zzbrl, zzbrs {
    private zzatw zzges;
    private zzaue zzget;

    public final synchronized void zzb(zzatw zzatwVar) {
        this.zzges = zzatwVar;
    }

    public final synchronized void zzb(zzaue zzaueVar) {
        this.zzget = zzaueVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onAdOpened() {
        if (this.zzges != null) {
            try {
                this.zzges.onRewardedAdOpened();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onAdClosed() {
        if (this.zzges != null) {
            try {
                this.zzges.onRewardedAdClosed();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbrl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzb(com.google.android.gms.internal.ads.zzasr r5, java.lang.String r6, java.lang.String r7) {
        /*
            r4 = this;
            monitor-enter(r4)
            com.google.android.gms.internal.ads.zzatw r0 = r4.zzges     // Catch: java.lang.Throwable -> L3e
            if (r0 == 0) goto L1e
            com.google.android.gms.internal.ads.zzatw r0 = r4.zzges     // Catch: android.os.RemoteException -> L18 java.lang.Throwable -> L3e
            com.google.android.gms.internal.ads.zzaup r1 = new com.google.android.gms.internal.ads.zzaup     // Catch: android.os.RemoteException -> L18 java.lang.Throwable -> L3e
            java.lang.String r2 = r5.getType()     // Catch: android.os.RemoteException -> L18 java.lang.Throwable -> L3e
            int r3 = r5.getAmount()     // Catch: android.os.RemoteException -> L18 java.lang.Throwable -> L3e
            r1.<init>(r2, r3)     // Catch: android.os.RemoteException -> L18 java.lang.Throwable -> L3e
            r0.zza(r1)     // Catch: android.os.RemoteException -> L18 java.lang.Throwable -> L3e
            goto L1e
        L18:
            r0 = move-exception
            java.lang.String r1 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzbad.zze(r1, r0)     // Catch: java.lang.Throwable -> L3e
        L1e:
            com.google.android.gms.internal.ads.zzaue r0 = r4.zzget     // Catch: java.lang.Throwable -> L3e
            if (r0 == 0) goto L3c
            com.google.android.gms.internal.ads.zzaue r0 = r4.zzget     // Catch: android.os.RemoteException -> L36 java.lang.Throwable -> L3e
            com.google.android.gms.internal.ads.zzaup r1 = new com.google.android.gms.internal.ads.zzaup     // Catch: android.os.RemoteException -> L36 java.lang.Throwable -> L3e
            java.lang.String r2 = r5.getType()     // Catch: android.os.RemoteException -> L36 java.lang.Throwable -> L3e
            int r5 = r5.getAmount()     // Catch: android.os.RemoteException -> L36 java.lang.Throwable -> L3e
            r1.<init>(r2, r5)     // Catch: android.os.RemoteException -> L36 java.lang.Throwable -> L3e
            r0.zza(r1, r6, r7)     // Catch: android.os.RemoteException -> L36 java.lang.Throwable -> L3e
            monitor-exit(r4)
            return
        L36:
            r5 = move-exception
            java.lang.String r6 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzbad.zze(r6, r5)     // Catch: java.lang.Throwable -> L3e
        L3c:
            monitor-exit(r4)
            return
        L3e:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcqa.zzb(com.google.android.gms.internal.ads.zzasr, java.lang.String, java.lang.String):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbrs
    public final synchronized void zzcs(int i) {
        if (this.zzges != null) {
            try {
                this.zzges.onRewardedAdFailedToShow(i);
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final synchronized void onRewardedVideoCompleted() {
    }
}
