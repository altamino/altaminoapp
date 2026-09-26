package androidx.lifecycle;

import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes7.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.kt", l = {203}, m = "invokeSuspend")
final class PausingDispatcherKt$whenStateAtLeast$2<T> extends l implements p<o0, kotlin.coroutines.d<? super T>, Object> {
    final /* synthetic */ p<o0, kotlin.coroutines.d<? super T>, Object> $block;
    final /* synthetic */ Lifecycle.State $minState;
    final /* synthetic */ Lifecycle $this_whenStateAtLeast;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PausingDispatcherKt$whenStateAtLeast$2(Lifecycle lifecycle, Lifecycle.State state, p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, kotlin.coroutines.d<? super PausingDispatcherKt$whenStateAtLeast$2> dVar) {
        super(2, dVar);
        this.$this_whenStateAtLeast = lifecycle;
        this.$minState = state;
        this.$block = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        PausingDispatcherKt$whenStateAtLeast$2 pausingDispatcherKt$whenStateAtLeast$2 = new PausingDispatcherKt$whenStateAtLeast$2(this.$this_whenStateAtLeast, this.$minState, this.$block, dVar);
        pausingDispatcherKt$whenStateAtLeast$2.L$0 = obj;
        return pausingDispatcherKt$whenStateAtLeast$2;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super T> dVar) {
        return ((PausingDispatcherKt$whenStateAtLeast$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        LifecycleController lifecycleController;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                lifecycleController = (LifecycleController) this.L$0;
                try {
                    w.b(obj);
                    lifecycleController.b();
                    return obj;
                } catch (Throwable th) {
                    th = th;
                    lifecycleController.b();
                    throw th;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        w.b(obj);
        b2 b2Var = (b2) ((o0) this.L$0).getCoroutineContext().get(b2.Key);
        if (b2Var != null) {
            PausingDispatcher pausingDispatcher = new PausingDispatcher();
            LifecycleController lifecycleController2 = new LifecycleController(this.$this_whenStateAtLeast, this.$minState, pausingDispatcher.dispatchQueue, b2Var);
            try {
                p<o0, kotlin.coroutines.d<? super T>, Object> pVar = this.$block;
                this.L$0 = lifecycleController2;
                this.label = 1;
                obj = kotlinx.coroutines.i.g(pausingDispatcher, pVar, this);
                if (obj == objE) {
                    return objE;
                }
                lifecycleController = lifecycleController2;
                lifecycleController.b();
                return obj;
            } catch (Throwable th2) {
                th = th2;
                lifecycleController = lifecycleController2;
                lifecycleController.b();
                throw th;
            }
        }
        throw new IllegalStateException("when[State] methods should have a parent job".toString());
    }
}
