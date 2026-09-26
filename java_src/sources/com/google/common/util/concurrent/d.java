package com.google.common.util.concurrent;

import com.google.common.collect.v;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes10.dex */
public abstract class d<V> extends v implements Future<V> {
    protected abstract Future<? extends V> f();

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        return f().get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j6, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return f().get(j6, timeUnit);
    }

    protected d() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z6) {
        return f().cancel(z6);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return f().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return f().isDone();
    }
}
