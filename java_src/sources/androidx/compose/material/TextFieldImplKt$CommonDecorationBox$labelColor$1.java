package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldImplKt$CommonDecorationBox$labelColor$1 extends v implements q<InputPhase, Composer, Integer, Color> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ TextFieldColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ InteractionSource $interactionSource;
    final /* synthetic */ boolean $isError;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldImplKt$CommonDecorationBox$labelColor$1(TextFieldColors textFieldColors, boolean z6, boolean z10, InteractionSource interactionSource, int i10, int i11) {
        super(3);
        this.$colors = textFieldColors;
        this.$enabled = z6;
        this.$isError = z10;
        this.$interactionSource = interactionSource;
        this.$$dirty = i10;
        this.$$dirty1 = i11;
    }

    @Composable
    public final long a(@NotNull InputPhase it, @Nullable Composer composer, int i10) {
        t.j(it, "it");
        composer.G(697243846);
        TextFieldColors textFieldColors = this.$colors;
        boolean z6 = this.$enabled;
        boolean z10 = it == InputPhase.UnfocusedEmpty ? false : this.$isError;
        InteractionSource interactionSource = this.$interactionSource;
        int i11 = (this.$$dirty >> 27) & 14;
        int i12 = this.$$dirty1;
        long jV = textFieldColors.g(z6, z10, interactionSource, composer, i11 | ((i12 << 3) & 896) | (i12 & 7168)).getValue().v();
        composer.Q();
        return jV;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Color invoke(InputPhase inputPhase, Composer composer, Integer num) {
        return Color.h(a(inputPhase, composer, num.intValue()));
    }
}
