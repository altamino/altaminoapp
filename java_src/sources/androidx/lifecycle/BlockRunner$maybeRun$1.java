package androidx.lifecycle;

import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.BlockRunner$maybeRun$1", f = "CoroutineLiveData.kt", l = {177}, m = "invokeSuspend")
final class BlockRunner$maybeRun$1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BlockRunner<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BlockRunner$maybeRun$1(BlockRunner<T> blockRunner, kotlin.coroutines.d<? super BlockRunner$maybeRun$1> dVar) {
        super(2, dVar);
        this.this$0 = blockRunner;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        BlockRunner$maybeRun$1 blockRunner$maybeRun$1 = new BlockRunner$maybeRun$1(this.this$0, dVar);
        blockRunner$maybeRun$1.L$0 = obj;
        return blockRunner$maybeRun$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((BlockRunner$maybeRun$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            LiveDataScopeImpl liveDataScopeImpl = new LiveDataScopeImpl(((BlockRunner) this.this$0).liveData, ((o0) this.L$0).getCoroutineContext());
            p pVar = ((BlockRunner) this.this$0).block;
            this.label = 1;
            if (pVar.invoke(liveDataScopeImpl, this) == objE) {
                return objE;
            }
        }
        ((BlockRunner) this.this$0).onDone.invoke();
        return l0.INSTANCE;
    }
}
