package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzanw implements Runnable {
    private final /* synthetic */ zzanu zzdgx;

    zzanw(zzanu zzanuVar) {
        this.zzdgx = zzanuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzdgx.zzdgl.onAdOpened();
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }
}
