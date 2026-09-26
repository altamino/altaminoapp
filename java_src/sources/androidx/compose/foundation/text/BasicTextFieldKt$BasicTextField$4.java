package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.VisualTransformation;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BasicTextFieldKt$BasicTextField$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ Brush $cursorBrush;
    final /* synthetic */ q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> $decorationBox;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ KeyboardActions $keyboardActions;
    final /* synthetic */ KeyboardOptions $keyboardOptions;
    final /* synthetic */ int $maxLines;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<TextLayoutResult, l0> $onTextLayout;
    final /* synthetic */ l<String, l0> $onValueChange;
    final /* synthetic */ boolean $readOnly;
    final /* synthetic */ boolean $singleLine;
    final /* synthetic */ TextStyle $textStyle;
    final /* synthetic */ String $value;
    final /* synthetic */ VisualTransformation $visualTransformation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BasicTextFieldKt$BasicTextField$4(String str, l<? super String, l0> lVar, Modifier modifier, boolean z6, boolean z10, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean z11, int i10, VisualTransformation visualTransformation, l<? super TextLayoutResult, l0> lVar2, MutableInteractionSource mutableInteractionSource, Brush brush, q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVar, int i11, int i12, int i13) {
        super(2);
        this.$value = str;
        this.$onValueChange = lVar;
        this.$modifier = modifier;
        this.$enabled = z6;
        this.$readOnly = z10;
        this.$textStyle = textStyle;
        this.$keyboardOptions = keyboardOptions;
        this.$keyboardActions = keyboardActions;
        this.$singleLine = z11;
        this.$maxLines = i10;
        this.$visualTransformation = visualTransformation;
        this.$onTextLayout = lVar2;
        this.$interactionSource = mutableInteractionSource;
        this.$cursorBrush = brush;
        this.$decorationBox = qVar;
        this.$$changed = i11;
        this.$$changed1 = i12;
        this.$$default = i13;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BasicTextFieldKt.b(this.$value, this.$onValueChange, this.$modifier, this.$enabled, this.$readOnly, this.$textStyle, this.$keyboardOptions, this.$keyboardActions, this.$singleLine, this.$maxLines, this.$visualTransformation, this.$onTextLayout, this.$interactionSource, this.$cursorBrush, this.$decorationBox, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
