package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"RestrictedApi"})
class p<V> extends AbstractResolvableFuture<V> implements ScheduledFuture<V> {
    private final ScheduledFuture<?> upstreamFuture;

    class a implements b<V> {
        a() {
        }

        @Override // com.google.firebase.concurrent.p.b
        public void a(Throwable th) {
            p.this.r(th);
        }

        @Override // com.google.firebase.concurrent.p.b
        public void set(V v5) {
            p.this.q(v5);
        }
    }

    interface b<T> {
        void a(Throwable th);

        void set(T t5);
    }

    interface c<T> {
        ScheduledFuture<?> a(b<T> bVar);
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    protected void b() {
        this.upstreamFuture.cancel(t());
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return this.upstreamFuture.getDelay(timeUnit);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public int compareTo(Delayed delayed) {
        return this.upstreamFuture.compareTo(delayed);
    }

    p(c<V> cVar) {
        this.upstreamFuture = cVar.a(new a());
    }
}
