package androidx.compose.material;

import java.util.Map;
import kotlin.coroutines.d;
import kotlinx.coroutines.flow.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
final class SwipeableState$snapTo$2 implements h<Map<Float, Object>> {
    final /* synthetic */ Object $targetValue;
    final /* synthetic */ SwipeableState<Object> this$0;

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.h
    @Nullable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object emit(@NotNull Map<Float, Object> map, @NotNull d<? super l0> dVar) {
        SwipeableState$snapTo$2$emit$1 swipeableState$snapTo$2$emit$1;
        SwipeableState$snapTo$2 swipeableState$snapTo$2;
        if (dVar instanceof SwipeableState$snapTo$2$emit$1) {
            swipeableState$snapTo$2$emit$1 = (SwipeableState$snapTo$2$emit$1) dVar;
            int i10 = swipeableState$snapTo$2$emit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                swipeableState$snapTo$2$emit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                swipeableState$snapTo$2$emit$1 = new SwipeableState$snapTo$2$emit$1(this, dVar);
            }
        } else {
            swipeableState$snapTo$2$emit$1 = new SwipeableState$snapTo$2$emit$1(this, dVar);
        }
        Object obj = swipeableState$snapTo$2$emit$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = swipeableState$snapTo$2$emit$1.label;
        if (i11 == 0) {
            w.b(obj);
            Float fE = SwipeableKt.e(map, this.$targetValue);
            if (fE == null) {
                throw new IllegalArgumentException("The target value must have an associated anchor.".toString());
            }
            SwipeableState<Object> swipeableState = this.this$0;
            float fFloatValue = fE.floatValue();
            swipeableState$snapTo$2$emit$1.L$0 = this;
            swipeableState$snapTo$2$emit$1.label = 1;
            if (swipeableState.I(fFloatValue, swipeableState$snapTo$2$emit$1) == objE) {
                return objE;
            }
            swipeableState$snapTo$2 = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            swipeableState$snapTo$2 = (SwipeableState$snapTo$2) swipeableState$snapTo$2$emit$1.L$0;
            w.b(obj);
        }
        swipeableState$snapTo$2.this$0.E(swipeableState$snapTo$2.$targetValue);
        return l0.INSTANCE;
    }
}
