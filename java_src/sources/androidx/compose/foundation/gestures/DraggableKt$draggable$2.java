package androidx.compose.foundation.gestures;

import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$2", f = "Draggable.kt", l = {}, m = "invokeSuspend")
public final class DraggableKt$draggable$2 extends l implements q<o0, Float, d<? super l0>, Object> {
    int label;

    DraggableKt$draggable$2(d<? super DraggableKt$draggable$2> dVar) {
        super(3, dVar);
    }

    @Nullable
    public final Object f(@NotNull o0 o0Var, float f, @Nullable d<? super l0> dVar) {
        return new DraggableKt$draggable$2(dVar).invokeSuspend(l0.INSTANCE);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Object invoke(o0 o0Var, Float f, d<? super l0> dVar) {
        return f(o0Var, f.floatValue(), dVar);
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
