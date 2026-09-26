package androidx.work.impl.utils.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.concurrent.futures.a;
import com.google.common.util.concurrent.k;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public abstract class AbstractFuture<V> implements k<V> {
    static final AtomicHelper ATOMIC_HELPER;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;

    @Nullable
    volatile Listener listeners;

    @Nullable
    volatile Object value;

    @Nullable
    volatile Waiter waiters;
    static final boolean GENERATE_CANCELLATION_CAUSES = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger log = Logger.getLogger(AbstractFuture.class.getName());

    private static abstract class AtomicHelper {
        private AtomicHelper() {
        }

        abstract boolean a(AbstractFuture<?> future, Listener expect, Listener update);

        abstract boolean b(AbstractFuture<?> future, Object expect, Object update);

        abstract boolean c(AbstractFuture<?> future, Waiter expect, Waiter update);

        abstract void d(Waiter waiter, Waiter newValue);

        abstract void e(Waiter waiter, Thread newValue);
    }

    private static final class Cancellation {
        static final Cancellation CAUSELESS_CANCELLED;
        static final Cancellation CAUSELESS_INTERRUPTED;

        @Nullable
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (AbstractFuture.GENERATE_CANCELLATION_CAUSES) {
                CAUSELESS_CANCELLED = null;
                CAUSELESS_INTERRUPTED = null;
            } else {
                CAUSELESS_CANCELLED = new Cancellation(false, null);
                CAUSELESS_INTERRUPTED = new Cancellation(true, null);
            }
        }

        Cancellation(boolean wasInterrupted, @Nullable Throwable cause) {
            this.wasInterrupted = wasInterrupted;
            this.cause = cause;
        }
    }

    private static final class SafeAtomicHelper extends AtomicHelper {
        final AtomicReferenceFieldUpdater<AbstractFuture, Listener> listenersUpdater;
        final AtomicReferenceFieldUpdater<AbstractFuture, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Waiter> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<AbstractFuture, Waiter> waitersUpdater;

        SafeAtomicHelper(AtomicReferenceFieldUpdater<Waiter, Thread> waiterThreadUpdater, AtomicReferenceFieldUpdater<Waiter, Waiter> waiterNextUpdater, AtomicReferenceFieldUpdater<AbstractFuture, Waiter> waitersUpdater, AtomicReferenceFieldUpdater<AbstractFuture, Listener> listenersUpdater, AtomicReferenceFieldUpdater<AbstractFuture, Object> valueUpdater) {
            super();
            this.waiterThreadUpdater = waiterThreadUpdater;
            this.waiterNextUpdater = waiterNextUpdater;
            this.waitersUpdater = waitersUpdater;
            this.listenersUpdater = listenersUpdater;
            this.valueUpdater = valueUpdater;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean a(AbstractFuture<?> future, Listener expect, Listener update) {
            return a.a(this.listenersUpdater, future, expect, update);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean b(AbstractFuture<?> future, Object expect, Object update) {
            return a.a(this.valueUpdater, future, expect, update);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean c(AbstractFuture<?> future, Waiter expect, Waiter update) {
            return a.a(this.waitersUpdater, future, expect, update);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        void d(Waiter waiter, Waiter newValue) {
            this.waiterNextUpdater.lazySet(waiter, newValue);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        void e(Waiter waiter, Thread newValue) {
            this.waiterThreadUpdater.lazySet(waiter, newValue);
        }
    }

    private static final class SetFuture<V> implements Runnable {
        final k<? extends V> future;
        final AbstractFuture<V> owner;

        @Override // java.lang.Runnable
        public void run() {
            if (this.owner.value != this) {
                return;
            }
            if (AbstractFuture.ATOMIC_HELPER.b(this.owner, this, AbstractFuture.i(this.future))) {
                AbstractFuture.f(this.owner);
            }
        }

        SetFuture(AbstractFuture<V> owner, k<? extends V> future) {
            this.owner = owner;
            this.future = future;
        }
    }

    private static final class SynchronizedHelper extends AtomicHelper {
        SynchronizedHelper() {
            super();
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean a(AbstractFuture<?> future, Listener expect, Listener update) {
            synchronized (future) {
                try {
                    if (future.listeners != expect) {
                        return false;
                    }
                    future.listeners = update;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean b(AbstractFuture<?> future, Object expect, Object update) {
            synchronized (future) {
                try {
                    if (future.value != expect) {
                        return false;
                    }
                    future.value = update;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean c(AbstractFuture<?> future, Waiter expect, Waiter update) {
            synchronized (future) {
                try {
                    if (future.waiters != expect) {
                        return false;
                    }
                    future.waiters = update;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        void d(Waiter waiter, Waiter newValue) {
            waiter.next = newValue;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        void e(Waiter waiter, Thread newValue) {
            waiter.thread = newValue;
        }
    }

    private static final class Waiter {
        static final Waiter TOMBSTONE = new Waiter(false);

        @Nullable
        volatile Waiter next;

        @Nullable
        volatile Thread thread;

        Waiter(boolean unused) {
        }

        Waiter() {
            AbstractFuture.ATOMIC_HELPER.e(this, Thread.currentThread());
        }

        void a(Waiter next) {
            AbstractFuture.ATOMIC_HELPER.d(this, next);
        }

        void b() {
            Thread thread = this.thread;
            if (thread != null) {
                this.thread = null;
                LockSupport.unpark(thread);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    static void f(AbstractFuture<?> abstractFuture) {
        Listener listener = null;
        while (true) {
            abstractFuture.m();
            abstractFuture.b();
            Listener listenerE = abstractFuture.e(listener);
            while (listenerE != null) {
                listener = listenerE.next;
                Runnable runnable = listenerE.task;
                if (runnable instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable;
                    abstractFuture = setFuture.owner;
                    if (abstractFuture.value == setFuture) {
                        if (ATOMIC_HELPER.b(abstractFuture, setFuture, i(setFuture.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    g(runnable, listenerE.executor);
                }
                listenerE = listener;
            }
            return;
        }
    }

    private static <V> V j(Future<V> future) throws ExecutionException {
        V v5;
        boolean z6 = false;
        while (true) {
            try {
                v5 = future.get();
                break;
            } catch (InterruptedException unused) {
                z6 = true;
            } catch (Throwable th) {
                if (z6) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z6) {
            Thread.currentThread().interrupt();
        }
        return v5;
    }

    private void n(Waiter node) {
        node.thread = null;
        while (true) {
            Waiter waiter = this.waiters;
            if (waiter == Waiter.TOMBSTONE) {
                return;
            }
            Waiter waiter2 = null;
            while (waiter != null) {
                Waiter waiter3 = waiter.next;
                if (waiter.thread != null) {
                    waiter2 = waiter;
                } else if (waiter2 != null) {
                    waiter2.next = waiter3;
                    if (waiter2.thread == null) {
                    }
                } else if (!ATOMIC_HELPER.c(this, waiter, waiter3)) {
                }
                waiter = waiter3;
            }
            return;
        }
    }

    protected void b() {
    }

    @Override // java.util.concurrent.Future
    public final V get(long timeout, TimeUnit unit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = unit.toNanos(timeout);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return h(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            Waiter waiter = this.waiters;
            if (waiter != Waiter.TOMBSTONE) {
                Waiter waiter2 = new Waiter();
                while (true) {
                    waiter2.a(waiter);
                    if (ATOMIC_HELPER.c(this, waiter, waiter2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                n(waiter2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return h(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        n(waiter2);
                        break;
                    }
                    waiter = this.waiters;
                    if (waiter == Waiter.TOMBSTONE) {
                    }
                }
            }
            return h(this.value);
        }
        while (nanos > 0) {
            Object obj3 = this.value;
            if ((obj3 != null) && (!(obj3 instanceof SetFuture))) {
                return h(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = unit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String str = "Waited " + timeout + " " + unit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String str2 = str + " (plus ";
            long j6 = -nanos;
            long jConvert = unit.convert(j6, TimeUnit.NANOSECONDS);
            long nanos2 = j6 - unit.toNanos(jConvert);
            boolean z6 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String str3 = str2 + jConvert + " " + lowerCase;
                if (z6) {
                    str3 = str3 + ",";
                }
                str2 = str3 + " ";
            }
            if (z6) {
                str2 = str2 + nanos2 + " nanoseconds ";
            }
            str = str2 + "delay)";
        }
        if (isDone()) {
            throw new TimeoutException(str + " but future completed as timeout expired");
        }
        throw new TimeoutException(str + " for " + string);
    }

    protected void k() {
    }

    private static final class Failure {
        static final Failure FALLBACK_INSTANCE = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.work.impl.utils.futures.AbstractFuture.Failure.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable exception;

        Failure(Throwable exception) {
            this.exception = (Throwable) AbstractFuture.d(exception);
        }
    }

    private static final class Listener {
        static final Listener TOMBSTONE = new Listener(null, null);
        final Executor executor;

        @Nullable
        Listener next;
        final Runnable task;

        Listener(Runnable task, Executor executor) {
            this.task = task;
            this.executor = executor;
        }
    }

    static {
        AtomicHelper synchronizedHelper;
        try {
            synchronizedHelper = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, "next"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Waiter.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Listener.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "value"));
            th = null;
        } catch (Throwable th) {
            th = th;
            synchronizedHelper = new SynchronizedHelper();
        }
        ATOMIC_HELPER = synchronizedHelper;
        if (th != null) {
            log.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        NULL = new Object();
    }

    private void a(StringBuilder builder) {
        try {
            Object objJ = j(this);
            builder.append("SUCCESS, result=[");
            builder.append(r(objJ));
            builder.append("]");
        } catch (CancellationException unused) {
            builder.append("CANCELLED");
        } catch (RuntimeException e) {
            builder.append("UNKNOWN, cause=[");
            builder.append(e.getClass());
            builder.append(" thrown from get()]");
        } catch (ExecutionException e2) {
            builder.append("FAILURE, cause=[");
            builder.append(e2.getCause());
            builder.append("]");
        }
    }

    private static CancellationException c(@Nullable String message, @Nullable Throwable cause) {
        CancellationException cancellationException = new CancellationException(message);
        cancellationException.initCause(cause);
        return cancellationException;
    }

    private Listener e(Listener onto) {
        Listener listener;
        do {
            listener = this.listeners;
        } while (!ATOMIC_HELPER.a(this, listener, Listener.TOMBSTONE));
        Listener listener2 = onto;
        Listener listener3 = listener;
        while (listener3 != null) {
            Listener listener4 = listener3.next;
            listener3.next = listener2;
            listener2 = listener3;
            listener3 = listener4;
        }
        return listener2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V h(Object obj) throws ExecutionException {
        if (obj instanceof Cancellation) {
            throw c("Task was cancelled.", ((Cancellation) obj).cause);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).exception);
        }
        if (obj == NULL) {
            return null;
        }
        return obj;
    }

    static Object i(k<?> future) {
        if (future instanceof AbstractFuture) {
            Object obj = ((AbstractFuture) future).value;
            if (!(obj instanceof Cancellation)) {
                return obj;
            }
            Cancellation cancellation = (Cancellation) obj;
            if (cancellation.wasInterrupted) {
                return cancellation.cause != null ? new Cancellation(false, cancellation.cause) : Cancellation.CAUSELESS_CANCELLED;
            }
            return obj;
        }
        boolean zIsCancelled = future.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && zIsCancelled) {
            return Cancellation.CAUSELESS_CANCELLED;
        }
        try {
            Object objJ = j(future);
            return objJ == null ? NULL : objJ;
        } catch (CancellationException e) {
            if (zIsCancelled) {
                return new Cancellation(false, e);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + future, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    private void m() {
        Waiter waiter;
        do {
            waiter = this.waiters;
        } while (!ATOMIC_HELPER.c(this, waiter, Waiter.TOMBSTONE));
        while (waiter != null) {
            waiter.b();
            waiter = waiter.next;
        }
    }

    private String r(Object o) {
        return o == this ? "this future" : String.valueOf(o);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean mayInterruptIfRunning) {
        Cancellation cancellation;
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        if (GENERATE_CANCELLATION_CAUSES) {
            cancellation = new Cancellation(mayInterruptIfRunning, new CancellationException("Future.cancel() was called."));
        } else {
            cancellation = mayInterruptIfRunning ? Cancellation.CAUSELESS_INTERRUPTED : Cancellation.CAUSELESS_CANCELLED;
        }
        AbstractFuture<V> abstractFuture = this;
        boolean z6 = false;
        while (true) {
            if (ATOMIC_HELPER.b(abstractFuture, obj, cancellation)) {
                if (mayInterruptIfRunning) {
                    abstractFuture.k();
                }
                f(abstractFuture);
                if (!(obj instanceof SetFuture)) {
                    return true;
                }
                k<? extends V> kVar = ((SetFuture) obj).future;
                if (!(kVar instanceof AbstractFuture)) {
                    kVar.cancel(mayInterruptIfRunning);
                    return true;
                }
                abstractFuture = (AbstractFuture) kVar;
                obj = abstractFuture.value;
                if (!(obj == null) && !(obj instanceof SetFuture)) {
                    return true;
                }
                z6 = true;
            } else {
                obj = abstractFuture.value;
                if (!(obj instanceof SetFuture)) {
                    return z6;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.value instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof SetFuture)) & (obj != null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    protected String l() {
        Object obj = this.value;
        if (obj instanceof SetFuture) {
            return "setFuture=[" + r(((SetFuture) obj).future) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected boolean o(@Nullable V v5) {
        if (v5 == null) {
            v5 = (V) NULL;
        }
        if (!ATOMIC_HELPER.b(this, null, v5)) {
            return false;
        }
        f(this);
        return true;
    }

    protected boolean p(Throwable throwable) {
        if (!ATOMIC_HELPER.b(this, null, new Failure((Throwable) d(throwable)))) {
            return false;
        }
        f(this);
        return true;
    }

    public String toString() {
        String strL;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                strL = l();
            } catch (RuntimeException e) {
                strL = "Exception thrown from implementation: " + e.getClass();
            }
            if (strL != null && !strL.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strL);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    protected AbstractFuture() {
    }

    @NonNull
    static <T> T d(@Nullable T reference) {
        reference.getClass();
        return reference;
    }

    private static void g(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            log.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override // com.google.common.util.concurrent.k
    public final void addListener(Runnable listener, Executor executor) {
        d(listener);
        d(executor);
        Listener listener2 = this.listeners;
        if (listener2 != Listener.TOMBSTONE) {
            Listener listener3 = new Listener(listener, executor);
            do {
                listener3.next = listener2;
                if (ATOMIC_HELPER.a(this, listener2, listener3)) {
                    return;
                } else {
                    listener2 = this.listeners;
                }
            } while (listener2 != Listener.TOMBSTONE);
        }
        g(listener, executor);
    }

    protected boolean q(k<? extends V> future) {
        Failure failure;
        d(future);
        Object obj = this.value;
        if (obj == null) {
            if (future.isDone()) {
                if (!ATOMIC_HELPER.b(this, null, i(future))) {
                    return false;
                }
                f(this);
                return true;
            }
            SetFuture setFuture = new SetFuture(this, future);
            if (ATOMIC_HELPER.b(this, null, setFuture)) {
                try {
                    future.addListener(setFuture, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable unused) {
                        failure = Failure.FALLBACK_INSTANCE;
                    }
                    ATOMIC_HELPER.b(this, setFuture, failure);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof Cancellation) {
            future.cancel(((Cancellation) obj).wasInterrupted);
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return h(obj2);
            }
            Waiter waiter = this.waiters;
            if (waiter != Waiter.TOMBSTONE) {
                Waiter waiter2 = new Waiter();
                do {
                    waiter2.a(waiter);
                    if (ATOMIC_HELPER.c(this, waiter, waiter2)) {
                        do {
                            LockSupport.park(this);
                            if (Thread.interrupted()) {
                                n(waiter2);
                                throw new InterruptedException();
                            }
                            obj = this.value;
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return h(obj);
                    }
                    waiter = this.waiters;
                } while (waiter != Waiter.TOMBSTONE);
            }
            return h(this.value);
        }
        throw new InterruptedException();
    }
}
