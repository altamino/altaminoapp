package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class o0 extends kotlinx.coroutines.flow.internal.d<m0<?>> {

    @NotNull
    private static final AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(o0.class, Object.class, "_state");

    @Nullable
    private volatile Object _state;

    @Override // kotlinx.coroutines.flow.internal.d
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NotNull m0<?> m0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        if (atomicReferenceFieldUpdater.get(this) != null) {
            return false;
        }
        atomicReferenceFieldUpdater.set(this, n0.NONE);
        return true;
    }

    @Nullable
    public final Object e(@NotNull kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
        kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        if (!androidx.concurrent.futures.a.a(_state$FU, this, n0.NONE, pVar)) {
            w7.v.a aVar = w7.v.Companion;
            pVar.resumeWith(w7.v.b(w7.l0.INSTANCE));
        }
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU == kotlin.coroutines.intrinsics.d.e() ? objU : w7.l0.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public kotlin.coroutines.d<w7.l0>[] b(@NotNull m0<?> m0Var) {
        _state$FU.set(this, null);
        return kotlinx.coroutines.flow.internal.c.EMPTY_RESUMES;
    }

    public final void g() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null || obj == n0.PENDING) {
                return;
            }
            if (obj == n0.NONE) {
                if (androidx.concurrent.futures.a.a(_state$FU, this, obj, n0.PENDING)) {
                    return;
                }
            } else if (androidx.concurrent.futures.a.a(_state$FU, this, obj, n0.NONE)) {
                w7.v.a aVar = w7.v.Companion;
                ((kotlinx.coroutines.p) obj).resumeWith(w7.v.b(w7.l0.INSTANCE));
                return;
            }
        }
    }

    public final boolean h() {
        Object andSet = _state$FU.getAndSet(this, n0.NONE);
        kotlin.jvm.internal.t.g(andSet);
        return andSet == n0.PENDING;
    }
}
