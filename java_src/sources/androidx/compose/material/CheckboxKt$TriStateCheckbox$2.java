package androidx.compose.material;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.state.ToggleableState;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class CheckboxKt$TriStateCheckbox$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ CheckboxColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ a<l0> $onClick;
    final /* synthetic */ ToggleableState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckboxKt$TriStateCheckbox$2(ToggleableState toggleableState, a<l0> aVar, Modifier modifier, boolean z6, MutableInteractionSource mutableInteractionSource, CheckboxColors checkboxColors, int i10, int i11) {
        super(2);
        this.$state = toggleableState;
        this.$onClick = aVar;
        this.$modifier = modifier;
        this.$enabled = z6;
        this.$interactionSource = mutableInteractionSource;
        this.$colors = checkboxColors;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        CheckboxKt.h(this.$state, this.$onClick, this.$modifier, this.$enabled, this.$interactionSource, this.$colors, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
