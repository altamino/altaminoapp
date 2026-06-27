package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzanx implements Runnable {
    private final /* synthetic */ zzanu zzdgx;

    zzanx(zzanu zzanuVar) {
        this.zzdgx = zzanuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzdgx.zzdgl.onAdLoaded();
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }
}
