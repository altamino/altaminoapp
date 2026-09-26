package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$NoPressGesture$1", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend")
final class TapGestureDetectorKt$NoPressGesture$1 extends l implements q<PressGestureScope, Offset, d<? super l0>, Object> {
    int label;

    TapGestureDetectorKt$NoPressGesture$1(d<? super TapGestureDetectorKt$NoPressGesture$1> dVar) {
        super(3, dVar);
    }

    @Nullable
    public final Object f(@NotNull PressGestureScope pressGestureScope, long j6, @Nullable d<? super l0> dVar) {
        return new TapGestureDetectorKt$NoPressGesture$1(dVar).invokeSuspend(l0.INSTANCE);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, d<? super l0> dVar) {
        return f(pressGestureScope, offset.u(), dVar);
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
