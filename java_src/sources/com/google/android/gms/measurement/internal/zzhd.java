package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes10.dex */
final class zzhd<V> extends FutureTask<V> implements Comparable<zzhd<V>> {
    final boolean zza;
    private final long zzb;
    private final String zzc;
    private final /* synthetic */ zzgy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzhd(zzgy zzgyVar, Runnable runnable, boolean z6, String str) {
        super(com.google.android.gms.internal.measurement.zzcl.zza().zza(runnable), null);
        this.zzd = zzgyVar;
        Preconditions.checkNotNull(str);
        long andIncrement = zzgy.zza.getAndIncrement();
        this.zzb = andIncrement;
        this.zzc = str;
        this.zza = z6;
        if (andIncrement == Long.MAX_VALUE) {
            zzgyVar.zzj().zzg().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(@NonNull Object obj) {
        zzhd zzhdVar = (zzhd) obj;
        boolean z6 = this.zza;
        if (z6 != zzhdVar.zza) {
            return z6 ? -1 : 1;
        }
        long j6 = this.zzb;
        long j10 = zzhdVar.zzb;
        if (j6 < j10) {
            return -1;
        }
        if (j6 > j10) {
            return 1;
        }
        this.zzd.zzj().zzm().zza("Two tasks share the same index. index", Long.valueOf(this.zzb));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.zzd.zzj().zzg().zza(this.zzc, th);
        if ((th instanceof zzhb) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzhd(zzgy zzgyVar, Callable<V> callable, boolean z6, String str) {
        super(com.google.android.gms.internal.measurement.zzcl.zza().zza(callable));
        this.zzd = zzgyVar;
        Preconditions.checkNotNull(str);
        long andIncrement = zzgy.zza.getAndIncrement();
        this.zzb = andIncrement;
        this.zzc = str;
        this.zza = z6;
        if (andIncrement == Long.MAX_VALUE) {
            zzgyVar.zzj().zzg().zza("Tasks index overflow");
        }
    }
}
