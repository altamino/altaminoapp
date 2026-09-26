package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.input.VisualTransformation;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldImplKt$CommonDecorationBox$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $border;
    final /* synthetic */ TextFieldColors $colors;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ p<Composer, Integer, l0> $innerTextField;
    final /* synthetic */ InteractionSource $interactionSource;
    final /* synthetic */ boolean $isError;
    final /* synthetic */ p<Composer, Integer, l0> $label;
    final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;
    final /* synthetic */ p<Composer, Integer, l0> $placeholder;
    final /* synthetic */ boolean $singleLine;
    final /* synthetic */ p<Composer, Integer, l0> $trailingIcon;
    final /* synthetic */ TextFieldType $type;
    final /* synthetic */ String $value;
    final /* synthetic */ VisualTransformation $visualTransformation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldImplKt$CommonDecorationBox$4(TextFieldType textFieldType, String str, p<? super Composer, ? super Integer, l0> pVar, VisualTransformation visualTransformation, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, p<? super Composer, ? super Integer, l0> pVar5, boolean z6, boolean z10, boolean z11, InteractionSource interactionSource, PaddingValues paddingValues, TextFieldColors textFieldColors, p<? super Composer, ? super Integer, l0> pVar6, int i10, int i11, int i12) {
        super(2);
        this.$type = textFieldType;
        this.$value = str;
        this.$innerTextField = pVar;
        this.$visualTransformation = visualTransformation;
        this.$label = pVar2;
        this.$placeholder = pVar3;
        this.$leadingIcon = pVar4;
        this.$trailingIcon = pVar5;
        this.$singleLine = z6;
        this.$enabled = z10;
        this.$isError = z11;
        this.$interactionSource = interactionSource;
        this.$contentPadding = paddingValues;
        this.$colors = textFieldColors;
        this.$border = pVar6;
        this.$$changed = i10;
        this.$$changed1 = i11;
        this.$$default = i12;
    }

    public final void a(@Nullable Composer composer, int i10) {
        TextFieldImplKt.a(this.$type, this.$value, this.$innerTextField, this.$visualTransformation, this.$label, this.$placeholder, this.$leadingIcon, this.$trailingIcon, this.$singleLine, this.$enabled, this.$isError, this.$interactionSource, this.$contentPadding, this.$colors, this.$border, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
