package androidx.compose.material;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class TextFieldKt$TextField$5 extends v implements q<p<? super Composer, ? super Integer, ? extends l0>, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ TextFieldColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ boolean $isError;
    final /* synthetic */ p<Composer, Integer, l0> $label;
    final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;
    final /* synthetic */ p<Composer, Integer, l0> $placeholder;
    final /* synthetic */ boolean $singleLine;
    final /* synthetic */ p<Composer, Integer, l0> $trailingIcon;
    final /* synthetic */ TextFieldValue $value;
    final /* synthetic */ VisualTransformation $visualTransformation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldKt$TextField$5(TextFieldValue textFieldValue, boolean z6, boolean z10, VisualTransformation visualTransformation, MutableInteractionSource mutableInteractionSource, boolean z11, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, TextFieldColors textFieldColors, int i10, int i11) {
        super(3);
        this.$value = textFieldValue;
        this.$enabled = z6;
        this.$singleLine = z10;
        this.$visualTransformation = visualTransformation;
        this.$interactionSource = mutableInteractionSource;
        this.$isError = z11;
        this.$label = pVar;
        this.$placeholder = pVar2;
        this.$leadingIcon = pVar3;
        this.$trailingIcon = pVar4;
        this.$colors = textFieldColors;
        this.$$dirty = i10;
        this.$$dirty1 = i11;
    }

    @Composable
    @ComposableInferredTarget
    public final void a(@NotNull p<? super Composer, ? super Integer, l0> innerTextField, @Nullable Composer composer, int i10) {
        int i11;
        t.j(innerTextField, "innerTextField");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.k(innerTextField) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.b()) {
            composer.g();
            return;
        }
        TextFieldDefaults textFieldDefaults = TextFieldDefaults.INSTANCE;
        String strH = this.$value.h();
        boolean z6 = this.$enabled;
        boolean z10 = this.$singleLine;
        VisualTransformation visualTransformation = this.$visualTransformation;
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        boolean z11 = this.$isError;
        p<Composer, Integer, l0> pVar = this.$label;
        p<Composer, Integer, l0> pVar2 = this.$placeholder;
        p<Composer, Integer, l0> pVar3 = this.$leadingIcon;
        p<Composer, Integer, l0> pVar4 = this.$trailingIcon;
        TextFieldColors textFieldColors = this.$colors;
        int i12 = this.$$dirty;
        int i13 = this.$$dirty1;
        textFieldDefaults.c(strH, innerTextField, z6, z10, visualTransformation, mutableInteractionSource, z11, pVar, pVar2, pVar3, pVar4, textFieldColors, null, composer, ((i13 >> 3) & 7168) | ((i11 << 3) & 112) | ((i12 >> 3) & 896) | ((i13 << 9) & 57344) | ((i13 >> 3) & 458752) | ((i13 << 18) & 3670016) | ((i12 << 3) & 29360128) | ((i12 << 3) & 234881024) | ((i12 << 3) & 1879048192), ((i12 >> 27) & 14) | 3072 | ((i13 >> 21) & 112), 4096);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(p<? super Composer, ? super Integer, ? extends l0> pVar, Composer composer, Integer num) {
        a(pVar, composer, num.intValue());
        return l0.INSTANCE;
    }
}
