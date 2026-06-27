package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzaod implements Runnable {
    private final /* synthetic */ zzanu zzdgx;

    zzaod(zzanu zzanuVar) {
        this.zzdgx = zzanuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzdgx.zzdgl.onAdClosed();
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }
}
