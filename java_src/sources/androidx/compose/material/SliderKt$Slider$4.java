package androidx.compose.material;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.a;
import e8.l;
import e8.p;
import j8.e;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$Slider$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ SliderColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<Float, l0> $onValueChange;
    final /* synthetic */ a<l0> $onValueChangeFinished;
    final /* synthetic */ int $steps;
    final /* synthetic */ float $value;
    final /* synthetic */ e<Float> $valueRange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$Slider$4(float f, l<? super Float, l0> lVar, Modifier modifier, boolean z6, e<Float> eVar, int i10, a<l0> aVar, MutableInteractionSource mutableInteractionSource, SliderColors sliderColors, int i11, int i12) {
        super(2);
        this.$value = f;
        this.$onValueChange = lVar;
        this.$modifier = modifier;
        this.$enabled = z6;
        this.$valueRange = eVar;
        this.$steps = i10;
        this.$onValueChangeFinished = aVar;
        this.$interactionSource = mutableInteractionSource;
        this.$colors = sliderColors;
        this.$$changed = i11;
        this.$$default = i12;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SliderKt.d(this.$value, this.$onValueChange, this.$modifier, this.$enabled, this.$valueRange, this.$steps, this.$onValueChangeFinished, this.$interactionSource, this.$colors, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
