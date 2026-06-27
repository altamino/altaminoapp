package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;

/* loaded from: classes2.dex */
final class zzev implements Runnable {
    private final /* synthetic */ String zzao;
    private final /* synthetic */ String zzav;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzq zzdh;
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzeg zzqq;

    zzev(zzeg zzegVar, String str, String str2, zzm zzmVar, com.google.android.gms.internal.measurement.zzq zzqVar) {
        this.zzqq = zzegVar;
        this.zzao = str;
        this.zzav = str2;
        this.zzos = zzmVar;
        this.zzdh = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            zzam zzamVar = this.zzqq.zzqk;
            if (zzamVar == null) {
                this.zzqq.zzad().zzda().zza("Failed to get conditional properties", this.zzao, this.zzav);
                return;
            }
            ArrayList<Bundle> arrayListZzc = zzgd.zzc(zzamVar.zza(this.zzao, this.zzav, this.zzos));
            this.zzqq.zzfg();
            this.zzqq.zzab().zza(this.zzdh, arrayListZzc);
        } catch (RemoteException e) {
            this.zzqq.zzad().zzda().zza("Failed to get conditional properties", this.zzao, this.zzav, e);
        } finally {
            this.zzqq.zzab().zza(this.zzdh, arrayList);
        }
    }
}
