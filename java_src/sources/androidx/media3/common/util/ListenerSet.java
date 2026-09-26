package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.FlagSet;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class ListenerSet<T> {
    private static final int MSG_ITERATION_FINISHED = 0;
    private final Clock clock;
    private final ArrayDeque<Runnable> flushingEvents;
    private final HandlerWrapper handler;
    private final IterationFinishedEvent<T> iterationFinishedEvent;
    private final CopyOnWriteArraySet<ListenerHolder<T>> listeners;
    private final ArrayDeque<Runnable> queuedEvents;

    @GuardedBy
    private boolean released;
    private final Object releasedLock;
    private boolean throwsWhenUsingWrongThread;

    public interface Event<T> {
        void invoke(T t5);
    }

    public interface IterationFinishedEvent<T> {
        void a(T t5, FlagSet flagSet);
    }

    private static final class ListenerHolder<T> {
        private FlagSet.Builder flagsBuilder = new FlagSet.Builder();
        public final T listener;
        private boolean needsIterationFinishedEvent;
        private boolean released;

        public void c(IterationFinishedEvent<T> iterationFinishedEvent) {
            this.released = true;
            if (this.needsIterationFinishedEvent) {
                this.needsIterationFinishedEvent = false;
                iterationFinishedEvent.a(this.listener, this.flagsBuilder.e());
            }
        }

        public void a(int i10, Event<T> event) {
            if (this.released) {
                return;
            }
            if (i10 != -1) {
                this.flagsBuilder.a(i10);
            }
            this.needsIterationFinishedEvent = true;
            event.invoke(this.listener);
        }

        public void b(IterationFinishedEvent<T> iterationFinishedEvent) {
            if (this.released || !this.needsIterationFinishedEvent) {
                return;
            }
            FlagSet flagSetE = this.flagsBuilder.e();
            this.flagsBuilder = new FlagSet.Builder();
            this.needsIterationFinishedEvent = false;
            iterationFinishedEvent.a(this.listener, flagSetE);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ListenerHolder.class != obj.getClass()) {
                return false;
            }
            return this.listener.equals(((ListenerHolder) obj).listener);
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        public ListenerHolder(T t5) {
            this.listener = t5;
        }
    }

    public ListenerSet(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        this(new CopyOnWriteArraySet(), looper, clock, iterationFinishedEvent, true);
    }

    private ListenerSet(CopyOnWriteArraySet<ListenerHolder<T>> copyOnWriteArraySet, Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent, boolean z6) {
        this.clock = clock;
        this.listeners = copyOnWriteArraySet;
        this.iterationFinishedEvent = iterationFinishedEvent;
        this.releasedLock = new Object();
        this.flushingEvents = new ArrayDeque<>();
        this.queuedEvents = new ArrayDeque<>();
        this.handler = clock.createHandler(looper, new Handler.Callback() { // from class: androidx.media3.common.util.a
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f274a.g(message);
            }
        });
        this.throwsWhenUsingWrongThread = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(Message message) {
        Iterator<ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().b(this.iterationFinishedEvent);
            if (this.handler.a(0)) {
                return true;
            }
        }
        return true;
    }

    private void m() {
        if (this.throwsWhenUsingWrongThread) {
            Assertions.g(Thread.currentThread() == this.handler.getLooper().getThread());
        }
    }

    @CheckResult
    public ListenerSet<T> d(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        return new ListenerSet<>(this.listeners, looper, clock, iterationFinishedEvent, this.throwsWhenUsingWrongThread);
    }

    @CheckResult
    public ListenerSet<T> e(Looper looper, IterationFinishedEvent<T> iterationFinishedEvent) {
        return d(looper, this.clock, iterationFinishedEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(CopyOnWriteArraySet copyOnWriteArraySet, int i10, Event event) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((ListenerHolder) it.next()).a(i10, event);
        }
    }

    public void c(T t5) {
        Assertions.e(t5);
        synchronized (this.releasedLock) {
            try {
                if (this.released) {
                    return;
                }
                this.listeners.add(new ListenerHolder<>(t5));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void f() {
        m();
        if (this.queuedEvents.isEmpty()) {
            return;
        }
        if (!this.handler.a(0)) {
            HandlerWrapper handlerWrapper = this.handler;
            handlerWrapper.c(handlerWrapper.obtainMessage(0));
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

    public void i(final int i10, final Event<T> event) {
        m();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.listeners);
        this.queuedEvents.add(new Runnable() { // from class: androidx.media3.common.util.b
            @Override // java.lang.Runnable
            public final void run() {
                ListenerSet.h(copyOnWriteArraySet, i10, event);
            }
        });
    }

    public void j() {
        m();
        synchronized (this.releasedLock) {
            this.released = true;
        }
        Iterator<ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().c(this.iterationFinishedEvent);
        }
        this.listeners.clear();
    }

    public void k(T t5) {
        m();
        for (ListenerHolder<T> listenerHolder : this.listeners) {
            if (listenerHolder.listener.equals(t5)) {
                listenerHolder.c(this.iterationFinishedEvent);
                this.listeners.remove(listenerHolder);
            }
        }
    }

    public void l(int i10, Event<T> event) {
        i(i10, event);
        f();
    }
}
