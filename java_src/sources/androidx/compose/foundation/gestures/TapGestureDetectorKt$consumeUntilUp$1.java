package androidx.compose.foundation.gestures;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", l = {174}, m = "consumeUntilUp")
final class TapGestureDetectorKt$consumeUntilUp$1 extends d {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    TapGestureDetectorKt$consumeUntilUp$1(kotlin.coroutines.d<? super TapGestureDetectorKt$consumeUntilUp$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TapGestureDetectorKt.h(null, this);
    }
}
