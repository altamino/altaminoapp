package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzard
/* loaded from: classes2.dex */
public class zzbbr<T> implements zzbbh<T> {
    private T value;
    private Throwable zzeal;
    private boolean zzeam;
    private boolean zzean;
    private final Object lock = new Object();
    private final zzbbi zzdzy = new zzbbi();

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void zza(Runnable runnable, Executor executor) {
        this.zzdzy.zza(runnable, executor);
    }

    public final void set(T t) {
        synchronized (this.lock) {
            if (this.zzean) {
                return;
            }
            if (zzxf()) {
                com.google.android.gms.ads.internal.zzk.zzlk().zzb(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture.set");
                return;
            }
            this.zzeam = true;
            this.value = t;
            this.lock.notifyAll();
            this.zzdzy.zzxd();
        }
    }

    public final void setException(Throwable th) {
        synchronized (this.lock) {
            if (this.zzean) {
                return;
            }
            if (zzxf()) {
                com.google.android.gms.ads.internal.zzk.zzlk().zzb(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture.setException");
                return;
            }
            this.zzeal = th;
            this.lock.notifyAll();
            this.zzdzy.zzxd();
        }
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, CancellationException, InterruptedException {
        T t;
        synchronized (this.lock) {
            while (!zzxf()) {
                this.lock.wait();
            }
            if (this.zzeal != null) {
                throw new ExecutionException(this.zzeal);
            }
            if (this.zzean) {
                throw new CancellationException("SettableFuture was cancelled.");
            }
            t = this.value;
        }
        return t;
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws ExecutionException, CancellationException, InterruptedException, TimeoutException {
        T t;
        synchronized (this.lock) {
            long millis = timeUnit.toMillis(j);
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = millis + jCurrentTimeMillis;
            while (!zzxf() && jCurrentTimeMillis < j2) {
                this.lock.wait(j2 - jCurrentTimeMillis);
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            if (this.zzean) {
                throw new CancellationException("SettableFuture was cancelled.");
            }
            if (this.zzeal != null) {
                throw new ExecutionException(this.zzeal);
            }
            if (!this.zzeam) {
                throw new TimeoutException("SettableFuture timed out.");
            }
            t = this.value;
        }
        return t;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        if (!z) {
            return false;
        }
        synchronized (this.lock) {
            if (zzxf()) {
                return false;
            }
            this.zzean = true;
            this.zzeam = true;
            this.lock.notifyAll();
            this.zzdzy.zzxd();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzean;
        }
        return z;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean zZzxf;
        synchronized (this.lock) {
            zZzxf = zzxf();
        }
        return zZzxf;
    }

    private final boolean zzxf() {
        return this.zzeal != null || this.zzeam;
    }
}
