package io.ktor.utils.io.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.g1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class b<T> implements kotlin.coroutines.d<T> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater state$FU = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "state");
    private static final /* synthetic */ AtomicReferenceFieldUpdater jobCancellationHandler$FU = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "jobCancellationHandler");

    @NotNull
    private volatile /* synthetic */ Object state = null;

    @NotNull
    private volatile /* synthetic */ Object jobCancellationHandler = null;

    private final class a implements e8.l<Throwable, l0> {

        @Nullable
        private g1 handler;

        @NotNull
        private final b2 job;
        final /* synthetic */ b<T> this$0;

        @NotNull
        public final b2 b() {
            return this.job;
        }

        public a(@NotNull b bVar, b2 job) {
            t.j(job, "job");
            this.this$0 = bVar;
            this.job = job;
            g1 g1VarD = b2.a.d(job, true, false, this, 2, null);
            if (job.isActive()) {
                this.handler = g1VarD;
            }
        }

        public final void a() {
            g1 g1Var = this.handler;
            if (g1Var != null) {
                this.handler = null;
                g1Var.t();
            }
        }

        public void c(@Nullable Throwable th) {
            this.this$0.g(this);
            a();
            if (th != null) {
                this.this$0.i(this.job, th);
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            c(th);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(b<T>.a aVar) {
        androidx.concurrent.futures.a.a(jobCancellationHandler$FU, this, aVar, null);
    }

    private final void h(kotlin.coroutines.g gVar) {
        Object obj;
        a aVar;
        b2 b2Var = (b2) gVar.get(b2.Key);
        a aVar2 = (a) this.jobCancellationHandler;
        if ((aVar2 != null ? aVar2.b() : null) == b2Var) {
            return;
        }
        if (b2Var == null) {
            a aVar3 = (a) jobCancellationHandler$FU.getAndSet(this, null);
            if (aVar3 != null) {
                aVar3.a();
                return;
            }
            return;
        }
        a aVar4 = new a(this, b2Var);
        do {
            obj = this.jobCancellationHandler;
            aVar = (a) obj;
            if (aVar != null && aVar.b() == b2Var) {
                aVar4.a();
                return;
            }
        } while (!androidx.concurrent.futures.a.a(jobCancellationHandler$FU, this, obj, aVar4));
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(b2 b2Var, Throwable th) {
        Object obj;
        kotlin.coroutines.d dVar;
        do {
            obj = this.state;
            if (!(obj instanceof kotlin.coroutines.d)) {
                return;
            }
            dVar = (kotlin.coroutines.d) obj;
            if (dVar.getContext().get(b2.Key) != b2Var) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(state$FU, this, obj, null));
        t.h(obj, "null cannot be cast to non-null type kotlin.coroutines.Continuation<T of io.ktor.utils.io.internal.CancellableReusableContinuation>");
        v.a aVar = v.Companion;
        dVar.resumeWith(v.b(w.a(th)));
    }

    public final void c(@NotNull T value) {
        t.j(value, "value");
        resumeWith(v.b(value));
        a aVar = (a) jobCancellationHandler$FU.getAndSet(this, null);
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void d(@NotNull Throwable cause) {
        t.j(cause, "cause");
        v.a aVar = v.Companion;
        resumeWith(v.b(w.a(cause)));
        a aVar2 = (a) jobCancellationHandler$FU.getAndSet(this, null);
        if (aVar2 != null) {
            aVar2.a();
        }
    }

    @NotNull
    public final Object f(@NotNull kotlin.coroutines.d<? super T> actual) {
        t.j(actual, "actual");
        while (true) {
            Object obj = this.state;
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(state$FU, this, null, actual)) {
                    h(actual.getContext());
                    return kotlin.coroutines.intrinsics.d.e();
                }
            } else if (androidx.concurrent.futures.a.a(state$FU, this, obj, null)) {
                if (obj instanceof Throwable) {
                    throw ((Throwable) obj);
                }
                t.h(obj, "null cannot be cast to non-null type T of io.ktor.utils.io.internal.CancellableReusableContinuation");
                return obj;
            }
        }
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        kotlin.coroutines.g context;
        Object obj = this.state;
        kotlin.coroutines.d dVar = obj instanceof kotlin.coroutines.d ? (kotlin.coroutines.d) obj : null;
        return (dVar == null || (context = dVar.getContext()) == null) ? kotlin.coroutines.h.INSTANCE : context;
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
        Object obj2;
        Object objE;
        do {
            obj2 = this.state;
            if (obj2 == null) {
                objE = v.e(obj);
                if (objE == null) {
                    w.b(obj);
                    objE = obj;
                }
            } else if (!(obj2 instanceof kotlin.coroutines.d)) {
                return;
            } else {
                objE = null;
            }
        } while (!androidx.concurrent.futures.a.a(state$FU, this, obj2, objE));
        if (obj2 instanceof kotlin.coroutines.d) {
            ((kotlin.coroutines.d) obj2).resumeWith(obj);
        }
    }
}
