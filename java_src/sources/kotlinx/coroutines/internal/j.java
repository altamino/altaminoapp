package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.b3;
import kotlinx.coroutines.k1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class j<T> extends b1<T> implements kotlin.coroutines.jvm.internal.e, kotlin.coroutines.d<T> {

    @NotNull
    private static final AtomicReferenceFieldUpdater _reusableCancellableContinuation$FU = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_reusableCancellableContinuation");

    @Nullable
    private volatile Object _reusableCancellableContinuation;

    @Nullable
    public Object _state;

    @NotNull
    public final kotlin.coroutines.d<T> continuation;

    @NotNull
    public final Object countOrElement;

    @NotNull
    public final kotlinx.coroutines.k0 dispatcher;

    /* JADX WARN: Multi-variable type inference failed */
    public j(@NotNull kotlinx.coroutines.k0 k0Var, @NotNull kotlin.coroutines.d<? super T> dVar) {
        super(-1);
        this.dispatcher = k0Var;
        this.continuation = dVar;
        this._state = k.UNDEFINED;
        this.countOrElement = m0.b(getContext());
    }

    @Override // kotlinx.coroutines.b1
    @NotNull
    public kotlin.coroutines.d<T> c() {
        return this;
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        return this.continuation.getContext();
    }

    private final kotlinx.coroutines.p<?> l() {
        Object obj = _reusableCancellableContinuation$FU.get(this);
        if (obj instanceof kotlinx.coroutines.p) {
            return (kotlinx.coroutines.p) obj;
        }
        return null;
    }

    @Override // kotlinx.coroutines.b1
    public void b(@Nullable Object obj, @NotNull Throwable th) {
        if (obj instanceof kotlinx.coroutines.d0) {
            ((kotlinx.coroutines.d0) obj).onCancellation.invoke(th);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.d<T> dVar = this.continuation;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }

    @Override // kotlinx.coroutines.b1
    @Nullable
    public Object h() {
        Object obj = this._state;
        this._state = k.UNDEFINED;
        return obj;
    }

    public final void i() {
        while (_reusableCancellableContinuation$FU.get(this) == k.REUSABLE_CLAIMED) {
        }
    }

    @Nullable
    public final kotlinx.coroutines.p<T> j() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                _reusableCancellableContinuation$FU.set(this, k.REUSABLE_CLAIMED);
                return null;
            }
            if (obj instanceof kotlinx.coroutines.p) {
                if (androidx.concurrent.futures.a.a(_reusableCancellableContinuation$FU, this, obj, k.REUSABLE_CLAIMED)) {
                    return (kotlinx.coroutines.p) obj;
                }
            } else if (obj != k.REUSABLE_CLAIMED && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final void k(@NotNull kotlin.coroutines.g gVar, T t5) {
        this._state = t5;
        this.resumeMode = 1;
        this.dispatcher.dispatchYield(gVar, this);
    }

    public final boolean n() {
        return _reusableCancellableContinuation$FU.get(this) != null;
    }

    public final boolean o(@NotNull Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            i0 i0Var = k.REUSABLE_CLAIMED;
            if (kotlin.jvm.internal.t.e(obj, i0Var)) {
                if (androidx.concurrent.futures.a.a(_reusableCancellableContinuation$FU, this, i0Var, th)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (androidx.concurrent.futures.a.a(_reusableCancellableContinuation$FU, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @Nullable
    public final Throwable q(@NotNull kotlinx.coroutines.o<?> oVar) {
        i0 i0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _reusableCancellableContinuation$FU;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            i0Var = k.REUSABLE_CLAIMED;
            if (obj != i0Var) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.a.a(_reusableCancellableContinuation$FU, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(_reusableCancellableContinuation$FU, this, i0Var, oVar));
        return null;
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
        kotlin.coroutines.g context = this.continuation.getContext();
        Object objD = kotlinx.coroutines.g0.d(obj, null, 1, null);
        if (this.dispatcher.isDispatchNeeded(context)) {
            this._state = objD;
            this.resumeMode = 0;
            this.dispatcher.dispatch(context, this);
            return;
        }
        k1 k1VarB = b3.INSTANCE.b();
        if (k1VarB.K0()) {
            this._state = objD;
            this.resumeMode = 0;
            k1VarB.G0(this);
            return;
        }
        k1VarB.I0(true);
        try {
            kotlin.coroutines.g context2 = getContext();
            Object objC = m0.c(context2, this.countOrElement);
            try {
                this.continuation.resumeWith(obj);
                w7.l0 l0Var = w7.l0.INSTANCE;
                m0.a(context2, objC);
                while (k1VarB.N0()) {
                }
            } catch (Throwable th) {
                m0.a(context2, objC);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                g(th2, null);
            } finally {
                k1VarB.L(true);
            }
        }
    }

    @NotNull
    public String toString() {
        return "DispatchedContinuation[" + this.dispatcher + ", " + kotlinx.coroutines.s0.c(this.continuation) + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public final void p() {
        i();
        kotlinx.coroutines.p<?> pVarL = l();
        if (pVarL != null) {
            pVarL.o();
        }
    }
}
