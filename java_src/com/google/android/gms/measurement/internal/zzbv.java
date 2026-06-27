package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;

/* loaded from: classes2.dex */
final class zzbv implements Thread.UncaughtExceptionHandler {
    private final String zznh;
    private final /* synthetic */ zzbt zzni;

    public zzbv(zzbt zzbtVar, String str) {
        this.zzni = zzbtVar;
        Preconditions.checkNotNull(str);
        this.zznh = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.zzni.zzad().zzda().zza(this.zznh, th);
    }
}
