package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzabo implements Runnable {
    private final /* synthetic */ zzabn zzcjx;

    zzabo(zzabn zzabnVar) {
        this.zzcjx = zzabnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzcjx.zzcjw.zzcjv != null) {
            try {
                this.zzcjx.zzcjw.zzcjv.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzbad.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
