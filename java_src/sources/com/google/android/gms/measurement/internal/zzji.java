package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes11.dex */
final class zzji implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ boolean zzb;
    private final /* synthetic */ zziq zzc;

    zzji(zziq zziqVar, AtomicReference atomicReference, boolean z6) {
        this.zzc = zziqVar;
        this.zza = atomicReference;
        this.zzb = z6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzo().zza(this.zza, this.zzb);
    }
}
