package kotlinx.coroutines.flow;

import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final /* synthetic */ class l {

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1", f = "Collect.kt", l = {50}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ g<T> $this_launchIn;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(g<? extends T> gVar, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$this_launchIn = gVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new a(this.$this_launchIn, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                g<T> gVar = this.$this_launchIn;
                this.label = 1;
                if (i.k(gVar, this) == objE) {
                    return objE;
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    @NotNull
    public static final <T> b2 d(@NotNull g<? extends T> gVar, @NotNull kotlinx.coroutines.o0 o0Var) {
        return kotlinx.coroutines.k.d(o0Var, null, null, new a(gVar, null), 3, null);
    }

    @Nullable
    public static final Object a(@NotNull g<?> gVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        Object objCollect = gVar.collect(kotlinx.coroutines.flow.internal.r.INSTANCE, dVar);
        return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : w7.l0.INSTANCE;
    }

    @Nullable
    public static final <T> Object b(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        Object objK = i.k(m.b(i.D(gVar, pVar), 0, null, 2, null), dVar);
        if (objK == kotlin.coroutines.intrinsics.d.e()) {
            return objK;
        }
        return w7.l0.INSTANCE;
    }

    @Nullable
    public static final <T> Object c(@NotNull h<? super T> hVar, @NotNull g<? extends T> gVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        i.s(hVar);
        Object objCollect = gVar.collect(hVar, dVar);
        if (objCollect == kotlin.coroutines.intrinsics.d.e()) {
            return objCollect;
        }
        return w7.l0.INSTANCE;
    }
}
