package androidx.lifecycle;

import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes10.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1", f = "Lifecycle.kt", l = {356}, m = "invokeSuspend")
final class LifecycleCoroutineScope$launchWhenStarted$1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ p<o0, kotlin.coroutines.d<? super l0>, Object> $block;
    int label;
    final /* synthetic */ LifecycleCoroutineScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LifecycleCoroutineScope$launchWhenStarted$1(LifecycleCoroutineScope lifecycleCoroutineScope, p<? super o0, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar, kotlin.coroutines.d<? super LifecycleCoroutineScope$launchWhenStarted$1> dVar) {
        super(2, dVar);
        this.this$0 = lifecycleCoroutineScope;
        this.$block = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new LifecycleCoroutineScope$launchWhenStarted$1(this.this$0, this.$block, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((LifecycleCoroutineScope$launchWhenStarted$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            Lifecycle lifecycleA = this.this$0.a();
            p<o0, kotlin.coroutines.d<? super l0>, Object> pVar = this.$block;
            this.label = 1;
            if (PausingDispatcherKt.c(lifecycleA, pVar, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
