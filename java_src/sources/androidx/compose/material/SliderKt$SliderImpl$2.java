package androidx.compose.material;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$SliderImpl$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ SliderColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ float $positionFraction;
    final /* synthetic */ List<Float> $tickFractions;
    final /* synthetic */ float $width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SliderKt$SliderImpl$2(boolean z6, float f, List<Float> list, SliderColors sliderColors, float f6, MutableInteractionSource mutableInteractionSource, Modifier modifier, int i10) {
        super(2);
        this.$enabled = z6;
        this.$positionFraction = f;
        this.$tickFractions = list;
        this.$colors = sliderColors;
        this.$width = f6;
        this.$interactionSource = mutableInteractionSource;
        this.$modifier = modifier;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SliderKt.e(this.$enabled, this.$positionFraction, this.$tickFractions, this.$colors, this.$width, this.$interactionSource, this.$modifier, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
