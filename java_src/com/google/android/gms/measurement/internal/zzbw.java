package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* loaded from: classes2.dex */
final class zzbw<V> extends FutureTask<V> implements Comparable<zzbw> {
    private final String zznh;
    private final /* synthetic */ zzbt zzni;
    private final long zznj;
    final boolean zznk;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbw(zzbt zzbtVar, Callable<V> callable, boolean z, String str) throws IllegalStateException {
        super(callable);
        this.zzni = zzbtVar;
        Preconditions.checkNotNull(str);
        this.zznj = zzbt.zzng.getAndIncrement();
        this.zznh = str;
        this.zznk = z;
        if (this.zznj == Long.MAX_VALUE) {
            zzbtVar.zzad().zzda().zzaq("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbw(zzbt zzbtVar, Runnable runnable, boolean z, String str) throws IllegalStateException {
        super(runnable, null);
        this.zzni = zzbtVar;
        Preconditions.checkNotNull(str);
        this.zznj = zzbt.zzng.getAndIncrement();
        this.zznh = str;
        this.zznk = false;
        if (this.zznj == Long.MAX_VALUE) {
            zzbtVar.zzad().zzda().zzaq("Tasks index overflow");
        }
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) throws IllegalStateException {
        this.zzni.zzad().zzda().zza(this.zznh, th);
        if (th instanceof zzbu) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzbw zzbwVar) throws IllegalStateException {
        zzbw zzbwVar2 = zzbwVar;
        boolean z = this.zznk;
        if (z != zzbwVar2.zznk) {
            return z ? -1 : 1;
        }
        long j = this.zznj;
        long j2 = zzbwVar2.zznj;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.zzni.zzad().zzdb().zza("Two tasks share the same index. index", Long.valueOf(this.zznj));
        return 0;
    }
}
