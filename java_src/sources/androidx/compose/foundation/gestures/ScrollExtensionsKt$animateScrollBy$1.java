package androidx.compose.foundation.gestures;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@f(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt", f = "ScrollExtensions.kt", l = {40}, m = "animateScrollBy")
final class ScrollExtensionsKt$animateScrollBy$1 extends d {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    ScrollExtensionsKt$animateScrollBy$1(kotlin.coroutines.d<? super ScrollExtensionsKt$animateScrollBy$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ScrollExtensionsKt.a(null, 0.0f, null, this);
    }
}
