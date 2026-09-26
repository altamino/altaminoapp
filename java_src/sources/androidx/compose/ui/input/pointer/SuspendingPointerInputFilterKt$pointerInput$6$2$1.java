package androidx.compose.ui.input.pointer;

import e8.p;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$pointerInput$6$2$1", f = "SuspendingPointerInputFilter.kt", l = {336}, m = "invokeSuspend")
final class SuspendingPointerInputFilterKt$pointerInput$6$2$1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ p<PointerInputScope, kotlin.coroutines.d<? super l0>, Object> $block;
    final /* synthetic */ SuspendingPointerInputFilter $filter;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SuspendingPointerInputFilterKt$pointerInput$6$2$1(SuspendingPointerInputFilter suspendingPointerInputFilter, p<? super PointerInputScope, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar, kotlin.coroutines.d<? super SuspendingPointerInputFilterKt$pointerInput$6$2$1> dVar) {
        super(2, dVar);
        this.$filter = suspendingPointerInputFilter;
        this.$block = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        SuspendingPointerInputFilterKt$pointerInput$6$2$1 suspendingPointerInputFilterKt$pointerInput$6$2$1 = new SuspendingPointerInputFilterKt$pointerInput$6$2$1(this.$filter, this.$block, dVar);
        suspendingPointerInputFilterKt$pointerInput$6$2$1.L$0 = obj;
        return suspendingPointerInputFilterKt$pointerInput$6$2$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((SuspendingPointerInputFilterKt$pointerInput$6$2$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            this.$filter.J0((o0) this.L$0);
            p<PointerInputScope, kotlin.coroutines.d<? super l0>, Object> pVar = this.$block;
            SuspendingPointerInputFilter suspendingPointerInputFilter = this.$filter;
            this.label = 1;
            if (pVar.invoke(suspendingPointerInputFilter, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
