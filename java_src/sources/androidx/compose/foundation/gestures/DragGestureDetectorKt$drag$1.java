package androidx.compose.foundation.gestures;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {163}, m = "drag-jO51t88")
final class DragGestureDetectorKt$drag$1 extends d {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    DragGestureDetectorKt$drag$1(kotlin.coroutines.d<? super DragGestureDetectorKt$drag$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.n(null, 0L, null, this);
    }
}
