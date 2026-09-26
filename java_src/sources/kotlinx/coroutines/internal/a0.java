package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class a0 {

    static final class a extends kotlin.jvm.internal.v implements e8.l<Throwable, w7.l0> {
        final /* synthetic */ kotlin.coroutines.g $context;
        final /* synthetic */ E $element;
        final /* synthetic */ e8.l<E, w7.l0> $this_bindCancellationFun;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(e8.l<? super E, w7.l0> lVar, E e, kotlin.coroutines.g gVar) {
            super(1);
            this.$this_bindCancellationFun = lVar;
            this.$element = e;
            this.$context = gVar;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
            invoke2(th);
            return w7.l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull Throwable th) {
            a0.b(this.$this_bindCancellationFun, this.$element, this.$context);
        }
    }

    public static final <E> void b(@NotNull e8.l<? super E, w7.l0> lVar, E e, @NotNull kotlin.coroutines.g gVar) {
        t0 t0VarC = c(lVar, e, null);
        if (t0VarC != null) {
            kotlinx.coroutines.m0.a(gVar, t0VarC);
        }
    }

    @NotNull
    public static final <E> e8.l<Throwable, w7.l0> a(@NotNull e8.l<? super E, w7.l0> lVar, E e, @NotNull kotlin.coroutines.g gVar) {
        return new a(lVar, e, gVar);
    }

    public static /* synthetic */ t0 d(e8.l lVar, Object obj, t0 t0Var, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            t0Var = null;
        }
        return c(lVar, obj, t0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <E> t0 c(@NotNull e8.l<? super E, w7.l0> lVar, E e, @Nullable t0 t0Var) {
        try {
            lVar.invoke(e);
        } catch (Throwable th) {
            if (t0Var != null && t0Var.getCause() != th) {
                w7.f.a(t0Var, th);
            } else {
                return new t0("Exception in undelivered element handler for " + e, th);
            }
        }
        return t0Var;
    }
}
