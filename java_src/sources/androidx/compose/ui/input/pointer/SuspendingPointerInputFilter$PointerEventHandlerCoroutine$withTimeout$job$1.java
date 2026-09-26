package androidx.compose.ui.input.pointer;

import e8.p;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1", f = "SuspendingPointerInputFilter.kt", l = {617, 618}, m = "invokeSuspend")
final class SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ long $timeMillis;
    int label;
    final /* synthetic */ SuspendingPointerInputFilter.PointerEventHandlerCoroutine<R> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1(long j6, SuspendingPointerInputFilter.PointerEventHandlerCoroutine<R> pointerEventHandlerCoroutine, kotlin.coroutines.d<? super SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1> dVar) {
        super(2, dVar);
        this.$timeMillis = j6;
        this.this$0 = pointerEventHandlerCoroutine;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1(this.$timeMillis, this.this$0, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        o oVar;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
            }
            oVar = ((SuspendingPointerInputFilter.PointerEventHandlerCoroutine) this.this$0).pointerAwaiter;
            if (oVar != null) {
                v.a aVar = v.Companion;
                oVar.resumeWith(v.b(w.a(new PointerEventTimeoutCancellationException(this.$timeMillis))));
            }
            return l0.INSTANCE;
        }
        w.b(obj);
        long j6 = this.$timeMillis - 1;
        this.label = 1;
        if (y0.a(j6, this) == objE) {
            return objE;
        }
        this.label = 2;
        if (y0.a(1L, this) == objE) {
            return objE;
        }
        oVar = ((SuspendingPointerInputFilter.PointerEventHandlerCoroutine) this.this$0).pointerAwaiter;
        if (oVar != null) {
            v.a aVar2 = v.Companion;
            oVar.resumeWith(v.b(w.a(new PointerEventTimeoutCancellationException(this.$timeMillis))));
        }
        return l0.INSTANCE;
    }
}
