package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes11.dex */
final class zzmg extends zzaw {
    private final /* synthetic */ zzmd zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzmg(zzmd zzmdVar, zzif zzifVar) {
        super(zzifVar);
        this.zza = zzmdVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaw
    @WorkerThread
    public final void zzb() {
        zzmd.zza(this.zza);
    }
}
