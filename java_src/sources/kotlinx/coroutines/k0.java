package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class k0 extends kotlin.coroutines.a implements kotlin.coroutines.e {

    @NotNull
    public static final a Key = new a(null);

    public static final class a extends kotlin.coroutines.b<kotlin.coroutines.e, k0> {

        /* JADX INFO: renamed from: kotlinx.coroutines.k0$a$a, reason: collision with other inner class name */
        static final class C0450a extends kotlin.jvm.internal.v implements e8.l<kotlin.coroutines.g.b, k0> {
            public static final C0450a INSTANCE = new C0450a();

            C0450a() {
                super(1);
            }

            @Override // e8.l
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final k0 invoke(@NotNull kotlin.coroutines.g.b bVar) {
                if (bVar instanceof k0) {
                    return (k0) bVar;
                }
                return null;
            }
        }

        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
            super(kotlin.coroutines.e.Key, C0450a.INSTANCE);
        }
    }

    public abstract void dispatch(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable);

    public boolean isDispatchNeeded(@NotNull kotlin.coroutines.g gVar) {
        return true;
    }

    @NotNull
    public final k0 plus(@NotNull k0 k0Var) {
        return k0Var;
    }

    public k0() {
        super(kotlin.coroutines.e.Key);
    }

    @Override // kotlin.coroutines.e
    @NotNull
    public final <T> kotlin.coroutines.d<T> interceptContinuation(@NotNull kotlin.coroutines.d<? super T> dVar) {
        return new kotlinx.coroutines.internal.j(this, dVar);
    }

    @Override // kotlin.coroutines.e
    public final void releaseInterceptedContinuation(@NotNull kotlin.coroutines.d<?> dVar) {
        kotlin.jvm.internal.t.h(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((kotlinx.coroutines.internal.j) dVar).p();
    }

    @NotNull
    public String toString() {
        return s0.a(this) + '@' + s0.b(this);
    }

    public void dispatchYield(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        dispatch(gVar, runnable);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> cVar) {
        return (E) kotlin.coroutines.e.a.a(this, cVar);
    }

    @NotNull
    public k0 limitedParallelism(int i10) {
        kotlinx.coroutines.internal.q.a(i10);
        return new kotlinx.coroutines.internal.p(this, i10);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> cVar) {
        return kotlin.coroutines.e.a.b(this, cVar);
    }
}
