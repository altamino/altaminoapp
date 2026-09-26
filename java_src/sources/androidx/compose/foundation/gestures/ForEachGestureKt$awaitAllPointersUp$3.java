package androidx.compose.foundation.gestures;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.ForEachGestureKt", f = "ForEachGesture.kt", l = {79}, m = "awaitAllPointersUp")
final class ForEachGestureKt$awaitAllPointersUp$3 extends d {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    ForEachGestureKt$awaitAllPointersUp$3(kotlin.coroutines.d<? super ForEachGestureKt$awaitAllPointersUp$3> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ForEachGestureKt.b(null, this);
    }
}
