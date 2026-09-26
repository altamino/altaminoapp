package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
final class zzha implements Thread.UncaughtExceptionHandler {
    private final String zza;
    private final /* synthetic */ zzgy zzb;

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.zzb.zzj().zzg().zza(this.zza, th);
    }

    public zzha(zzgy zzgyVar, String str) {
        this.zzb = zzgyVar;
        Preconditions.checkNotNull(str);
        this.zza = str;
    }
}
