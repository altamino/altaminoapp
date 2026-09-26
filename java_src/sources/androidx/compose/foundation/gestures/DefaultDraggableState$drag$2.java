package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.DefaultDraggableState$drag$2", f = "Draggable.kt", l = {427}, m = "invokeSuspend")
final class DefaultDraggableState$drag$2 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ p<DragScope, d<? super l0>, Object> $block;
    final /* synthetic */ MutatePriority $dragPriority;
    int label;
    final /* synthetic */ DefaultDraggableState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DefaultDraggableState$drag$2(DefaultDraggableState defaultDraggableState, MutatePriority mutatePriority, p<? super DragScope, ? super d<? super l0>, ? extends Object> pVar, d<? super DefaultDraggableState$drag$2> dVar) {
        super(2, dVar);
        this.this$0 = defaultDraggableState;
        this.$dragPriority = mutatePriority;
        this.$block = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new DefaultDraggableState$drag$2(this.this$0, this.$dragPriority, this.$block, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((DefaultDraggableState$drag$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            MutatorMutex mutatorMutex = this.this$0.scrollMutex;
            DragScope dragScope = this.this$0.dragScope;
            MutatePriority mutatePriority = this.$dragPriority;
            p<DragScope, d<? super l0>, Object> pVar = this.$block;
            this.label = 1;
            if (mutatorMutex.d(dragScope, mutatePriority, pVar, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
