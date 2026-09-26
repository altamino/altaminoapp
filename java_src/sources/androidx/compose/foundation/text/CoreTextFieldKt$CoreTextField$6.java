package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$6 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ Brush $cursorBrush;
    final /* synthetic */ q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> $decorationBox;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ ImeOptions $imeOptions;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ KeyboardActions $keyboardActions;
    final /* synthetic */ int $maxLines;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<TextLayoutResult, l0> $onTextLayout;
    final /* synthetic */ l<TextFieldValue, l0> $onValueChange;
    final /* synthetic */ boolean $readOnly;
    final /* synthetic */ boolean $softWrap;
    final /* synthetic */ TextStyle $textStyle;
    final /* synthetic */ TextFieldValue $value;
    final /* synthetic */ VisualTransformation $visualTransformation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CoreTextFieldKt$CoreTextField$6(TextFieldValue textFieldValue, l<? super TextFieldValue, l0> lVar, Modifier modifier, TextStyle textStyle, VisualTransformation visualTransformation, l<? super TextLayoutResult, l0> lVar2, MutableInteractionSource mutableInteractionSource, Brush brush, boolean z6, int i10, ImeOptions imeOptions, KeyboardActions keyboardActions, boolean z10, boolean z11, q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVar, int i11, int i12, int i13) {
        super(2);
        this.$value = textFieldValue;
        this.$onValueChange = lVar;
        this.$modifier = modifier;
        this.$textStyle = textStyle;
        this.$visualTransformation = visualTransformation;
        this.$onTextLayout = lVar2;
        this.$interactionSource = mutableInteractionSource;
        this.$cursorBrush = brush;
        this.$softWrap = z6;
        this.$maxLines = i10;
        this.$imeOptions = imeOptions;
        this.$keyboardActions = keyboardActions;
        this.$enabled = z10;
        this.$readOnly = z11;
        this.$decorationBox = qVar;
        this.$$changed = i11;
        this.$$changed1 = i12;
        this.$$default = i13;
    }

    public final void a(@Nullable Composer composer, int i10) {
        CoreTextFieldKt.a(this.$value, this.$onValueChange, this.$modifier, this.$textStyle, this.$visualTransformation, this.$onTextLayout, this.$interactionSource, this.$cursorBrush, this.$softWrap, this.$maxLines, this.$imeOptions, this.$keyboardActions, this.$enabled, this.$readOnly, this.$decorationBox, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
