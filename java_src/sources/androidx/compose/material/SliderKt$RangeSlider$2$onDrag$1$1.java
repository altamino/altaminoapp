package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import e8.l;
import e8.p;
import j8.e;
import j8.n;
import j8.o;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$RangeSlider$2$onDrag$1$1 extends v implements p<Boolean, Float, l0> {
    final /* synthetic */ m0 $maxPx;
    final /* synthetic */ m0 $minPx;
    final /* synthetic */ State<l<e<Float>, l0>> $onValueChangeState;
    final /* synthetic */ MutableState<Float> $rawOffsetEnd;
    final /* synthetic */ MutableState<Float> $rawOffsetStart;
    final /* synthetic */ e<Float> $valueRange;
    final /* synthetic */ e<Float> $values;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$RangeSlider$2$onDrag$1$1(MutableState<Float> mutableState, MutableState<Float> mutableState2, e<Float> eVar, m0 m0Var, m0 m0Var2, State<? extends l<? super e<Float>, l0>> state, e<Float> eVar2) {
        super(2);
        this.$rawOffsetStart = mutableState;
        this.$rawOffsetEnd = mutableState2;
        this.$values = eVar;
        this.$minPx = m0Var;
        this.$maxPx = m0Var2;
        this.$onValueChangeState = state;
        this.$valueRange = eVar2;
    }

    public final void a(boolean z6, float f) {
        e eVarB;
        if (z6) {
            MutableState<Float> mutableState = this.$rawOffsetStart;
            mutableState.setValue(Float.valueOf(mutableState.getValue().floatValue() + f));
            this.$rawOffsetEnd.setValue(Float.valueOf(SliderKt$RangeSlider$2.d(this.$valueRange, this.$minPx, this.$maxPx, this.$values.c().floatValue())));
            float fFloatValue = this.$rawOffsetEnd.getValue().floatValue();
            eVarB = n.b(o.m(this.$rawOffsetStart.getValue().floatValue(), this.$minPx.element, fFloatValue), fFloatValue);
        } else {
            MutableState<Float> mutableState2 = this.$rawOffsetEnd;
            mutableState2.setValue(Float.valueOf(mutableState2.getValue().floatValue() + f));
            this.$rawOffsetStart.setValue(Float.valueOf(SliderKt$RangeSlider$2.d(this.$valueRange, this.$minPx, this.$maxPx, this.$values.getStart().floatValue())));
            float fFloatValue2 = this.$rawOffsetStart.getValue().floatValue();
            eVarB = n.b(fFloatValue2, o.m(this.$rawOffsetEnd.getValue().floatValue(), fFloatValue2, this.$maxPx.element));
        }
        this.$onValueChangeState.getValue().invoke(SliderKt$RangeSlider$2.e(this.$minPx, this.$maxPx, this.$valueRange, eVarB));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Boolean bool, Float f) {
        a(bool.booleanValue(), f.floatValue());
        return l0.INSTANCE;
    }
}
