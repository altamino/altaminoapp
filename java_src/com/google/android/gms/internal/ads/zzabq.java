package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzabq implements Runnable {
    private final /* synthetic */ zzabp zzcjy;

    zzabq(zzabp zzabpVar) {
        this.zzcjy = zzabpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzcjy.zzcjv != null) {
            try {
                this.zzcjy.zzcjv.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzbad.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
