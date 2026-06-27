package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzaby implements Runnable {
    private final /* synthetic */ zzabx zzckd;

    zzaby(zzabx zzabxVar) {
        this.zzckd = zzabxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzckd.zzckc != null) {
            try {
                this.zzckd.zzckc.onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzbad.zzd("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
