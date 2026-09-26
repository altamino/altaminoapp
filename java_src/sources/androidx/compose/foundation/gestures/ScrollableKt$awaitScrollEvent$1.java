package androidx.compose.foundation.gestures;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@f(c = "androidx.compose.foundation.gestures.ScrollableKt", f = "Scrollable.kt", l = {293}, m = "awaitScrollEvent")
final class ScrollableKt$awaitScrollEvent$1 extends d {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    ScrollableKt$awaitScrollEvent$1(kotlin.coroutines.d<? super ScrollableKt$awaitScrollEvent$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ScrollableKt.d(null, this);
    }
}
