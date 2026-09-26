package androidx.compose.foundation.text.selection;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt", f = "TextSelectionMouseDetector.kt", l = {127}, m = "awaitMouseEventDown")
final class TextSelectionMouseDetectorKt$awaitMouseEventDown$1 extends d {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    TextSelectionMouseDetectorKt$awaitMouseEventDown$1(kotlin.coroutines.d<? super TextSelectionMouseDetectorKt$awaitMouseEventDown$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TextSelectionMouseDetectorKt.b(null, this);
    }
}
