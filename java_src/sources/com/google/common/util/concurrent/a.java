package com.google.common.util.concurrent;

import com.google.common.base.t;
import com.google.common.base.w;
import com.narvii.chat.input.MentionedEditText;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
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
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a<V> extends u3.a implements com.google.common.util.concurrent.k<V> {
    private static final b ATOMIC_HELPER;
    static final boolean GENERATE_CANCELLATION_CAUSES;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;
    private static final Logger log;
    private volatile e listeners;
    private volatile Object value;
    private volatile l waiters;

    private static abstract class b {
        private b() {
        }

        abstract boolean a(a<?> aVar, e eVar, e eVar2);

        abstract boolean b(a<?> aVar, Object obj, Object obj2);

        abstract boolean c(a<?> aVar, l lVar, l lVar2);

        abstract e d(a<?> aVar, e eVar);

        abstract l e(a<?> aVar, l lVar);

        abstract void f(l lVar, l lVar2);

        abstract void g(l lVar, Thread thread);
    }

    private static final class c {
        static final c CAUSELESS_CANCELLED;
        static final c CAUSELESS_INTERRUPTED;
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (a.GENERATE_CANCELLATION_CAUSES) {
                CAUSELESS_CANCELLED = null;
                CAUSELESS_INTERRUPTED = null;
            } else {
                CAUSELESS_CANCELLED = new c(false, null);
                CAUSELESS_INTERRUPTED = new c(true, null);
            }
        }

        c(boolean z6, Throwable th) {
            this.wasInterrupted = z6;
            this.cause = th;
        }
    }

    private static final class d {
        static final d FALLBACK_INSTANCE = new d(new C0225a("Failure occurred while trying to finish a future."));
        final Throwable exception;

        /* JADX INFO: renamed from: com.google.common.util.concurrent.a$d$a, reason: collision with other inner class name */
        class C0225a extends Throwable {
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }

            C0225a(String str) {
                super(str);
            }
        }

        d(Throwable th) {
            this.exception = (Throwable) com.google.common.base.o.k(th);
        }
    }

    private static final class e {
        static final e TOMBSTONE = new e();
        final Executor executor;
        e next;
        final Runnable task;

        e(Runnable runnable, Executor executor) {
            this.task = runnable;
            this.executor = executor;
        }

        e() {
            this.task = null;
            this.executor = null;
        }
    }

    private static final class f extends b {
        final AtomicReferenceFieldUpdater<a, e> listenersUpdater;
        final AtomicReferenceFieldUpdater<a, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<l, l> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<l, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<a, l> waitersUpdater;

        f(AtomicReferenceFieldUpdater<l, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<l, l> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, l> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.waiterThreadUpdater = atomicReferenceFieldUpdater;
            this.waiterNextUpdater = atomicReferenceFieldUpdater2;
            this.waitersUpdater = atomicReferenceFieldUpdater3;
            this.listenersUpdater = atomicReferenceFieldUpdater4;
            this.valueUpdater = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            return androidx.concurrent.futures.a.a(this.listenersUpdater, aVar, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            return androidx.concurrent.futures.a.a(this.valueUpdater, aVar, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean c(a<?> aVar, l lVar, l lVar2) {
            return androidx.concurrent.futures.a.a(this.waitersUpdater, aVar, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        e d(a<?> aVar, e eVar) {
            return this.listenersUpdater.getAndSet(aVar, eVar);
        }

        @Override // com.google.common.util.concurrent.a.b
        l e(a<?> aVar, l lVar) {
            return this.waitersUpdater.getAndSet(aVar, lVar);
        }

        @Override // com.google.common.util.concurrent.a.b
        void f(l lVar, l lVar2) {
            this.waiterNextUpdater.lazySet(lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        void g(l lVar, Thread thread) {
            this.waiterThreadUpdater.lazySet(lVar, thread);
        }
    }

    private static final class g<V> implements Runnable {
        final com.google.common.util.concurrent.k<? extends V> future;
        final a<V> owner;

        @Override // java.lang.Runnable
        public void run() {
            if (((a) this.owner).value != this) {
                return;
            }
            if (a.ATOMIC_HELPER.b(this.owner, this, a.u(this.future))) {
                a.r(this.owner);
            }
        }
    }

    private static final class h extends b {
        private h() {
            super();
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            synchronized (aVar) {
                try {
                    if (((a) aVar).listeners != eVar) {
                        return false;
                    }
                    ((a) aVar).listeners = eVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                try {
                    if (((a) aVar).value != obj) {
                        return false;
                    }
                    ((a) aVar).value = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean c(a<?> aVar, l lVar, l lVar2) {
            synchronized (aVar) {
                try {
                    if (((a) aVar).waiters != lVar) {
                        return false;
                    }
                    ((a) aVar).waiters = lVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.a.b
        e d(a<?> aVar, e eVar) {
            e eVar2;
            synchronized (aVar) {
                try {
                    eVar2 = ((a) aVar).listeners;
                    if (eVar2 != eVar) {
                        ((a) aVar).listeners = eVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return eVar2;
        }

        @Override // com.google.common.util.concurrent.a.b
        l e(a<?> aVar, l lVar) {
            l lVar2;
            synchronized (aVar) {
                try {
                    lVar2 = ((a) aVar).waiters;
                    if (lVar2 != lVar) {
                        ((a) aVar).waiters = lVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return lVar2;
        }

        @Override // com.google.common.util.concurrent.a.b
        void f(l lVar, l lVar2) {
            lVar.next = lVar2;
        }

        @Override // com.google.common.util.concurrent.a.b
        void g(l lVar, Thread thread) {
            lVar.thread = thread;
        }
    }

    interface i<V> extends com.google.common.util.concurrent.k<V> {
    }

    static abstract class j<V> extends a<V> implements i<V> {
        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final V get() throws ExecutionException, InterruptedException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final V get(long j6, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (V) super.get(j6, timeUnit);
        }

        j() {
        }

        @Override // com.google.common.util.concurrent.a, com.google.common.util.concurrent.k
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final boolean cancel(boolean z6) {
            return super.cancel(z6);
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }
    }

    private static final class k extends b {
        static final long LISTENERS_OFFSET;
        static final Unsafe UNSAFE;
        static final long VALUE_OFFSET;
        static final long WAITERS_OFFSET;
        static final long WAITER_NEXT_OFFSET;
        static final long WAITER_THREAD_OFFSET;

        /* JADX INFO: renamed from: com.google.common.util.concurrent.a$k$a, reason: collision with other inner class name */
        class C0226a implements PrivilegedExceptionAction<Unsafe> {
            @Override // java.security.PrivilegedExceptionAction
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Unsafe run() throws Exception {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }

            C0226a() {
            }
        }

        private k() {
            super();
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e) {
                    throw new RuntimeException("Could not initialize intrinsics", e.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new C0226a());
            }
            try {
                WAITERS_OFFSET = unsafe.objectFieldOffset(a.class.getDeclaredField("waiters"));
                LISTENERS_OFFSET = unsafe.objectFieldOffset(a.class.getDeclaredField("listeners"));
                VALUE_OFFSET = unsafe.objectFieldOffset(a.class.getDeclaredField("value"));
                WAITER_THREAD_OFFSET = unsafe.objectFieldOffset(l.class.getDeclaredField("thread"));
                WAITER_NEXT_OFFSET = unsafe.objectFieldOffset(l.class.getDeclaredField("next"));
                UNSAFE = unsafe;
            } catch (Exception e2) {
                w.f(e2);
                throw new RuntimeException(e2);
            }
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            return com.google.ads.interactivemedia.v3.internal.i.a(UNSAFE, aVar, LISTENERS_OFFSET, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            return com.google.ads.interactivemedia.v3.internal.i.a(UNSAFE, aVar, VALUE_OFFSET, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean c(a<?> aVar, l lVar, l lVar2) {
            return com.google.ads.interactivemedia.v3.internal.i.a(UNSAFE, aVar, WAITERS_OFFSET, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        void f(l lVar, l lVar2) {
            UNSAFE.putObject(lVar, WAITER_NEXT_OFFSET, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        void g(l lVar, Thread thread) {
            UNSAFE.putObject(lVar, WAITER_THREAD_OFFSET, thread);
        }

        @Override // com.google.common.util.concurrent.a.b
        e d(a<?> aVar, e eVar) {
            e eVar2;
            do {
                eVar2 = ((a) aVar).listeners;
                if (eVar == eVar2) {
                    return eVar2;
                }
            } while (!a(aVar, eVar2, eVar));
            return eVar2;
        }

        @Override // com.google.common.util.concurrent.a.b
        l e(a<?> aVar, l lVar) {
            l lVar2;
            do {
                lVar2 = ((a) aVar).waiters;
                if (lVar == lVar2) {
                    return lVar2;
                }
            } while (!c(aVar, lVar2, lVar));
            return lVar2;
        }
    }

    private static final class l {
        static final l TOMBSTONE = new l(false);
        volatile l next;
        volatile Thread thread;

        l(boolean z6) {
        }

        l() {
            a.ATOMIC_HELPER.g(this, Thread.currentThread());
        }

        void b() {
            Thread thread = this.thread;
            if (thread != null) {
                this.thread = null;
                LockSupport.unpark(thread);
            }
        }

        void a(l lVar) {
            a.ATOMIC_HELPER.f(this, lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    public static void r(a<?> aVar) {
        e eVar = null;
        while (true) {
            aVar.y();
            aVar.m();
            e eVarQ = aVar.q(eVar);
            while (eVarQ != null) {
                eVar = eVarQ.next;
                Runnable runnable = eVarQ.task;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof g) {
                    g gVar = (g) runnable2;
                    aVar = gVar.owner;
                    if (((a) aVar).value == gVar) {
                        if (ATOMIC_HELPER.b(aVar, gVar, u(gVar.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = eVarQ.executor;
                    Objects.requireNonNull(executor);
                    s(runnable2, executor);
                }
                eVarQ = eVar;
            }
            return;
        }
    }

    private static <V> V v(Future<V> future) throws ExecutionException {
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

    private void z(l lVar) {
        lVar.thread = null;
        while (true) {
            l lVar2 = this.waiters;
            if (lVar2 == l.TOMBSTONE) {
                return;
            }
            l lVar3 = null;
            while (lVar2 != null) {
                l lVar4 = lVar2.next;
                if (lVar2.thread != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.next = lVar4;
                    if (lVar3.thread == null) {
                    }
                } else if (!ATOMIC_HELPER.c(this, lVar2, lVar4)) {
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public V get(long j6, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j6);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof g))) {
            return t(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            l lVar = this.waiters;
            if (lVar != l.TOMBSTONE) {
                l lVar2 = new l();
                while (true) {
                    lVar2.a(lVar);
                    if (ATOMIC_HELPER.c(this, lVar, lVar2)) {
                        do {
                            p.a(this, nanos);
                            if (Thread.interrupted()) {
                                z(lVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof g))) {
                                return t(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        z(lVar2);
                        break;
                    }
                    lVar = this.waiters;
                    if (lVar == l.TOMBSTONE) {
                    }
                }
            }
            Object obj3 = this.value;
            Objects.requireNonNull(obj3);
            return t(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.value;
            if ((obj4 != null) && (!(obj4 instanceof g))) {
                return t(obj4);
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
        String lowerCase2 = timeUnit.toString().toLowerCase(locale);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
        sb.append("Waited ");
        sb.append(j6);
        sb.append(" ");
        sb.append(lowerCase2);
        String string3 = sb.toString();
        if (nanos + 1000 < 0) {
            String strConcat = String.valueOf(string3).concat(" (plus ");
            long j10 = -nanos;
            long jConvert = timeUnit.convert(j10, TimeUnit.NANOSECONDS);
            long nanos2 = j10 - timeUnit.toNanos(jConvert);
            boolean z6 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strValueOf = String.valueOf(strConcat);
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 21 + String.valueOf(lowerCase).length());
                sb2.append(strValueOf);
                sb2.append(jConvert);
                sb2.append(" ");
                sb2.append(lowerCase);
                String string4 = sb2.toString();
                if (z6) {
                    string4 = String.valueOf(string4).concat(",");
                }
                strConcat = String.valueOf(string4).concat(" ");
            }
            if (z6) {
                String strValueOf2 = String.valueOf(strConcat);
                StringBuilder sb3 = new StringBuilder(strValueOf2.length() + 33);
                sb3.append(strValueOf2);
                sb3.append(nanos2);
                sb3.append(" nanoseconds ");
                strConcat = sb3.toString();
            }
            string3 = String.valueOf(strConcat).concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(String.valueOf(string3).concat(" but future completed as timeout expired"));
        }
        StringBuilder sb4 = new StringBuilder(String.valueOf(string3).length() + 5 + String.valueOf(string).length());
        sb4.append(string3);
        sb4.append(" for ");
        sb4.append(string);
        throw new TimeoutException(sb4.toString());
    }

    protected void m() {
    }

    protected void w() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.logging.Logger] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.common.util.concurrent.a$a] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v5 */
    static {
        boolean z6;
        b hVar;
        try {
            z6 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z6 = false;
        }
        GENERATE_CANCELLATION_CAUSES = z6;
        log = Logger.getLogger(a.class.getName());
        ?? r5 = 0;
        r5 = 0;
        try {
            hVar = new k();
            th = null;
        } catch (Throwable th) {
            th = th;
            try {
                hVar = new f(AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "next"), AtomicReferenceFieldUpdater.newUpdater(a.class, l.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(a.class, e.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "value"));
            } catch (Throwable th2) {
                hVar = new h();
                r5 = th2;
            }
        }
        ATOMIC_HELPER = hVar;
        if (r5 != 0) {
            ?? r1 = log;
            Level level = Level.SEVERE;
            r1.log(level, "UnsafeAtomicHelper is broken!", th);
            r1.log(level, "SafeAtomicHelper is broken!", r5);
        }
        NULL = new Object();
    }

    private void k(StringBuilder sb) {
        try {
            Object objV = v(this);
            sb.append("SUCCESS, result=[");
            n(sb, objV);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e6) {
            sb.append("FAILURE, cause=[");
            sb.append(e6.getCause());
            sb.append("]");
        }
    }

    private void n(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append(MentionedEditText.DEFAULT_METION_TAG);
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    private void o(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException e2) {
            e = e2;
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        } catch (StackOverflowError e6) {
            e = e6;
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        }
    }

    private static CancellationException p(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    private e q(e eVar) {
        e eVar2 = eVar;
        e eVarD = ATOMIC_HELPER.d(this, e.TOMBSTONE);
        while (eVarD != null) {
            e eVar3 = eVarD.next;
            eVarD.next = eVar2;
            eVar2 = eVarD;
            eVarD = eVar3;
        }
        return eVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V t(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw p("Task was cancelled.", ((c) obj).cause);
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).exception);
        }
        return obj == NULL ? (V) o.b() : obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object u(com.google.common.util.concurrent.k<?> kVar) {
        Throwable thA;
        if (kVar instanceof i) {
            Object cVar = ((a) kVar).value;
            if (cVar instanceof c) {
                c cVar2 = (c) cVar;
                if (cVar2.wasInterrupted) {
                    cVar = cVar2.cause != null ? new c(false, cVar2.cause) : c.CAUSELESS_CANCELLED;
                }
            }
            Objects.requireNonNull(cVar);
            return cVar;
        }
        if ((kVar instanceof u3.a) && (thA = u3.b.a((u3.a) kVar)) != null) {
            return new d(thA);
        }
        boolean zIsCancelled = kVar.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && zIsCancelled) {
            c cVar3 = c.CAUSELESS_CANCELLED;
            Objects.requireNonNull(cVar3);
            return cVar3;
        }
        try {
            Object objV = v(kVar);
            if (!zIsCancelled) {
                return objV == null ? NULL : objV;
            }
            String strValueOf = String.valueOf(kVar);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 84);
            sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb.append(strValueOf);
            return new c(false, new IllegalArgumentException(sb.toString()));
        } catch (CancellationException e2) {
            if (zIsCancelled) {
                return new c(false, e2);
            }
            String strValueOf2 = String.valueOf(kVar);
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 77);
            sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
            sb2.append(strValueOf2);
            return new d(new IllegalArgumentException(sb2.toString(), e2));
        } catch (ExecutionException e6) {
            if (!zIsCancelled) {
                return new d(e6.getCause());
            }
            String strValueOf3 = String.valueOf(kVar);
            StringBuilder sb3 = new StringBuilder(strValueOf3.length() + 84);
            sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb3.append(strValueOf3);
            return new c(false, new IllegalArgumentException(sb3.toString(), e6));
        } catch (Throwable th) {
            return new d(th);
        }
    }

    private void y() {
        for (l lVarE = ATOMIC_HELPER.e(this, l.TOMBSTONE); lVarE != null; lVarE = lVarE.next) {
            lVarE.b();
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
    protected boolean A(V v5) {
        if (v5 == null) {
            v5 = (V) NULL;
        }
        if (!ATOMIC_HELPER.b(this, null, v5)) {
            return false;
        }
        r(this);
        return true;
    }

    protected boolean B(Throwable th) {
        if (!ATOMIC_HELPER.b(this, null, new d((Throwable) com.google.common.base.o.k(th)))) {
            return false;
        }
        r(this);
        return true;
    }

    protected final boolean C() {
        Object obj = this.value;
        return (obj instanceof c) && ((c) obj).wasInterrupted;
    }

    @Override // u3.a
    protected final Throwable a() {
        if (!(this instanceof i)) {
            return null;
        }
        Object obj = this.value;
        if (obj instanceof d) {
            return ((d) obj).exception;
        }
        return null;
    }

    @Override // com.google.common.util.concurrent.k
    public void addListener(Runnable runnable, Executor executor) {
        e eVar;
        com.google.common.base.o.l(runnable, "Runnable was null.");
        com.google.common.base.o.l(executor, "Executor was null.");
        if (!isDone() && (eVar = this.listeners) != e.TOMBSTONE) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.next = eVar;
                if (ATOMIC_HELPER.a(this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.listeners;
                }
            } while (eVar != e.TOMBSTONE);
        }
        s(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z6) {
        c cVar;
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        if (GENERATE_CANCELLATION_CAUSES) {
            cVar = new c(z6, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z6 ? c.CAUSELESS_INTERRUPTED : c.CAUSELESS_CANCELLED;
            Objects.requireNonNull(cVar);
        }
        a<V> aVar = this;
        boolean z10 = false;
        while (true) {
            if (ATOMIC_HELPER.b(aVar, obj, cVar)) {
                if (z6) {
                    aVar.w();
                }
                r(aVar);
                if (!(obj instanceof g)) {
                    return true;
                }
                com.google.common.util.concurrent.k<? extends V> kVar = ((g) obj).future;
                if (!(kVar instanceof i)) {
                    kVar.cancel(z6);
                    return true;
                }
                aVar = (a) kVar;
                obj = aVar.value;
                if (!(obj == null) && !(obj instanceof g)) {
                    return true;
                }
                z10 = true;
            } else {
                obj = aVar.value;
                if (!(obj instanceof g)) {
                    return z10;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof g)) & (obj != null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            k(sb);
        } else {
            l(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String x() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb = new StringBuilder(41);
        sb.append("remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }

    protected a() {
    }

    private void l(StringBuilder sb) {
        String string;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.value;
        if (obj instanceof g) {
            sb.append(", setFuture=[");
            o(sb, ((g) obj).future);
            sb.append("]");
        } else {
            try {
                string = t.a(x());
            } catch (RuntimeException | StackOverflowError e2) {
                String strValueOf = String.valueOf(e2.getClass());
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 38);
                sb2.append("Exception thrown from implementation: ");
                sb2.append(strValueOf);
                string = sb2.toString();
            }
            if (string != null) {
                sb.append(", info=[");
                sb.append(string);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            k(sb);
        }
    }

    private static void s(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = log;
            Level level = Level.SEVERE;
            String strValueOf = String.valueOf(runnable);
            String strValueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 57 + strValueOf2.length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(strValueOf);
            sb.append(" with executor ");
            sb.append(strValueOf2);
            logger.log(level, sb.toString(), (Throwable) e2);
        }
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return t(obj2);
            }
            l lVar = this.waiters;
            if (lVar != l.TOMBSTONE) {
                l lVar2 = new l();
                do {
                    lVar2.a(lVar);
                    if (ATOMIC_HELPER.c(this, lVar, lVar2)) {
                        do {
                            LockSupport.park(this);
                            if (Thread.interrupted()) {
                                z(lVar2);
                                throw new InterruptedException();
                            }
                            obj = this.value;
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return t(obj);
                    }
                    lVar = this.waiters;
                } while (lVar != l.TOMBSTONE);
            }
            Object obj3 = this.value;
            Objects.requireNonNull(obj3);
            return t(obj3);
        }
        throw new InterruptedException();
    }
}
