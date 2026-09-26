package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class x1 {
    private static final int FINISHED = 1;
    private static final int INTERRUPTED = 3;
    private static final int INTERRUPTING = 2;
    private static final int WORKING = 0;

    /* JADX INFO: Add missing generic type declarations: [T] */
    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2", f = "Interruptible.kt", l = {}, m = "invokeSuspend")
    static final class a<T> extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super T>, Object> {
        final /* synthetic */ e8.a<T> $block;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(e8.a<? extends T> aVar, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$block = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            a aVar = new a(this.$block, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super T> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w7.w.b(obj);
                return x1.d(((o0) this.L$0).getCoroutineContext(), this.$block);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Nullable
    public static final <T> Object b(@NotNull kotlin.coroutines.g gVar, @NotNull e8.a<? extends T> aVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return i.g(gVar, new a(aVar, null), dVar);
    }

    public static /* synthetic */ Object c(kotlin.coroutines.g gVar, e8.a aVar, kotlin.coroutines.d dVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        return b(gVar, aVar, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> T d(kotlin.coroutines.g gVar, e8.a<? extends T> aVar) throws Throwable {
        try {
            c3 c3Var = new c3(f2.l(gVar));
            c3Var.d();
            try {
                return aVar.invoke();
            } finally {
                c3Var.a();
            }
        } catch (InterruptedException e) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e);
        }
    }
}
