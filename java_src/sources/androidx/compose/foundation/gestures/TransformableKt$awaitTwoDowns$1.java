package androidx.compose.foundation.gestures;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.TransformableKt", f = "Transformable.kt", l = {160}, m = "awaitTwoDowns")
final class TransformableKt$awaitTwoDowns$1 extends d {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;

    TransformableKt$awaitTwoDowns$1(kotlin.coroutines.d<? super TransformableKt$awaitTwoDowns$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TransformableKt.c(null, false, this);
    }
}
