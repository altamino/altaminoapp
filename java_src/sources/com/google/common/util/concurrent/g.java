package com.google.common.util.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes9.dex */
public final class g extends i {

    private static final class a<V> implements Runnable {
        final f<? super V> callback;
        final Future<V> future;

        @Override // java.lang.Runnable
        public void run() {
            Throwable thA;
            Future<V> future = this.future;
            if ((future instanceof u3.a) && (thA = u3.b.a((u3.a) future)) != null) {
                this.callback.onFailure(thA);
                return;
            }
            try {
                this.callback.onSuccess(g.b(this.future));
            } catch (Error e) {
                e = e;
                this.callback.onFailure(e);
            } catch (RuntimeException e2) {
                e = e2;
                this.callback.onFailure(e);
            } catch (ExecutionException e6) {
                this.callback.onFailure(e6.getCause());
            }
        }

        a(Future<V> future, f<? super V> fVar) {
            this.future = future;
            this.callback = fVar;
        }

        public String toString() {
            return com.google.common.base.i.b(this).c(this.callback).toString();
        }
    }

    public static <V> void a(k<V> kVar, f<? super V> fVar, Executor executor) {
        com.google.common.base.o.k(fVar);
        kVar.addListener(new a(kVar, fVar), executor);
    }

    public static <V> V b(Future<V> future) throws ExecutionException {
        com.google.common.base.o.r(future.isDone(), "Future was expected to be done: %s", future);
        return (V) s.a(future);
    }
}
