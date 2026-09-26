package androidx.compose.material;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.material.SliderKt", f = "Slider.kt", l = {795}, m = "awaitSlop-8vUncbI")
final class SliderKt$awaitSlop$1 extends d {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    SliderKt$awaitSlop$1(kotlin.coroutines.d<? super SliderKt$awaitSlop$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SliderKt.x(null, 0L, 0, this);
    }
}
