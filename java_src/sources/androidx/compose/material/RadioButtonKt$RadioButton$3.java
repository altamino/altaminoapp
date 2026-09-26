package androidx.compose.material;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class RadioButtonKt$RadioButton$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ RadioButtonColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ a<l0> $onClick;
    final /* synthetic */ boolean $selected;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RadioButtonKt$RadioButton$3(boolean z6, a<l0> aVar, Modifier modifier, boolean z10, MutableInteractionSource mutableInteractionSource, RadioButtonColors radioButtonColors, int i10, int i11) {
        super(2);
        this.$selected = z6;
        this.$onClick = aVar;
        this.$modifier = modifier;
        this.$enabled = z10;
        this.$interactionSource = mutableInteractionSource;
        this.$colors = radioButtonColors;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        RadioButtonKt.a(this.$selected, this.$onClick, this.$modifier, this.$enabled, this.$interactionSource, this.$colors, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
