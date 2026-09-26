package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes8.dex */
public final class s<T> {
    private static final int MSG_ITERATION_FINISHED = 0;
    private final d clock;
    private final ArrayDeque<Runnable> flushingEvents;
    private final p handler;
    private final b<T> iterationFinishedEvent;
    private final CopyOnWriteArraySet<c<T>> listeners;
    private final ArrayDeque<Runnable> queuedEvents;
    private boolean released;

    public interface a<T> {
        void invoke(T t5);
    }

    public interface b<T> {
        void a(T t5, m mVar);
    }

    private static final class c<T> {
        private m.b flagsBuilder = new m.b();
        public final T listener;
        private boolean needsIterationFinishedEvent;
        private boolean released;

        public void c(b<T> bVar) {
            this.released = true;
            if (this.needsIterationFinishedEvent) {
                this.needsIterationFinishedEvent = false;
                bVar.a(this.listener, this.flagsBuilder.e());
            }
        }

        public void a(int i10, a<T> aVar) {
            if (this.released) {
                return;
            }
            if (i10 != -1) {
                this.flagsBuilder.a(i10);
            }
            this.needsIterationFinishedEvent = true;
            aVar.invoke(this.listener);
        }

        public void b(b<T> bVar) {
            if (this.released || !this.needsIterationFinishedEvent) {
                return;
            }
            m mVarE = this.flagsBuilder.e();
            this.flagsBuilder = new m.b();
            this.needsIterationFinishedEvent = false;
            bVar.a(this.listener, mVarE);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.listener.equals(((c) obj).listener);
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        public c(T t5) {
            this.listener = t5;
        }
    }

    public s(Looper looper, d dVar, b<T> bVar) {
        this(new CopyOnWriteArraySet(), looper, dVar, bVar);
    }

    private s(CopyOnWriteArraySet<c<T>> copyOnWriteArraySet, Looper looper, d dVar, b<T> bVar) {
        this.clock = dVar;
        this.listeners = copyOnWriteArraySet;
        this.iterationFinishedEvent = bVar;
        this.flushingEvents = new ArrayDeque<>();
        this.queuedEvents = new ArrayDeque<>();
        this.handler = dVar.createHandler(looper, new Handler.Callback() { // from class: com.google.android.exoplayer2.util.q
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f1343a.g(message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(Message message) {
        Iterator<c<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().b(this.iterationFinishedEvent);
            if (this.handler.a(0)) {
                return true;
            }
        }
        return true;
    }

    public void c(T t5) {
        if (this.released) {
            return;
        }
        com.google.android.exoplayer2.util.a.e(t5);
        this.listeners.add(new c<>(t5));
    }

    @CheckResult
    public s<T> d(Looper looper, d dVar, b<T> bVar) {
        return new s<>(this.listeners, looper, dVar, bVar);
    }

    @CheckResult
    public s<T> e(Looper looper, b<T> bVar) {
        return d(looper, this.clock, bVar);
    }

    public void f() {
        if (this.queuedEvents.isEmpty()) {
            return;
        }
        if (!this.handler.a(0)) {
            p pVar = this.handler;
            pVar.b(pVar.obtainMessage(0));
        }
        boolean z6 = !this.flushingEvents.isEmpty();
        this.flushingEvents.addAll(this.queuedEvents);
        this.queuedEvents.clear();
        if (z6) {
            return;
        }
        while (!this.flushingEvents.isEmpty()) {
            this.flushingEvents.peekFirst().run();
            this.flushingEvents.removeFirst();
        }
    }

    public void i(final int i10, final a<T> aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.listeners);
        this.queuedEvents.add(new Runnable() { // from class: com.google.android.exoplayer2.util.r
            @Override // java.lang.Runnable
            public final void run() {
                s.h(copyOnWriteArraySet, i10, aVar);
            }
        });
    }

    public void j() {
        Iterator<c<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().c(this.iterationFinishedEvent);
        }
        this.listeners.clear();
        this.released = true;
    }

    public void k(T t5) {
        for (c<T> cVar : this.listeners) {
            if (cVar.listener.equals(t5)) {
                cVar.c(this.iterationFinishedEvent);
                this.listeners.remove(cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(CopyOnWriteArraySet copyOnWriteArraySet, int i10, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i10, aVar);
        }
    }

    public void l(int i10, a<T> aVar) {
        i(i10, aVar);
        f();
    }
}
