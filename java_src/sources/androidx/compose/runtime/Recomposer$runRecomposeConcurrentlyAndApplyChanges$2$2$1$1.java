package androidx.compose.runtime;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1$1", f = "Recomposer.kt", l = {}, m = "invokeSuspend")
final class Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ ControlledComposition $composition;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1$1(Recomposer recomposer, ControlledComposition controlledComposition, d<? super Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1$1> dVar) {
        super(2, dVar);
        this.this$0 = recomposer;
        this.$composition = controlledComposition;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1$1(this.this$0, this.$composition, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        o oVarB0;
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            ControlledComposition controlledCompositionN0 = this.this$0.n0(this.$composition, null);
            Object obj2 = this.this$0.stateLock;
            Recomposer recomposer = this.this$0;
            synchronized (obj2) {
                if (controlledCompositionN0 != null) {
                    try {
                        recomposer.compositionsAwaitingApply.add(controlledCompositionN0);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                recomposer.concurrentCompositionsOutstanding--;
                oVarB0 = recomposer.b0();
            }
            if (oVarB0 != null) {
                v.a aVar = v.Companion;
                oVarB0.resumeWith(v.b(l0.INSTANCE));
            }
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
