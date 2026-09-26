package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class ChipKt$FilterChip$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ BorderStroke $border;
    final /* synthetic */ SelectableChipColors $colors;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ a<l0> $onClick;
    final /* synthetic */ boolean $selected;
    final /* synthetic */ p<Composer, Integer, l0> $selectedIcon;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ p<Composer, Integer, l0> $trailingIcon;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ChipKt$FilterChip$4(boolean z6, a<l0> aVar, Modifier modifier, boolean z10, MutableInteractionSource mutableInteractionSource, Shape shape, BorderStroke borderStroke, SelectableChipColors selectableChipColors, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, int i10, int i11, int i12) {
        super(2);
        this.$selected = z6;
        this.$onClick = aVar;
        this.$modifier = modifier;
        this.$enabled = z10;
        this.$interactionSource = mutableInteractionSource;
        this.$shape = shape;
        this.$border = borderStroke;
        this.$colors = selectableChipColors;
        this.$leadingIcon = pVar;
        this.$selectedIcon = pVar2;
        this.$trailingIcon = pVar3;
        this.$content = qVar;
        this.$$changed = i10;
        this.$$changed1 = i11;
        this.$$default = i12;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ChipKt.c(this.$selected, this.$onClick, this.$modifier, this.$enabled, this.$interactionSource, this.$shape, this.$border, this.$colors, this.$leadingIcon, this.$selectedIcon, this.$trailingIcon, this.$content, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
