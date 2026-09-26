package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e<N extends e<N>> {

    @NotNull
    private static final AtomicReferenceFieldUpdater _next$FU = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_next");

    @NotNull
    private static final AtomicReferenceFieldUpdater _prev$FU = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_prev");

    @Nullable
    private volatile Object _next;

    @Nullable
    private volatile Object _prev;

    public abstract boolean h();

    /* JADX INFO: Access modifiers changed from: private */
    public final Object f() {
        return _next$FU.get(this);
    }

    public final void b() {
        _prev$FU.lazySet(this, null);
    }

    @Nullable
    public final N g() {
        return (N) _prev$FU.get(this);
    }

    public final boolean j() {
        return androidx.concurrent.futures.a.a(_next$FU, this, null, d.CLOSED);
    }

    public final boolean l(@NotNull N n) {
        return androidx.concurrent.futures.a.a(_next$FU, this, null, n);
    }

    public e(@Nullable N n) {
        this._prev = n;
    }

    private final N c() {
        N n = (N) g();
        while (n != null && n.h()) {
            n = (N) _prev$FU.get(n);
        }
        return n;
    }

    private final N d() {
        e eVarE;
        N n = (N) e();
        kotlin.jvm.internal.t.g(n);
        while (n.h() && (eVarE = n.e()) != null) {
            n = (N) eVarE;
        }
        return n;
    }

    @Nullable
    public final N e() {
        Object objF = f();
        if (objF == d.CLOSED) {
            return null;
        }
        return (N) objF;
    }

    public final boolean i() {
        if (e() == null) {
            return true;
        }
        return false;
    }

    public final void k() {
        Object obj;
        e eVar;
        if (i()) {
            return;
        }
        while (true) {
            e eVarC = c();
            e eVarD = d();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _prev$FU;
            do {
                obj = atomicReferenceFieldUpdater.get(eVarD);
                if (((e) obj) == null) {
                    eVar = null;
                } else {
                    eVar = eVarC;
                }
            } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, eVarD, obj, eVar));
            if (eVarC != null) {
                _next$FU.set(eVarC, eVarD);
            }
            if (!eVarD.h() || eVarD.i()) {
                if (eVarC == null || !eVarC.h()) {
                    return;
                }
            }
        }
    }
}
