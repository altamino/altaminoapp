package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzeo implements Runnable {
    private final /* synthetic */ zzec zzqi;
    private final /* synthetic */ zzeg zzqq;

    zzeo(zzeg zzegVar, zzec zzecVar) {
        this.zzqq = zzegVar;
        this.zzqi = zzecVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        zzam zzamVar = this.zzqq.zzqk;
        if (zzamVar == null) {
            this.zzqq.zzad().zzda().zzaq("Failed to send current screen to service");
            return;
        }
        try {
            if (this.zzqi == null) {
                zzamVar.zza(0L, (String) null, (String) null, this.zzqq.getContext().getPackageName());
            } else {
                zzamVar.zza(this.zzqi.zzpw, this.zzqi.zzpu, this.zzqi.zzpv, this.zzqq.getContext().getPackageName());
            }
            this.zzqq.zzfg();
        } catch (RemoteException e) {
            this.zzqq.zzad().zzda().zza("Failed to send current screen to the service", e);
        }
    }
}
