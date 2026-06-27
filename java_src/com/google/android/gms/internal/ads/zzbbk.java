package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

@zzard
/* loaded from: classes2.dex */
final class zzbbk<V> extends FutureTask<V> implements zzbbh<V> {
    private final zzbbi zzdzy;

    zzbbk(Callable<V> callable) {
        super(callable);
        this.zzdzy = new zzbbi();
    }

    zzbbk(Runnable runnable, V v) {
        super(runnable, v);
        this.zzdzy = new zzbbi();
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void zza(Runnable runnable, Executor executor) {
        this.zzdzy.zza(runnable, executor);
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        this.zzdzy.zzxd();
    }
}
