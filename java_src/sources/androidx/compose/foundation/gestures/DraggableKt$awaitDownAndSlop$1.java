package androidx.compose.foundation.gestures;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.foundation.gestures.DraggableKt", f = "Draggable.kt", l = {315, 324, 333, 335}, m = "awaitDownAndSlop")
final class DraggableKt$awaitDownAndSlop$1 extends d {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;

    DraggableKt$awaitDownAndSlop$1(kotlin.coroutines.d<? super DraggableKt$awaitDownAndSlop$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DraggableKt.f(null, null, null, null, null, this);
    }
}
