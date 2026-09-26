package androidx.lifecycle;

import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.BlockRunner$cancel$1", f = "CoroutineLiveData.kt", l = {188}, m = "invokeSuspend")
final class BlockRunner$cancel$1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    int label;
    final /* synthetic */ BlockRunner<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BlockRunner$cancel$1(BlockRunner<T> blockRunner, kotlin.coroutines.d<? super BlockRunner$cancel$1> dVar) {
        super(2, dVar);
        this.this$0 = blockRunner;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new BlockRunner$cancel$1(this.this$0, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((BlockRunner$cancel$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            long j6 = ((BlockRunner) this.this$0).timeoutInMs;
            this.label = 1;
            if (y0.a(j6, this) == objE) {
                return objE;
            }
        }
        if (!((BlockRunner) this.this$0).liveData.h()) {
            b2 b2Var = ((BlockRunner) this.this$0).runningJob;
            if (b2Var != null) {
                b2.a.a(b2Var, null, 1, null);
            }
            ((BlockRunner) this.this$0).runningJob = null;
        }
        return l0.INSTANCE;
    }
}
