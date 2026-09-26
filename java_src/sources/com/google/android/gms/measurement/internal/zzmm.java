package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzmm extends zzaw {
    private final /* synthetic */ zzmj zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzmm(zzmj zzmjVar, zzif zzifVar) {
        super(zzifVar);
        this.zza = zzmjVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaw
    public final void zzb() {
        this.zza.zzu();
        this.zza.zzj().zzp().zza("Starting upload from DelayedRunnable");
        this.zza.zzf.zzw();
    }
}
