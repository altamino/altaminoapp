package androidx.compose.material;

import e8.l;
import j8.o;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class SwipeableState$draggableState$1 extends v implements l<Float, l0> {
    final /* synthetic */ SwipeableState<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwipeableState$draggableState$1(SwipeableState<T> swipeableState) {
        super(1);
        this.this$0 = swipeableState;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Float f) {
        invoke(f.floatValue());
        return l0.INSTANCE;
    }

    public final void invoke(float f) {
        float fFloatValue = ((Number) ((SwipeableState) this.this$0).absoluteOffset.getValue()).floatValue() + f;
        float fM = o.m(fFloatValue, this.this$0.s(), this.this$0.r());
        float f6 = fFloatValue - fM;
        ResistanceConfig resistanceConfigU = this.this$0.u();
        ((SwipeableState) this.this$0).offsetState.setValue(Float.valueOf(fM + (resistanceConfigU != null ? resistanceConfigU.a(f6) : 0.0f)));
        ((SwipeableState) this.this$0).overflowState.setValue(Float.valueOf(f6));
        ((SwipeableState) this.this$0).absoluteOffset.setValue(Float.valueOf(fFloatValue));
    }
}
