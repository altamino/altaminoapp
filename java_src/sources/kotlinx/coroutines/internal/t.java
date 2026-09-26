package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class t {

    @NotNull
    private static final AtomicReferenceFieldUpdater _next$FU = AtomicReferenceFieldUpdater.newUpdater(t.class, Object.class, "_next");

    @NotNull
    private static final AtomicReferenceFieldUpdater _prev$FU = AtomicReferenceFieldUpdater.newUpdater(t.class, Object.class, "_prev");

    @NotNull
    private static final AtomicReferenceFieldUpdater _removedRef$FU = AtomicReferenceFieldUpdater.newUpdater(t.class, Object.class, "_removedRef");

    @Nullable
    private volatile Object _next = this;

    @Nullable
    private volatile Object _prev = this;

    @Nullable
    private volatile Object _removedRef;

    public static abstract class a extends kotlinx.coroutines.internal.b<t> {

        @NotNull
        public final t newNode;

        @Nullable
        public t oldNext;

        @Override // kotlinx.coroutines.internal.b
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull t tVar, @Nullable Object obj) {
            boolean z6 = obj == null;
            t tVar2 = z6 ? this.newNode : this.oldNext;
            if (tVar2 != null && androidx.concurrent.futures.a.a(t._next$FU, tVar, this, tVar2) && z6) {
                t tVar3 = this.newNode;
                t tVar4 = this.oldNext;
                kotlin.jvm.internal.t.g(tVar4);
                tVar3.h(tVar4);
            }
        }

        public a(@NotNull t tVar) {
            this.newNode = tVar;
        }
    }

    @NotNull
    public final t k() {
        t tVarF = f(null);
        return tVarF == null ? g((t) _prev$FU.get(this)) : tVarF;
    }

    private final t f(b0 b0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object obj;
        while (true) {
            t tVar = (t) _prev$FU.get(this);
            t tVar2 = tVar;
            while (true) {
                t tVar3 = null;
                while (true) {
                    atomicReferenceFieldUpdater = _next$FU;
                    obj = atomicReferenceFieldUpdater.get(tVar2);
                    if (obj == this) {
                        if (tVar == tVar2) {
                            return tVar2;
                        }
                        if (!androidx.concurrent.futures.a.a(_prev$FU, this, tVar, tVar2)) {
                            break;
                        }
                        return tVar2;
                    }
                    if (l()) {
                        return null;
                    }
                    if (obj == b0Var) {
                        return tVar2;
                    }
                    if (obj instanceof b0) {
                        ((b0) obj).a(tVar2);
                        break;
                    }
                    if (!(obj instanceof c0)) {
                        kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                        tVar3 = tVar2;
                        tVar2 = (t) obj;
                    } else {
                        if (tVar3 != null) {
                            break;
                        }
                        tVar2 = (t) _prev$FU.get(tVar2);
                    }
                }
                if (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, tVar3, tVar2, ((c0) obj).ref)) {
                    break;
                }
                tVar2 = tVar3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(t tVar) {
        t tVar2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _prev$FU;
        do {
            tVar2 = (t) atomicReferenceFieldUpdater.get(tVar);
            if (i() != tVar) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(_prev$FU, tVar, tVar2, this));
        if (l()) {
            tVar.f(null);
        }
    }

    private final c0 o() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _removedRef$FU;
        c0 c0Var = (c0) atomicReferenceFieldUpdater.get(this);
        if (c0Var != null) {
            return c0Var;
        }
        c0 c0Var2 = new c0(this);
        atomicReferenceFieldUpdater.lazySet(this, c0Var2);
        return c0Var2;
    }

    public final boolean e(@NotNull t tVar) {
        _prev$FU.lazySet(tVar, this);
        _next$FU.lazySet(tVar, this);
        while (i() == this) {
            if (androidx.concurrent.futures.a.a(_next$FU, this, this, tVar)) {
                tVar.h(this);
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final Object i() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _next$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof b0)) {
                return obj;
            }
            ((b0) obj).a(this);
        }
    }

    public final int q(@NotNull t tVar, @NotNull t tVar2, @NotNull a aVar) {
        _prev$FU.lazySet(tVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _next$FU;
        atomicReferenceFieldUpdater.lazySet(tVar, tVar2);
        aVar.oldNext = tVar2;
        if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, tVar2, aVar)) {
            return aVar.a(this) == null ? 1 : 2;
        }
        return 0;
    }

    @NotNull
    public String toString() {
        return new kotlin.jvm.internal.e0(this) { // from class: kotlinx.coroutines.internal.t.b
            @Override // kotlin.jvm.internal.e0, kotlin.reflect.KProperty0
            @Nullable
            public Object get() {
                return kotlinx.coroutines.s0.a(this.receiver);
            }
        } + '@' + kotlinx.coroutines.s0.b(this);
    }

    private final t g(t tVar) {
        while (tVar.l()) {
            tVar = (t) _prev$FU.get(tVar);
        }
        return tVar;
    }

    @NotNull
    public final t j() {
        return s.b(i());
    }

    public boolean l() {
        return i() instanceof c0;
    }

    public boolean m() {
        if (n() == null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final t n() {
        Object objI;
        t tVar;
        do {
            objI = i();
            if (objI instanceof c0) {
                return ((c0) objI).ref;
            }
            if (objI == this) {
                return (t) objI;
            }
            kotlin.jvm.internal.t.h(objI, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            tVar = (t) objI;
        } while (!androidx.concurrent.futures.a.a(_next$FU, this, objI, tVar.o()));
        tVar.f(null);
        return null;
    }
}
