package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.TextLayoutResult;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ClickableTextKt$ClickableText$2$1 extends v implements l<TextLayoutResult, l0> {
    final /* synthetic */ MutableState<TextLayoutResult> $layoutResult;
    final /* synthetic */ l<TextLayoutResult, l0> $onTextLayout;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ClickableTextKt$ClickableText$2$1(MutableState<TextLayoutResult> mutableState, l<? super TextLayoutResult, l0> lVar) {
        super(1);
        this.$layoutResult = mutableState;
        this.$onTextLayout = lVar;
    }

    public final void a(@NotNull TextLayoutResult it) {
        t.j(it, "it");
        this.$layoutResult.setValue(it);
        this.$onTextLayout.invoke(it);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(TextLayoutResult textLayoutResult) {
        a(textLayoutResult);
        return l0.INSTANCE;
    }
}
