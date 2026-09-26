package com.google.android.gms.measurement.internal;

import com.google.common.util.concurrent.f;

/* JADX INFO: loaded from: classes11.dex */
final class zzjc implements f<Object> {
    private final /* synthetic */ zzmh zza;
    private final /* synthetic */ zziq zzb;

    zzjc(zziq zziqVar, zzmh zzmhVar) {
        this.zzb = zziqVar;
        this.zza = zzmhVar;
    }

    @Override // com.google.common.util.concurrent.f
    public final void onFailure(Throwable th) {
        this.zzb.zzt();
        this.zzb.zzh = false;
        this.zzb.zzan();
        this.zzb.zzj().zzg().zza("registerTriggerAsync failed with throwable", th);
    }

    @Override // com.google.common.util.concurrent.f
    public final void onSuccess(Object obj) {
        this.zzb.zzt();
        this.zzb.zzh = false;
        this.zzb.zzan();
        this.zzb.zzj().zzc().zza("registerTriggerAsync ran. uri", this.zza.zza);
    }
}
