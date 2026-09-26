package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.state.ToggleableState;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class CheckboxKt$CheckboxImpl$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ CheckboxColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ ToggleableState $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckboxKt$CheckboxImpl$2(boolean z6, ToggleableState toggleableState, Modifier modifier, CheckboxColors checkboxColors, int i10) {
        super(2);
        this.$enabled = z6;
        this.$value = toggleableState;
        this.$modifier = modifier;
        this.$colors = checkboxColors;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        CheckboxKt.b(this.$enabled, this.$value, this.$modifier, this.$colors, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
