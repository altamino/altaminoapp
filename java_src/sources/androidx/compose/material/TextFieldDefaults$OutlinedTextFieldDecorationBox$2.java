package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.input.VisualTransformation;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TextFieldDefaults$OutlinedTextFieldDecorationBox$2 extends v implements p<Composer, Integer, l0> {
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
    final /* synthetic */ TextFieldDefaults $tmp0_rcvr;
    final /* synthetic */ p<Composer, Integer, l0> $trailingIcon;
    final /* synthetic */ String $value;
    final /* synthetic */ VisualTransformation $visualTransformation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldDefaults$OutlinedTextFieldDecorationBox$2(TextFieldDefaults textFieldDefaults, String str, p<? super Composer, ? super Integer, l0> pVar, boolean z6, boolean z10, VisualTransformation visualTransformation, InteractionSource interactionSource, boolean z11, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, p<? super Composer, ? super Integer, l0> pVar5, TextFieldColors textFieldColors, PaddingValues paddingValues, p<? super Composer, ? super Integer, l0> pVar6, int i10, int i11, int i12) {
        super(2);
        this.$tmp0_rcvr = textFieldDefaults;
        this.$value = str;
        this.$innerTextField = pVar;
        this.$enabled = z6;
        this.$singleLine = z10;
        this.$visualTransformation = visualTransformation;
        this.$interactionSource = interactionSource;
        this.$isError = z11;
        this.$label = pVar2;
        this.$placeholder = pVar3;
        this.$leadingIcon = pVar4;
        this.$trailingIcon = pVar5;
        this.$colors = textFieldColors;
        this.$contentPadding = paddingValues;
        this.$border = pVar6;
        this.$$changed = i10;
        this.$$changed1 = i11;
        this.$$default = i12;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.b(this.$value, this.$innerTextField, this.$enabled, this.$singleLine, this.$visualTransformation, this.$interactionSource, this.$isError, this.$label, this.$placeholder, this.$leadingIcon, this.$trailingIcon, this.$colors, this.$contentPadding, this.$border, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
