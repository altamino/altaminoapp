package androidx.compose.foundation.gestures;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
@f(c = "androidx.compose.foundation.gestures.IgnorePointerDraggableState$drag$2", f = "Draggable.kt", l = {478}, m = "invokeSuspend")
final class IgnorePointerDraggableState$drag$2 extends l implements p<DragScope, d<? super l0>, Object> {
    final /* synthetic */ p<PointerAwareDragScope, d<? super l0>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ IgnorePointerDraggableState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    IgnorePointerDraggableState$drag$2(IgnorePointerDraggableState ignorePointerDraggableState, p<? super PointerAwareDragScope, ? super d<? super l0>, ? extends Object> pVar, d<? super IgnorePointerDraggableState$drag$2> dVar) {
        super(2, dVar);
        this.this$0 = ignorePointerDraggableState;
        this.$block = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        IgnorePointerDraggableState$drag$2 ignorePointerDraggableState$drag$2 = new IgnorePointerDraggableState$drag$2(this.this$0, this.$block, dVar);
        ignorePointerDraggableState$drag$2.L$0 = obj;
        return ignorePointerDraggableState$drag$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull DragScope dragScope, @Nullable d<? super l0> dVar) {
        return ((IgnorePointerDraggableState$drag$2) create(dragScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            this.this$0.c((DragScope) this.L$0);
            p<PointerAwareDragScope, d<? super l0>, Object> pVar = this.$block;
            IgnorePointerDraggableState ignorePointerDraggableState = this.this$0;
            this.label = 1;
            if (pVar.invoke(ignorePointerDraggableState, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
