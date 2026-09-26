package androidx.compose.material;

import androidx.compose.foundation.gestures.DragScope;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
@f(c = "androidx.compose.material.SwipeableState$snapInternalToOffset$2", f = "Swipeable.kt", l = {}, m = "invokeSuspend")
final class SwipeableState$snapInternalToOffset$2 extends l implements p<DragScope, d<? super l0>, Object> {
    final /* synthetic */ float $target;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SwipeableState<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwipeableState$snapInternalToOffset$2(float f, SwipeableState<T> swipeableState, d<? super SwipeableState$snapInternalToOffset$2> dVar) {
        super(2, dVar);
        this.$target = f;
        this.this$0 = swipeableState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SwipeableState$snapInternalToOffset$2 swipeableState$snapInternalToOffset$2 = new SwipeableState$snapInternalToOffset$2(this.$target, this.this$0, dVar);
        swipeableState$snapInternalToOffset$2.L$0 = obj;
        return swipeableState$snapInternalToOffset$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull DragScope dragScope, @Nullable d<? super l0> dVar) {
        return ((SwipeableState$snapInternalToOffset$2) create(dragScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            ((DragScope) this.L$0).a(this.$target - ((Number) ((SwipeableState) this.this$0).absoluteOffset.getValue()).floatValue());
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
