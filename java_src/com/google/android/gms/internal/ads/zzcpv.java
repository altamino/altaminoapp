package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzcpv implements zzxr {
    private zzyw zzgen;

    public final synchronized void zzb(zzyw zzywVar) {
        this.zzgen = zzywVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxr
    public final synchronized void onAdClicked() {
        if (this.zzgen != null) {
            try {
                this.zzgen.onAdClicked();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdClicked.", e);
            }
        }
    }
}
