package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes2.dex */
final class zzen implements Runnable {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzeg zzqq;

    zzen(zzeg zzegVar, zzm zzmVar) {
        this.zzqq = zzegVar;
        this.zzos = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        zzam zzamVar = this.zzqq.zzqk;
        if (zzamVar == null) {
            this.zzqq.zzad().zzda().zzaq("Discarding data. Failed to send app launch");
            return;
        }
        try {
            zzamVar.zza(this.zzos);
            this.zzqq.zza(zzamVar, (AbstractSafeParcelable) null, this.zzos);
            this.zzqq.zzfg();
        } catch (RemoteException e) {
            this.zzqq.zzad().zzda().zza("Failed to send app launch to the service", e);
        }
    }
}
