package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzex implements Runnable {
    private final /* synthetic */ String zzao;
    private final /* synthetic */ String zzav;
    private final /* synthetic */ boolean zzbd;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzq zzdh;
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzeg zzqq;

    zzex(zzeg zzegVar, String str, String str2, boolean z, zzm zzmVar, com.google.android.gms.internal.measurement.zzq zzqVar) {
        this.zzqq = zzegVar;
        this.zzao = str;
        this.zzav = str2;
        this.zzbd = z;
        this.zzos = zzmVar;
        this.zzdh = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        Bundle bundle = new Bundle();
        try {
            zzam zzamVar = this.zzqq.zzqk;
            if (zzamVar == null) {
                this.zzqq.zzad().zzda().zza("Failed to get user properties", this.zzao, this.zzav);
                return;
            }
            Bundle bundleZzb = zzgd.zzb(zzamVar.zza(this.zzao, this.zzav, this.zzbd, this.zzos));
            this.zzqq.zzfg();
            this.zzqq.zzab().zza(this.zzdh, bundleZzb);
        } catch (RemoteException e) {
            this.zzqq.zzad().zzda().zza("Failed to get user properties", this.zzao, e);
        } finally {
            this.zzqq.zzab().zza(this.zzdh, bundle);
        }
    }
}
