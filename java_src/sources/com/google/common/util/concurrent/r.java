package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: loaded from: classes7.dex */
class r<V> extends c.a<V> implements RunnableFuture<V> {
    private volatile j<?> task;

    private final class a extends j<V> {
        private final Callable<V> callable;

        a(Callable<V> callable) {
            this.callable = (Callable) com.google.common.base.o.k(callable);
        }

        @Override // com.google.common.util.concurrent.j
        void a(Throwable th) {
            r.this.B(th);
        }

        @Override // com.google.common.util.concurrent.j
        void b(V v5) {
            r.this.A(v5);
        }

        @Override // com.google.common.util.concurrent.j
        final boolean d() {
            return r.this.isDone();
        }

        @Override // com.google.common.util.concurrent.j
        V e() throws Exception {
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.j
        String f() {
            return this.callable.toString();
        }
    }

    static <V> r<V> D(Runnable runnable, V v5) {
        return new r<>(Executors.callable(runnable, v5));
    }

    static <V> r<V> E(Callable<V> callable) {
        return new r<>(callable);
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        j<?> jVar = this.task;
        if (jVar != null) {
            jVar.run();
        }
        this.task = null;
    }

    @Override // com.google.common.util.concurrent.a
    protected String x() {
        j<?> jVar = this.task;
        if (jVar == null) {
            return super.x();
        }
        String strValueOf = String.valueOf(jVar);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 7);
        sb.append("task=[");
        sb.append(strValueOf);
        sb.append("]");
        return sb.toString();
    }

    r(Callable<V> callable) {
        this.task = new a(callable);
    }

    @Override // com.google.common.util.concurrent.a
    protected void m() {
        j<?> jVar;
        super.m();
        if (C() && (jVar = this.task) != null) {
            jVar.c();
        }
        this.task = null;
    }
}
