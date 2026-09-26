package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
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

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public abstract class AbstractResolvableFuture<V> implements k<V> {
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
    private static final Logger log = Logger.getLogger(AbstractResolvableFuture.class.getName());

    private static abstract class AtomicHelper {
        private AtomicHelper() {
        }

        abstract boolean a(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2);

        abstract boolean b(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2);

        abstract boolean c(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2);

        abstract void d(Waiter waiter, Waiter waiter2);

        abstract void e(Waiter waiter, Thread thread);
    }

    private static final class Cancellation {
        static final Cancellation CAUSELESS_CANCELLED;
        static final Cancellation CAUSELESS_INTERRUPTED;

        @Nullable
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (AbstractResolvableFuture.GENERATE_CANCELLATION_CAUSES) {
                CAUSELESS_CANCELLED = null;
                CAUSELESS_INTERRUPTED = null;
            } else {
                CAUSELESS_CANCELLED = new Cancellation(false, null);
                CAUSELESS_INTERRUPTED = new Cancellation(true, null);
            }
        }

        Cancellation(boolean z6, @Nullable Throwable th) {
            this.wasInterrupted = z6;
            this.cause = th;
        }
    }

    private static final class SafeAtomicHelper extends AtomicHelper {
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Listener> listenersUpdater;
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Waiter> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Waiter> waitersUpdater;

        SafeAtomicHelper(AtomicReferenceFieldUpdater<Waiter, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<Waiter, Waiter> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Waiter> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Listener> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.waiterThreadUpdater = atomicReferenceFieldUpdater;
            this.waiterNextUpdater = atomicReferenceFieldUpdater2;
            this.waitersUpdater = atomicReferenceFieldUpdater3;
            this.listenersUpdater = atomicReferenceFieldUpdater4;
            this.valueUpdater = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean a(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2) {
            return a.a(this.listenersUpdater, abstractResolvableFuture, listener, listener2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean b(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            return a.a(this.valueUpdater, abstractResolvableFuture, obj, obj2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean c(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            return a.a(this.waitersUpdater, abstractResolvableFuture, waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void d(Waiter waiter, Waiter waiter2) {
            this.waiterNextUpdater.lazySet(waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void e(Waiter waiter, Thread thread) {
            this.waiterThreadUpdater.lazySet(waiter, thread);
        }
    }

    private static final class SetFuture<V> implements Runnable {
        final k<? extends V> future;
        final AbstractResolvableFuture<V> owner;

        @Override // java.lang.Runnable
        public void run() {
            if (this.owner.value != this) {
                return;
            }
            if (AbstractResolvableFuture.ATOMIC_HELPER.b(this.owner, this, AbstractResolvableFuture.j(this.future))) {
                AbstractResolvableFuture.f(this.owner);
            }
        }
    }

    private static final class SynchronizedHelper extends AtomicHelper {
        SynchronizedHelper() {
            super();
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean a(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.listeners != listener) {
                        return false;
                    }
                    abstractResolvableFuture.listeners = listener2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean b(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.value != obj) {
                        return false;
                    }
                    abstractResolvableFuture.value = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean c(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.waiters != waiter) {
                        return false;
                    }
                    abstractResolvableFuture.waiters = waiter2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void d(Waiter waiter, Waiter waiter2) {
            waiter.next = waiter2;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void e(Waiter waiter, Thread thread) {
            waiter.thread = thread;
        }
    }

    private static final class Waiter {
        static final Waiter TOMBSTONE = new Waiter(false);

        @Nullable
        volatile Waiter next;

        @Nullable
        volatile Thread thread;

        Waiter(boolean z6) {
        }

        Waiter() {
            AbstractResolvableFuture.ATOMIC_HELPER.e(this, Thread.currentThread());
        }

        void a(Waiter waiter) {
            AbstractResolvableFuture.ATOMIC_HELPER.d(this, waiter);
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
    static void f(AbstractResolvableFuture<?> abstractResolvableFuture) {
        Listener listener = null;
        while (true) {
            abstractResolvableFuture.o();
            abstractResolvableFuture.b();
            Listener listenerE = abstractResolvableFuture.e(listener);
            while (listenerE != null) {
                listener = listenerE.next;
                Runnable runnable = listenerE.task;
                if (runnable instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable;
                    abstractResolvableFuture = setFuture.owner;
                    if (abstractResolvableFuture.value == setFuture) {
                        if (ATOMIC_HELPER.b(abstractResolvableFuture, setFuture, j(setFuture.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    h(runnable, listenerE.executor);
                }
                listenerE = listener;
            }
            return;
        }
    }

    @RestrictTo
    static <V> V k(Future<V> future) throws ExecutionException {
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

    private void p(Waiter waiter) {
        waiter.thread = null;
        while (true) {
            Waiter waiter2 = this.waiters;
            if (waiter2 == Waiter.TOMBSTONE) {
                return;
            }
            Waiter waiter3 = null;
            while (waiter2 != null) {
                Waiter waiter4 = waiter2.next;
                if (waiter2.thread != null) {
                    waiter3 = waiter2;
                } else if (waiter3 != null) {
                    waiter3.next = waiter4;
                    if (waiter3.thread == null) {
                    }
                } else if (!ATOMIC_HELPER.c(this, waiter2, waiter4)) {
                }
                waiter2 = waiter4;
            }
            return;
        }
    }

    protected void b() {
    }

    @Override // java.util.concurrent.Future
    public final V get(long j6, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j6);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return i(obj);
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
                                p(waiter2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return i(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        p(waiter2);
                        break;
                    }
                    waiter = this.waiters;
                    if (waiter == Waiter.TOMBSTONE) {
                    }
                }
            }
            return i(this.value);
        }
        while (nanos > 0) {
            Object obj3 = this.value;
            if ((obj3 != null) && (!(obj3 instanceof SetFuture))) {
                return i(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String str = "Waited " + j6 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String str2 = str + " (plus ";
            long j10 = -nanos;
            long jConvert = timeUnit.convert(j10, TimeUnit.NANOSECONDS);
            long nanos2 = j10 - timeUnit.toNanos(jConvert);
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

    protected void l() {
    }

    private static final class Failure {
        static final Failure FALLBACK_INSTANCE = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.concurrent.futures.AbstractResolvableFuture.Failure.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable exception;

        Failure(Throwable th) {
            this.exception = (Throwable) AbstractResolvableFuture.d(th);
        }
    }

    private static final class Listener {
        static final Listener TOMBSTONE = new Listener(null, null);
        final Executor executor;

        @Nullable
        Listener next;
        final Runnable task;

        Listener(Runnable runnable, Executor executor) {
            this.task = runnable;
            this.executor = executor;
        }
    }

    static {
        AtomicHelper synchronizedHelper;
        try {
            synchronizedHelper = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, "next"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Waiter.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Listener.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "value"));
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

    private void a(StringBuilder sb) {
        try {
            Object objK = k(this);
            sb.append("SUCCESS, result=[");
            sb.append(s(objK));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append("]");
        }
    }

    private static CancellationException c(@Nullable String str, @Nullable Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    private Listener e(Listener listener) {
        Listener listener2;
        do {
            listener2 = this.listeners;
        } while (!ATOMIC_HELPER.a(this, listener2, Listener.TOMBSTONE));
        Listener listener3 = listener;
        Listener listener4 = listener2;
        while (listener4 != null) {
            Listener listener5 = listener4.next;
            listener4.next = listener3;
            listener3 = listener4;
            listener4 = listener5;
        }
        return listener3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V i(Object obj) throws ExecutionException {
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

    static Object j(k<?> kVar) {
        if (kVar instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) kVar).value;
            if (!(obj instanceof Cancellation)) {
                return obj;
            }
            Cancellation cancellation = (Cancellation) obj;
            if (cancellation.wasInterrupted) {
                return cancellation.cause != null ? new Cancellation(false, cancellation.cause) : Cancellation.CAUSELESS_CANCELLED;
            }
            return obj;
        }
        boolean zIsCancelled = kVar.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && zIsCancelled) {
            return Cancellation.CAUSELESS_CANCELLED;
        }
        try {
            Object objK = k(kVar);
            return objK == null ? NULL : objK;
        } catch (CancellationException e) {
            if (zIsCancelled) {
                return new Cancellation(false, e);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + kVar, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    private void o() {
        Waiter waiter;
        do {
            waiter = this.waiters;
        } while (!ATOMIC_HELPER.c(this, waiter, Waiter.TOMBSTONE));
        while (waiter != null) {
            waiter.b();
            waiter = waiter.next;
        }
    }

    private String s(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z6) {
        Cancellation cancellation;
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        if (GENERATE_CANCELLATION_CAUSES) {
            cancellation = new Cancellation(z6, new CancellationException("Future.cancel() was called."));
        } else {
            cancellation = z6 ? Cancellation.CAUSELESS_INTERRUPTED : Cancellation.CAUSELESS_CANCELLED;
        }
        AbstractResolvableFuture<V> abstractResolvableFuture = this;
        boolean z10 = false;
        while (true) {
            if (ATOMIC_HELPER.b(abstractResolvableFuture, obj, cancellation)) {
                if (z6) {
                    abstractResolvableFuture.l();
                }
                f(abstractResolvableFuture);
                if (!(obj instanceof SetFuture)) {
                    return true;
                }
                k<? extends V> kVar = ((SetFuture) obj).future;
                if (!(kVar instanceof AbstractResolvableFuture)) {
                    kVar.cancel(z6);
                    return true;
                }
                abstractResolvableFuture = (AbstractResolvableFuture) kVar;
                obj = abstractResolvableFuture.value;
                if (!(obj == null) && !(obj instanceof SetFuture)) {
                    return true;
                }
                z10 = true;
            } else {
                obj = abstractResolvableFuture.value;
                if (!(obj instanceof SetFuture)) {
                    return z10;
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
    protected String n() {
        Object obj = this.value;
        if (obj instanceof SetFuture) {
            return "setFuture=[" + s(((SetFuture) obj).future) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
    public boolean q(@Nullable V v5) {
        if (v5 == null) {
            v5 = (V) NULL;
        }
        if (!ATOMIC_HELPER.b(this, null, v5)) {
            return false;
        }
        f(this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean r(Throwable th) {
        if (!ATOMIC_HELPER.b(this, null, new Failure((Throwable) d(th)))) {
            return false;
        }
        f(this);
        return true;
    }

    protected final boolean t() {
        Object obj = this.value;
        return (obj instanceof Cancellation) && ((Cancellation) obj).wasInterrupted;
    }

    public String toString() {
        String strN;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                strN = n();
            } catch (RuntimeException e) {
                strN = "Exception thrown from implementation: " + e.getClass();
            }
            if (strN != null && !strN.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strN);
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

    protected AbstractResolvableFuture() {
    }

    @NonNull
    static <T> T d(@Nullable T t5) {
        t5.getClass();
        return t5;
    }

    private static void h(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            log.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override // com.google.common.util.concurrent.k
    public final void addListener(Runnable runnable, Executor executor) {
        d(runnable);
        d(executor);
        Listener listener = this.listeners;
        if (listener != Listener.TOMBSTONE) {
            Listener listener2 = new Listener(runnable, executor);
            do {
                listener2.next = listener;
                if (ATOMIC_HELPER.a(this, listener, listener2)) {
                    return;
                } else {
                    listener = this.listeners;
                }
            } while (listener != Listener.TOMBSTONE);
        }
        h(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return i(obj2);
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
                                p(waiter2);
                                throw new InterruptedException();
                            }
                            obj = this.value;
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return i(obj);
                    }
                    waiter = this.waiters;
                } while (waiter != Waiter.TOMBSTONE);
            }
            return i(this.value);
        }
        throw new InterruptedException();
    }
}
