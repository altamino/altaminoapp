package com.google.android.gms.measurement.internal;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes10.dex */
final class zziz implements Executor {
    private final /* synthetic */ zziq zza;

    zziz(zziq zziqVar) {
        this.zza = zziqVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zza.zzl().zzb(runnable);
    }
}
