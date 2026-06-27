package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;

/* loaded from: classes2.dex */
final class zzann implements InitializationCompleteCallback {
    private final /* synthetic */ zzaiq zzdgk;

    zzann(zzanl zzanlVar, zzaiq zzaiqVar) {
        this.zzdgk = zzaiqVar;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.zzdgk.onInitializationSucceeded();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.zzdgk.onInitializationFailed(str);
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }
}
