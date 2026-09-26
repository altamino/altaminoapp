package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e<V> extends d<V> implements k<V> {
    /* JADX INFO: renamed from: j */
    protected abstract k<? extends V> e();

    public static abstract class a<V> extends e<V> {
        private final k<V> delegate;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.d
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public final k<V> f() {
            return this.delegate;
        }

        protected a(k<V> kVar) {
            this.delegate = (k) com.google.common.base.o.k(kVar);
        }
    }

    protected e() {
    }

    @Override // com.google.common.util.concurrent.k
    public void addListener(Runnable runnable, Executor executor) {
        e().addListener(runnable, executor);
    }
}
