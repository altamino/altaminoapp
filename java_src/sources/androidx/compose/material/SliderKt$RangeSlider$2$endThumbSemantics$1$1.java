package androidx.compose.material;

import androidx.compose.runtime.State;
import e8.l;
import j8.e;
import j8.n;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$RangeSlider$2$endThumbSemantics$1$1 extends v implements l<Float, l0> {
    final /* synthetic */ float $coercedStart;
    final /* synthetic */ State<l<e<Float>, l0>> $onValueChangeState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$RangeSlider$2$endThumbSemantics$1$1(State<? extends l<? super e<Float>, l0>> state, float f) {
        super(1);
        this.$onValueChangeState = state;
        this.$coercedStart = f;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Float f) {
        invoke(f.floatValue());
        return l0.INSTANCE;
    }

    public final void invoke(float f) {
        this.$onValueChangeState.getValue().invoke(n.b(this.$coercedStart, f));
    }
}
