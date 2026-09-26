package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class SwitchKt$SwitchImpl$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ boolean $checked;
    final /* synthetic */ SwitchColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ InteractionSource $interactionSource;
    final /* synthetic */ BoxScope $this_SwitchImpl;
    final /* synthetic */ State<Float> $thumbValue;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwitchKt$SwitchImpl$4(BoxScope boxScope, boolean z6, boolean z10, SwitchColors switchColors, State<Float> state, InteractionSource interactionSource, int i10) {
        super(2);
        this.$this_SwitchImpl = boxScope;
        this.$checked = z6;
        this.$enabled = z10;
        this.$colors = switchColors;
        this.$thumbValue = state;
        this.$interactionSource = interactionSource;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SwitchKt.b(this.$this_SwitchImpl, this.$checked, this.$enabled, this.$colors, this.$thumbValue, this.$interactionSource, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
