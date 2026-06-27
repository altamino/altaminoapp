package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;

/* loaded from: classes2.dex */
final class zzaph implements SignalCallbacks {
    private final /* synthetic */ zzaoy zzdhk;

    zzaph(zzapc zzapcVar, zzaoy zzaoyVar) {
        this.zzdhk = zzaoyVar;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String str) {
        try {
            this.zzdhk.zzdc(str);
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String str) {
        try {
            this.zzdhk.onFailure(str);
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }
}
