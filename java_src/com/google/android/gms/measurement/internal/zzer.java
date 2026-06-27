package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzer implements Runnable {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzeg zzqq;

    zzer(zzeg zzegVar, zzm zzmVar) {
        this.zzqq = zzegVar;
        this.zzos = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        zzam zzamVar = this.zzqq.zzqk;
        if (zzamVar == null) {
            this.zzqq.zzad().zzda().zzaq("Failed to send measurementEnabled to service");
            return;
        }
        try {
            zzamVar.zzb(this.zzos);
            this.zzqq.zzfg();
        } catch (RemoteException e) {
            this.zzqq.zzad().zzda().zza("Failed to send measurementEnabled to the service", e);
        }
    }
}
