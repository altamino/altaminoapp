package androidx.compose.runtime;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
@f(c = "androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$4", f = "ProduceState.kt", l = {188}, m = "invokeSuspend")
final class SnapshotStateKt__ProduceStateKt$produceState$4 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ p<ProduceStateScope<Object>, d<? super l0>, Object> $producer;
    final /* synthetic */ MutableState<Object> $result;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SnapshotStateKt__ProduceStateKt$produceState$4(p<? super ProduceStateScope<Object>, ? super d<? super l0>, ? extends Object> pVar, MutableState<Object> mutableState, d<? super SnapshotStateKt__ProduceStateKt$produceState$4> dVar) {
        super(2, dVar);
        this.$producer = pVar;
        this.$result = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SnapshotStateKt__ProduceStateKt$produceState$4 snapshotStateKt__ProduceStateKt$produceState$4 = new SnapshotStateKt__ProduceStateKt$produceState$4(this.$producer, this.$result, dVar);
        snapshotStateKt__ProduceStateKt$produceState$4.L$0 = obj;
        return snapshotStateKt__ProduceStateKt$produceState$4;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((SnapshotStateKt__ProduceStateKt$produceState$4) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            o0 o0Var = (o0) this.L$0;
            p<ProduceStateScope<Object>, d<? super l0>, Object> pVar = this.$producer;
            ProduceStateScopeImpl produceStateScopeImpl = new ProduceStateScopeImpl(this.$result, o0Var.getCoroutineContext());
            this.label = 1;
            if (pVar.invoke(produceStateScopeImpl, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
