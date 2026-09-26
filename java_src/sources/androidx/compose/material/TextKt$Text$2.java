package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class TextKt$Text$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ long $color;
    final /* synthetic */ FontFamily $fontFamily;
    final /* synthetic */ long $fontSize;
    final /* synthetic */ FontStyle $fontStyle;
    final /* synthetic */ FontWeight $fontWeight;
    final /* synthetic */ long $letterSpacing;
    final /* synthetic */ long $lineHeight;
    final /* synthetic */ int $maxLines;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<TextLayoutResult, l0> $onTextLayout;
    final /* synthetic */ int $overflow;
    final /* synthetic */ boolean $softWrap;
    final /* synthetic */ TextStyle $style;
    final /* synthetic */ String $text;
    final /* synthetic */ TextAlign $textAlign;
    final /* synthetic */ TextDecoration $textDecoration;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextKt$Text$2(String str, Modifier modifier, long j6, long j10, FontStyle fontStyle, FontWeight fontWeight, FontFamily fontFamily, long j11, TextDecoration textDecoration, TextAlign textAlign, long j12, int i10, boolean z6, int i11, l<? super TextLayoutResult, l0> lVar, TextStyle textStyle, int i12, int i13, int i14) {
        super(2);
        this.$text = str;
        this.$modifier = modifier;
        this.$color = j6;
        this.$fontSize = j10;
        this.$fontStyle = fontStyle;
        this.$fontWeight = fontWeight;
        this.$fontFamily = fontFamily;
        this.$letterSpacing = j11;
        this.$textDecoration = textDecoration;
        this.$textAlign = textAlign;
        this.$lineHeight = j12;
        this.$overflow = i10;
        this.$softWrap = z6;
        this.$maxLines = i11;
        this.$onTextLayout = lVar;
        this.$style = textStyle;
        this.$$changed = i12;
        this.$$changed1 = i13;
        this.$$default = i14;
    }

    public final void a(@Nullable Composer composer, int i10) {
        TextKt.c(this.$text, this.$modifier, this.$color, this.$fontSize, this.$fontStyle, this.$fontWeight, this.$fontFamily, this.$letterSpacing, this.$textDecoration, this.$textAlign, this.$lineHeight, this.$overflow, this.$softWrap, this.$maxLines, this.$onTextLayout, this.$style, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
