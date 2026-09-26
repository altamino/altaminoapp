package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$6", f = "Draggable.kt", l = {}, m = "invokeSuspend")
final class DraggableKt$draggable$6 extends l implements q<o0, Offset, d<? super l0>, Object> {
    int label;

    DraggableKt$draggable$6(d<? super DraggableKt$draggable$6> dVar) {
        super(3, dVar);
    }

    @Nullable
    public final Object f(@NotNull o0 o0Var, long j6, @Nullable d<? super l0> dVar) {
        return new DraggableKt$draggable$6(dVar).invokeSuspend(l0.INSTANCE);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Object invoke(o0 o0Var, Offset offset, d<? super l0> dVar) {
        return f(o0Var, offset.u(), dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
