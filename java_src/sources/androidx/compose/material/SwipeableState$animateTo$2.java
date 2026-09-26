package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.coroutines.d;
import kotlinx.coroutines.flow.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
final class SwipeableState$animateTo$2<T> implements h<Map<Float, ? extends T>> {
    final /* synthetic */ AnimationSpec<Float> $anim;
    final /* synthetic */ T $targetValue;
    final /* synthetic */ SwipeableState<T> this$0;

    SwipeableState$animateTo$2(T t5, SwipeableState<T> swipeableState, AnimationSpec<Float> animationSpec) {
        this.$targetValue = t5;
        this.this$0 = swipeableState;
        this.$anim = animationSpec;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0082  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:48:0x0124  */
    /* JADX WARN: Code duplicated, block: B:55:0x009b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x007c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x010c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.h
    @Nullable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object emit(@NotNull Map<Float, ? extends T> map, @NotNull d<? super l0> dVar) throws Throwable {
        SwipeableState$animateTo$2$emit$1 swipeableState$animateTo$2$emit$1;
        SwipeableState$animateTo$2<T> swipeableState$animateTo$2;
        float fFloatValue;
        LinkedHashMap linkedHashMap;
        Object objK0;
        float fFloatValue2;
        LinkedHashMap linkedHashMap2;
        Object objK1;
        if (dVar instanceof SwipeableState$animateTo$2$emit$1) {
            swipeableState$animateTo$2$emit$1 = (SwipeableState$animateTo$2$emit$1) dVar;
            int i10 = swipeableState$animateTo$2$emit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                swipeableState$animateTo$2$emit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                swipeableState$animateTo$2$emit$1 = new SwipeableState$animateTo$2$emit$1(this, dVar);
            }
        } else {
            swipeableState$animateTo$2$emit$1 = new SwipeableState$animateTo$2$emit$1(this, dVar);
        }
        Object obj = swipeableState$animateTo$2$emit$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = swipeableState$animateTo$2$emit$1.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = (Map) swipeableState$animateTo$2$emit$1.L$1;
            swipeableState$animateTo$2 = (SwipeableState$animateTo$2) swipeableState$animateTo$2$emit$1.L$0;
            try {
                w.b(obj);
                fFloatValue2 = ((Number) ((SwipeableState) swipeableState$animateTo$2.this$0).absoluteOffset.getValue()).floatValue();
                linkedHashMap2 = new LinkedHashMap();
                for (Map.Entry<Float, ? extends T> entry : map.entrySet()) {
                    if (Math.abs(entry.getKey().floatValue() - fFloatValue2) < 0.5f) {
                        linkedHashMap2.put(entry.getKey(), entry.getValue());
                    }
                }
                objK1 = d0.k0(linkedHashMap2.values());
                if (objK1 == null) {
                    objK1 = swipeableState$animateTo$2.this$0.p();
                }
                swipeableState$animateTo$2.this$0.E(objK1);
                return l0.INSTANCE;
            } catch (Throwable th) {
                th = th;
                fFloatValue = ((Number) ((SwipeableState) swipeableState$animateTo$2.this$0).absoluteOffset.getValue()).floatValue();
                linkedHashMap = new LinkedHashMap();
                for (Map.Entry<Float, ? extends T> entry2 : map.entrySet()) {
                    if (Math.abs(entry2.getKey().floatValue() - fFloatValue) < 0.5f) {
                        linkedHashMap.put(entry2.getKey(), entry2.getValue());
                    }
                }
                objK0 = d0.k0(linkedHashMap.values());
                if (objK0 == null) {
                    objK0 = swipeableState$animateTo$2.this$0.p();
                }
                swipeableState$animateTo$2.this$0.E(objK0);
                throw th;
            }
        }
        w.b(obj);
        try {
            Float fE = SwipeableKt.e(map, this.$targetValue);
            if (fE == null) {
                throw new IllegalArgumentException("The target value must have an associated anchor.".toString());
            }
            SwipeableState<T> swipeableState = this.this$0;
            float fFloatValue3 = fE.floatValue();
            AnimationSpec<Float> animationSpec = this.$anim;
            swipeableState$animateTo$2$emit$1.L$0 = this;
            swipeableState$animateTo$2$emit$1.L$1 = map;
            swipeableState$animateTo$2$emit$1.label = 1;
            if (swipeableState.i(fFloatValue3, animationSpec, swipeableState$animateTo$2$emit$1) == objE) {
                return objE;
            }
            swipeableState$animateTo$2 = this;
            fFloatValue2 = ((Number) ((SwipeableState) swipeableState$animateTo$2.this$0).absoluteOffset.getValue()).floatValue();
            linkedHashMap2 = new LinkedHashMap();
            while (r7.hasNext()) {
                if (Math.abs(entry.getKey().floatValue() - fFloatValue2) < 0.5f) {
                    linkedHashMap2.put(entry.getKey(), entry.getValue());
                }
            }
            objK1 = d0.k0(linkedHashMap2.values());
            if (objK1 == null) {
                objK1 = swipeableState$animateTo$2.this$0.p();
            }
            swipeableState$animateTo$2.this$0.E(objK1);
            return l0.INSTANCE;
        } catch (Throwable th2) {
            th = th2;
            swipeableState$animateTo$2 = this;
            fFloatValue = ((Number) ((SwipeableState) swipeableState$animateTo$2.this$0).absoluteOffset.getValue()).floatValue();
            linkedHashMap = new LinkedHashMap();
            while (r7.hasNext()) {
                if (Math.abs(entry2.getKey().floatValue() - fFloatValue) < 0.5f) {
                    linkedHashMap.put(entry2.getKey(), entry2.getValue());
                }
            }
            objK0 = d0.k0(linkedHashMap.values());
            if (objK0 == null) {
                objK0 = swipeableState$animateTo$2.this$0.p();
            }
            swipeableState$animateTo$2.this$0.E(objK0);
            throw th;
        }
    }
}
