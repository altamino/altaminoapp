package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzem implements Runnable {
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzq zzdh;
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzeg zzqq;

    zzem(zzeg zzegVar, zzm zzmVar, com.google.android.gms.internal.measurement.zzq zzqVar) {
        this.zzqq = zzegVar;
        this.zzos = zzmVar;
        this.zzdh = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        try {
            zzam zzamVar = this.zzqq.zzqk;
            if (zzamVar == null) {
                this.zzqq.zzad().zzda().zzaq("Failed to get app instance id");
                return;
            }
            String strZzc = zzamVar.zzc(this.zzos);
            if (strZzc != null) {
                this.zzqq.zzs().zzbi(strZzc);
                this.zzqq.zzae().zzli.zzav(strZzc);
            }
            this.zzqq.zzfg();
            this.zzqq.zzab().zzb(this.zzdh, strZzc);
        } catch (RemoteException e) {
            this.zzqq.zzad().zzda().zza("Failed to get app instance id", e);
        } finally {
            this.zzqq.zzab().zzb(this.zzdh, (String) null);
        }
    }
}
