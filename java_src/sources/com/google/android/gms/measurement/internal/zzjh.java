package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes11.dex */
final class zzjh extends zzaw {
    private final /* synthetic */ zziq zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzjh(zziq zziqVar, zzif zzifVar) {
        super(zzifVar);
        this.zza = zziqVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaw
    @WorkerThread
    public final void zzb() {
        if (this.zza.zzu.zzah()) {
            this.zza.zzn.zza(2000L);
        }
    }
}
