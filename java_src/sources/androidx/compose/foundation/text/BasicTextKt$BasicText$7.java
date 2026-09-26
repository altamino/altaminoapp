package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import e8.l;
import e8.p;
import java.util.Map;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class BasicTextKt$BasicText$7 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ Map<String, InlineTextContent> $inlineContent;
    final /* synthetic */ int $maxLines;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<TextLayoutResult, l0> $onTextLayout;
    final /* synthetic */ int $overflow;
    final /* synthetic */ boolean $softWrap;
    final /* synthetic */ TextStyle $style;
    final /* synthetic */ AnnotatedString $text;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BasicTextKt$BasicText$7(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, l<? super TextLayoutResult, l0> lVar, int i10, boolean z6, int i11, Map<String, InlineTextContent> map, int i12, int i13) {
        super(2);
        this.$text = annotatedString;
        this.$modifier = modifier;
        this.$style = textStyle;
        this.$onTextLayout = lVar;
        this.$overflow = i10;
        this.$softWrap = z6;
        this.$maxLines = i11;
        this.$inlineContent = map;
        this.$$changed = i12;
        this.$$default = i13;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BasicTextKt.a(this.$text, this.$modifier, this.$style, this.$onTextLayout, this.$overflow, this.$softWrap, this.$maxLines, this.$inlineContent, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
