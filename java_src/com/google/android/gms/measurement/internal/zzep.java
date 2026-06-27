package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzep implements Runnable {
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzq zzdh;
    private final /* synthetic */ zzaj zzdj;
    private final /* synthetic */ String zzdk;
    private final /* synthetic */ zzeg zzqq;

    zzep(zzeg zzegVar, zzaj zzajVar, String str, com.google.android.gms.internal.measurement.zzq zzqVar) {
        this.zzqq = zzegVar;
        this.zzdj = zzajVar;
        this.zzdk = str;
        this.zzdh = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        try {
            zzam zzamVar = this.zzqq.zzqk;
            if (zzamVar == null) {
                this.zzqq.zzad().zzda().zzaq("Discarding data. Failed to send event to service to bundle");
                return;
            }
            byte[] bArrZza = zzamVar.zza(this.zzdj, this.zzdk);
            this.zzqq.zzfg();
            this.zzqq.zzab().zza(this.zzdh, bArrZza);
        } catch (RemoteException e) {
            this.zzqq.zzad().zzda().zza("Failed to send event to the service to bundle", e);
        } finally {
            this.zzqq.zzab().zza(this.zzdh, (byte[]) null);
        }
    }
}
