package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import e8.a;
import e8.l;
import j8.e;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$CorrectValueSideEffect$1$1 extends v implements a<l0> {
    final /* synthetic */ l<Float, Float> $scaleToOffset;
    final /* synthetic */ e<Float> $trackRange;
    final /* synthetic */ float $value;
    final /* synthetic */ e<Float> $valueRange;
    final /* synthetic */ MutableState<Float> $valueState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$CorrectValueSideEffect$1$1(e<Float> eVar, l<? super Float, Float> lVar, float f, MutableState<Float> mutableState, e<Float> eVar2) {
        super(0);
        this.$valueRange = eVar;
        this.$scaleToOffset = lVar;
        this.$value = f;
        this.$valueState = mutableState;
        this.$trackRange = eVar2;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        float fFloatValue = (this.$valueRange.c().floatValue() - this.$valueRange.getStart().floatValue()) / 1000;
        float fFloatValue2 = this.$scaleToOffset.invoke(Float.valueOf(this.$value)).floatValue();
        if (Math.abs(fFloatValue2 - this.$valueState.getValue().floatValue()) <= fFloatValue || !this.$trackRange.b(this.$valueState.getValue())) {
            return;
        }
        this.$valueState.setValue(Float.valueOf(fFloatValue2));
    }
}
