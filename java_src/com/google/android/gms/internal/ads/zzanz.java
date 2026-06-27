package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;

/* loaded from: classes2.dex */
final class zzanz implements Runnable {
    private final /* synthetic */ zzanu zzdgx;
    private final /* synthetic */ AdRequest.ErrorCode zzdgy;

    zzanz(zzanu zzanuVar, AdRequest.ErrorCode errorCode) {
        this.zzdgx = zzanuVar;
        this.zzdgy = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzdgx.zzdgl.onAdFailedToLoad(zzaog.zza(this.zzdgy));
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }
}
