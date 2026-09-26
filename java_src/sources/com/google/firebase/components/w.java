package com.google.firebase.components;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
class w implements l4.d, l4.c {
    private final Executor defaultExecutor;

    @GuardedBy
    private final Map<Class<?>, ConcurrentHashMap<l4.b<Object>, Executor>> handlerMap = new HashMap();

    @GuardedBy
    private Queue<l4.a<?>> pendingEvents = new ArrayDeque();

    private synchronized Set<Map.Entry<l4.b<Object>, Executor>> e(l4.a<?> aVar) {
        ConcurrentHashMap<l4.b<Object>, Executor> concurrentHashMap;
        try {
            concurrentHashMap = this.handlerMap.get(aVar.b());
        } catch (Throwable th) {
            throw th;
        }
        return concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
    }

    @Override // l4.d
    public synchronized <T> void b(Class<T> cls, Executor executor, l4.b<? super T> bVar) {
        try {
            f0.b(cls);
            f0.b(bVar);
            f0.b(executor);
            if (!this.handlerMap.containsKey(cls)) {
                this.handlerMap.put(cls, new ConcurrentHashMap<>());
            }
            this.handlerMap.get(cls).put(bVar, executor);
        } catch (Throwable th) {
            throw th;
        }
    }

    void d() {
        Queue<l4.a<?>> queue;
        synchronized (this) {
            try {
                queue = this.pendingEvents;
                if (queue != null) {
                    this.pendingEvents = null;
                } else {
                    queue = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (queue != null) {
            Iterator<l4.a<?>> it = queue.iterator();
            while (it.hasNext()) {
                g(it.next());
            }
        }
    }

    @Override // l4.d
    public <T> void a(Class<T> cls, l4.b<? super T> bVar) {
        b(cls, this.defaultExecutor, bVar);
    }

    w(Executor executor) {
        this.defaultExecutor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(Map.Entry entry, l4.a aVar) {
        ((l4.b) entry.getKey()).a(aVar);
    }

    public void g(final l4.a<?> aVar) {
        f0.b(aVar);
        synchronized (this) {
            try {
                Queue<l4.a<?>> queue = this.pendingEvents;
                if (queue != null) {
                    queue.add(aVar);
                    return;
                }
                for (final Map.Entry<l4.b<Object>, Executor> entry : e(aVar)) {
                    entry.getValue().execute(new Runnable() { // from class: com.google.firebase.components.v
                        @Override // java.lang.Runnable
                        public final void run() {
                            w.f(entry, aVar);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
