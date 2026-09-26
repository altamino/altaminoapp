package androidx.lifecycle;

import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.EmittedSource$disposeNow$2", f = "CoroutineLiveData.kt", l = {}, m = "invokeSuspend")
final class EmittedSource$disposeNow$2 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    int label;
    final /* synthetic */ EmittedSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EmittedSource$disposeNow$2(EmittedSource emittedSource, kotlin.coroutines.d<? super EmittedSource$disposeNow$2> dVar) {
        super(2, dVar);
        this.this$0 = emittedSource;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new EmittedSource$disposeNow$2(this.this$0, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((EmittedSource$disposeNow$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            this.this$0.d();
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
