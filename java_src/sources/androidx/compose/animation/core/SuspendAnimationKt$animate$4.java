package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.animation.core.SuspendAnimationKt", f = "SuspendAnimation.kt", l = {233, 272}, m = "animate")
final class SuspendAnimationKt$animate$4<T, V extends AnimationVector> extends kotlin.coroutines.jvm.internal.d {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;

    SuspendAnimationKt$animate$4(kotlin.coroutines.d<? super SuspendAnimationKt$animate$4> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SuspendAnimationKt.c(null, null, 0L, null, this);
    }
}
