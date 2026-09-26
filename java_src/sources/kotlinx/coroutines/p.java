package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class p<T> extends b1<T> implements o<T>, kotlin.coroutines.jvm.internal.e, j3 {
    private volatile int _decisionAndIndex;

    @Nullable
    private volatile Object _parentHandle;

    @Nullable
    private volatile Object _state;

    @NotNull
    private final kotlin.coroutines.g context;

    @NotNull
    private final kotlin.coroutines.d<T> delegate;

    @NotNull
    private static final AtomicIntegerFieldUpdater _decisionAndIndex$FU = AtomicIntegerFieldUpdater.newUpdater(p.class, "_decisionAndIndex");

    @NotNull
    private static final AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "_state");

    @NotNull
    private static final AtomicReferenceFieldUpdater _parentHandle$FU = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "_parentHandle");

    @NotNull
    protected String E() {
        return "CancellableContinuation";
    }

    @Override // kotlinx.coroutines.b1
    @NotNull
    public final kotlin.coroutines.d<T> c() {
        return this.delegate;
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        return this.context;
    }

    private final boolean A() {
        if (c1.c(this.resumeMode)) {
            kotlin.coroutines.d<T> dVar = this.delegate;
            kotlin.jvm.internal.t.h(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((kotlinx.coroutines.internal.j) dVar).n()) {
                return true;
            }
        }
        return false;
    }

    private final m C(e8.l<? super Throwable, w7.l0> lVar) {
        return lVar instanceof m ? (m) lVar : new y1(lVar);
    }

    private final void D(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    private final void I(Object obj, int i10, e8.l<? super Throwable, w7.l0> lVar) {
        Object obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        do {
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof r2)) {
                if (obj2 instanceof s) {
                    s sVar = (s) obj2;
                    if (sVar.c()) {
                        if (lVar != null) {
                            k(lVar, sVar.cause);
                            return;
                        }
                        return;
                    }
                }
                i(obj);
                throw new w7.i();
            }
        } while (!androidx.concurrent.futures.a.a(_state$FU, this, obj2, L((r2) obj2, obj, i10, lVar, null)));
        p();
        q(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void J(p pVar, Object obj, int i10, e8.l lVar, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        pVar.I(obj, i10, lVar);
    }

    private final Object L(r2 r2Var, Object obj, int i10, e8.l<? super Throwable, w7.l0> lVar, Object obj2) {
        if (obj instanceof c0) {
            return obj;
        }
        if (!c1.b(i10) && obj2 == null) {
            return obj;
        }
        if (lVar == null && !(r2Var instanceof m) && obj2 == null) {
            return obj;
        }
        return new b0(obj, r2Var instanceof m ? (m) r2Var : null, lVar, obj2, null, 16, null);
    }

    private final boolean N() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$FU;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!_decisionAndIndex$FU.compareAndSet(this, i10, 1073741824 + (536870911 & i10)));
        return true;
    }

    private final kotlinx.coroutines.internal.i0 O(Object obj, Object obj2, e8.l<? super Throwable, w7.l0> lVar) {
        Object obj3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        do {
            obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof r2)) {
                if ((obj3 instanceof b0) && obj2 != null && ((b0) obj3).idempotentResume == obj2) {
                    return q.RESUME_TOKEN;
                }
                return null;
            }
        } while (!androidx.concurrent.futures.a.a(_state$FU, this, obj3, L((r2) obj3, obj, this.resumeMode, lVar, obj2)));
        p();
        return q.RESUME_TOKEN;
    }

    private final boolean P() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$FU;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!_decisionAndIndex$FU.compareAndSet(this, i10, 536870912 + (536870911 & i10)));
        return true;
    }

    private final Void i(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final void l(kotlinx.coroutines.internal.f0<?> f0Var, Throwable th) {
        int i10 = _decisionAndIndex$FU.get(this) & 536870911;
        if (i10 == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken".toString());
        }
        try {
            f0Var.o(i10, th, getContext());
        } catch (Throwable th2) {
            m0.a(getContext(), new f0("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final g1 t() {
        return (g1) _parentHandle$FU.get(this);
    }

    private final void z(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof d) {
                if (androidx.concurrent.futures.a.a(_state$FU, this, obj2, obj)) {
                    return;
                }
            } else if ((obj2 instanceof m) || (obj2 instanceof kotlinx.coroutines.internal.f0)) {
                D(obj, obj2);
            } else {
                boolean z6 = obj2 instanceof c0;
                if (z6) {
                    c0 c0Var = (c0) obj2;
                    if (!c0Var.b()) {
                        D(obj, obj2);
                    }
                    if (obj2 instanceof s) {
                        if (!z6) {
                            c0Var = null;
                        }
                        Throwable th = c0Var != null ? c0Var.cause : null;
                        if (obj instanceof m) {
                            j((m) obj, th);
                            return;
                        } else {
                            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                            l((kotlinx.coroutines.internal.f0) obj, th);
                            return;
                        }
                    }
                    return;
                }
                if (obj2 instanceof b0) {
                    b0 b0Var = (b0) obj2;
                    if (b0Var.cancelHandler != null) {
                        D(obj, obj2);
                    }
                    if (obj instanceof kotlinx.coroutines.internal.f0) {
                        return;
                    }
                    kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    m mVar = (m) obj;
                    if (b0Var.c()) {
                        j(mVar, b0Var.cancelCause);
                        return;
                    } else {
                        if (androidx.concurrent.futures.a.a(_state$FU, this, obj2, b0.b(b0Var, null, mVar, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else {
                    if (obj instanceof kotlinx.coroutines.internal.f0) {
                        return;
                    }
                    kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    if (androidx.concurrent.futures.a.a(_state$FU, this, obj2, new b0(obj2, (m) obj, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.o
    public void B(T t5, @Nullable e8.l<? super Throwable, w7.l0> lVar) {
        I(t5, this.resumeMode, lVar);
    }

    public final void G() {
        Throwable thQ;
        kotlin.coroutines.d<T> dVar = this.delegate;
        kotlinx.coroutines.internal.j jVar = dVar instanceof kotlinx.coroutines.internal.j ? (kotlinx.coroutines.internal.j) dVar : null;
        if (jVar == null || (thQ = jVar.q(this)) == null) {
            return;
        }
        o();
        e(thQ);
    }

    public final boolean H() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if ((obj instanceof b0) && ((b0) obj).idempotentResume != null) {
            o();
            return false;
        }
        _decisionAndIndex$FU.set(this, 536870911);
        atomicReferenceFieldUpdater.set(this, d.INSTANCE);
        return true;
    }

    @Override // kotlinx.coroutines.o
    public void K(@NotNull Object obj) {
        q(this.resumeMode);
    }

    @Override // kotlinx.coroutines.o
    @Nullable
    public Object M(@NotNull Throwable th) {
        return O(new c0(th, false, 2, null), null, null);
    }

    @Override // kotlinx.coroutines.o
    public void V(@NotNull k0 k0Var, T t5) {
        kotlin.coroutines.d<T> dVar = this.delegate;
        kotlinx.coroutines.internal.j jVar = dVar instanceof kotlinx.coroutines.internal.j ? (kotlinx.coroutines.internal.j) dVar : null;
        J(this, t5, (jVar != null ? jVar.dispatcher : null) == k0Var ? 4 : this.resumeMode, null, 4, null);
    }

    @Override // kotlinx.coroutines.j3
    public void a(@NotNull kotlinx.coroutines.internal.f0<?> f0Var, int i10) {
        int i11;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$FU;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            if ((i11 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once".toString());
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, ((i11 >> 29) << 29) + i10));
        z(f0Var);
    }

    @Override // kotlinx.coroutines.b1
    public void b(@Nullable Object obj, @NotNull Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof r2) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof c0) {
                return;
            }
            if (obj2 instanceof b0) {
                b0 b0Var = (b0) obj2;
                if (!(!b0Var.c())) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                if (androidx.concurrent.futures.a.a(_state$FU, this, obj2, b0.b(b0Var, null, null, null, null, th, 15, null))) {
                    b0Var.d(this, th);
                    return;
                }
            } else if (androidx.concurrent.futures.a.a(_state$FU, this, obj2, new b0(obj2, null, null, null, th, 14, null))) {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.o
    public boolean e(@Nullable Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof r2)) {
                return false;
            }
        } while (!androidx.concurrent.futures.a.a(_state$FU, this, obj, new s(this, th, (obj instanceof m) || (obj instanceof kotlinx.coroutines.internal.f0))));
        r2 r2Var = (r2) obj;
        if (r2Var instanceof m) {
            j((m) obj, th);
        } else if (r2Var instanceof kotlinx.coroutines.internal.f0) {
            l((kotlinx.coroutines.internal.f0) obj, th);
        }
        p();
        q(this.resumeMode);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.b1
    public <T> T f(@Nullable Object obj) {
        return obj instanceof b0 ? (T) ((b0) obj).result : obj;
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.d<T> dVar = this.delegate;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }

    @NotNull
    public String toString() {
        return E() + '(' + s0.c(this.delegate) + "){" + w() + "}@" + s0.b(this);
    }

    @Nullable
    public final Object v() {
        return _state$FU.get(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(@NotNull kotlin.coroutines.d<? super T> dVar, int i10) {
        super(i10);
        this.delegate = dVar;
        this.context = dVar.getContext();
        this._decisionAndIndex = 536870911;
        this._state = d.INSTANCE;
    }

    private final boolean n(Throwable th) {
        if (!A()) {
            return false;
        }
        kotlin.coroutines.d<T> dVar = this.delegate;
        kotlin.jvm.internal.t.h(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((kotlinx.coroutines.internal.j) dVar).o(th);
    }

    private final void p() {
        if (!A()) {
            o();
        }
    }

    private final void q(int i10) {
        if (N()) {
            return;
        }
        c1.a(this, i10);
    }

    private final String w() {
        Object objV = v();
        if (objV instanceof r2) {
            return "Active";
        }
        if (objV instanceof s) {
            return "Cancelled";
        }
        return "Completed";
    }

    private final g1 y() {
        b2 b2Var = (b2) getContext().get(b2.Key);
        if (b2Var == null) {
            return null;
        }
        g1 g1VarD = b2.a.d(b2Var, true, false, new t(this), 2, null);
        androidx.concurrent.futures.a.a(_parentHandle$FU, this, null, g1VarD);
        return g1VarD;
    }

    public final void F(@NotNull Throwable th) {
        if (n(th)) {
            return;
        }
        e(th);
        p();
    }

    @Override // kotlinx.coroutines.o
    public void S(@NotNull e8.l<? super Throwable, w7.l0> lVar) {
        z(C(lVar));
    }

    @Override // kotlinx.coroutines.b1
    @Nullable
    public Throwable d(@Nullable Object obj) {
        Throwable thD = super.d(obj);
        if (thD == null) {
            return null;
        }
        return thD;
    }

    @Override // kotlinx.coroutines.b1
    @Nullable
    public Object h() {
        return v();
    }

    @Override // kotlinx.coroutines.o
    public boolean isActive() {
        return v() instanceof r2;
    }

    public final void j(@NotNull m mVar, @Nullable Throwable th) {
        try {
            mVar.d(th);
        } catch (Throwable th2) {
            m0.a(getContext(), new f0("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void k(@NotNull e8.l<? super Throwable, w7.l0> lVar, @NotNull Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            m0.a(getContext(), new f0("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    @Override // kotlinx.coroutines.o
    public boolean m() {
        return !(v() instanceof r2);
    }

    public final void o() {
        g1 g1VarT = t();
        if (g1VarT == null) {
            return;
        }
        g1VarT.t();
        _parentHandle$FU.set(this, q2.INSTANCE);
    }

    @Override // kotlinx.coroutines.o
    @Nullable
    public Object r(T t5, @Nullable Object obj, @Nullable e8.l<? super Throwable, w7.l0> lVar) {
        return O(t5, obj, lVar);
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
        J(this, g0.c(obj, this), this.resumeMode, null, 4, null);
    }

    @NotNull
    public Throwable s(@NotNull b2 b2Var) {
        return b2Var.b0();
    }

    @Nullable
    public final Object u() throws Throwable {
        b2 b2Var;
        boolean zA = A();
        if (P()) {
            if (t() == null) {
                y();
            }
            if (zA) {
                G();
            }
            return kotlin.coroutines.intrinsics.d.e();
        }
        if (zA) {
            G();
        }
        Object objV = v();
        if (!(objV instanceof c0)) {
            if (c1.b(this.resumeMode) && (b2Var = (b2) getContext().get(b2.Key)) != null && !b2Var.isActive()) {
                CancellationException cancellationExceptionB0 = b2Var.b0();
                b(objV, cancellationExceptionB0);
                throw cancellationExceptionB0;
            }
            return f(objV);
        }
        throw ((c0) objV).cause;
    }

    public void x() {
        g1 g1VarY = y();
        if (g1VarY != null && m()) {
            g1VarY.t();
            _parentHandle$FU.set(this, q2.INSTANCE);
        }
    }
}
