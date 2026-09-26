package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import e8.l;
import j8.e;
import j8.o;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$Slider$3$draggableState$1$1 extends v implements l<Float, l0> {
    final /* synthetic */ m0 $maxPx;
    final /* synthetic */ m0 $minPx;
    final /* synthetic */ State<l<Float, l0>> $onValueChangeState;
    final /* synthetic */ MutableState<Float> $pressOffset;
    final /* synthetic */ MutableState<Float> $rawOffset;
    final /* synthetic */ e<Float> $valueRange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$Slider$3$draggableState$1$1(MutableState<Float> mutableState, MutableState<Float> mutableState2, m0 m0Var, m0 m0Var2, State<? extends l<? super Float, l0>> state, e<Float> eVar) {
        super(1);
        this.$rawOffset = mutableState;
        this.$pressOffset = mutableState2;
        this.$minPx = m0Var;
        this.$maxPx = m0Var2;
        this.$onValueChangeState = state;
        this.$valueRange = eVar;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Float f) {
        invoke(f.floatValue());
        return l0.INSTANCE;
    }

    public final void invoke(float f) {
        MutableState<Float> mutableState = this.$rawOffset;
        mutableState.setValue(Float.valueOf(mutableState.getValue().floatValue() + f + this.$pressOffset.getValue().floatValue()));
        this.$pressOffset.setValue(Float.valueOf(0.0f));
        this.$onValueChangeState.getValue().invoke(Float.valueOf(SliderKt$Slider$3.e(this.$minPx, this.$maxPx, this.$valueRange, o.m(this.$rawOffset.getValue().floatValue(), this.$minPx.element, this.$maxPx.element))));
    }
}
