package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final /* synthetic */ class zzavm implements zzavv {
    static final zzavv zzdst = new zzavm();

    private zzavm() {
    }

    @Override // com.google.android.gms.internal.ads.zzavv
    public final Object zzb(zzbjf zzbjfVar) throws RemoteException {
        String currentScreenName = zzbjfVar.getCurrentScreenName();
        if (currentScreenName != null) {
            return currentScreenName;
        }
        String currentScreenClass = zzbjfVar.getCurrentScreenClass();
        return currentScreenClass != null ? currentScreenClass : "";
    }
}
