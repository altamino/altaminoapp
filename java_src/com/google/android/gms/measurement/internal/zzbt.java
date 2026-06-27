package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.narvii.scene.poll.ScenePollPlayView;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzbt extends zzcu {
    private static final AtomicLong zzng = new AtomicLong(Long.MIN_VALUE);
    private zzbx zzmx;
    private zzbx zzmy;
    private final PriorityBlockingQueue<zzbw<?>> zzmz;
    private final BlockingQueue<zzbw<?>> zzna;
    private final Thread.UncaughtExceptionHandler zznb;
    private final Thread.UncaughtExceptionHandler zznc;
    private final Object zznd;
    private final Semaphore zzne;
    private volatile boolean zznf;

    zzbt(zzby zzbyVar) {
        super(zzbyVar);
        this.zznd = new Object();
        this.zzne = new Semaphore(2);
        this.zzmz = new PriorityBlockingQueue<>();
        this.zzna = new LinkedBlockingQueue();
        this.zznb = new zzbv(this, "Thread death: Uncaught exception on worker thread");
        this.zznc = new zzbv(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // com.google.android.gms.measurement.internal.zzcu
    protected final boolean zzak() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final void zzq() {
        if (Thread.currentThread() != this.zzmx) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final void zzp() {
        if (Thread.currentThread() != this.zzmy) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    public final boolean zzef() {
        return Thread.currentThread() == this.zzmx;
    }

    public final <V> Future<V> zza(Callable<V> callable) throws IllegalStateException {
        zzah();
        Preconditions.checkNotNull(callable);
        zzbw<?> zzbwVar = new zzbw<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzmx) {
            if (!this.zzmz.isEmpty()) {
                zzad().zzdd().zzaq("Callable skipped the worker queue.");
            }
            zzbwVar.run();
        } else {
            zza(zzbwVar);
        }
        return zzbwVar;
    }

    public final <V> Future<V> zzb(Callable<V> callable) throws IllegalStateException {
        zzah();
        Preconditions.checkNotNull(callable);
        zzbw<?> zzbwVar = new zzbw<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzmx) {
            zzbwVar.run();
        } else {
            zza(zzbwVar);
        }
        return zzbwVar;
    }

    public final void zza(Runnable runnable) throws IllegalStateException {
        zzah();
        Preconditions.checkNotNull(runnable);
        zza(new zzbw<>(this, runnable, false, "Task exception on worker thread"));
    }

    final <T> T zza(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) throws IllegalStateException {
        synchronized (atomicReference) {
            zzac().zza(runnable);
            try {
                atomicReference.wait(ScenePollPlayView.POLL_COUNT_DOWN_MS);
            } catch (InterruptedException unused) {
                zzaw zzawVarZzdd = zzad().zzdd();
                String strValueOf = String.valueOf(str);
                zzawVarZzdd.zzaq(strValueOf.length() != 0 ? "Interrupted waiting for ".concat(strValueOf) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            zzaw zzawVarZzdd2 = zzad().zzdd();
            String strValueOf2 = String.valueOf(str);
            zzawVarZzdd2.zzaq(strValueOf2.length() != 0 ? "Timed out waiting for ".concat(strValueOf2) : new String("Timed out waiting for "));
        }
        return t;
    }

    private final void zza(zzbw<?> zzbwVar) {
        synchronized (this.zznd) {
            this.zzmz.add(zzbwVar);
            if (this.zzmx == null) {
                this.zzmx = new zzbx(this, "Measurement Worker", this.zzmz);
                this.zzmx.setUncaughtExceptionHandler(this.zznb);
                this.zzmx.start();
            } else {
                this.zzmx.zzeh();
            }
        }
    }

    public final void zzb(Runnable runnable) throws IllegalStateException {
        zzah();
        Preconditions.checkNotNull(runnable);
        zzbw<?> zzbwVar = new zzbw<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.zznd) {
            this.zzna.add(zzbwVar);
            if (this.zzmy == null) {
                this.zzmy = new zzbx(this, "Measurement Network", this.zzna);
                this.zzmy.setUncaughtExceptionHandler(this.zznc);
                this.zzmy.start();
            } else {
                this.zzmy.zzeh();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzn() {
        super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzo() {
        super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzad zzy() {
        return super.zzy();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Clock zzz() {
        return super.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzas zzaa() {
        return super.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzgd zzab() {
        return super.zzab();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzbt zzac() {
        return super.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzau zzad() {
        return super.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzbf zzae() {
        return super.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzt zzaf() {
        return super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzq zzag() {
        return super.zzag();
    }

    static /* synthetic */ zzbx zza(zzbt zzbtVar, zzbx zzbxVar) {
        zzbtVar.zzmx = null;
        return null;
    }

    static /* synthetic */ zzbx zzb(zzbt zzbtVar, zzbx zzbxVar) {
        zzbtVar.zzmy = null;
        return null;
    }
}
