package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.u;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class VectorizedKeyframesSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {
    public static final int $stable = 8;
    private final int delayMillis;
    private final int durationMillis;

    @NotNull
    private final Map<Integer, u<V, Easing>> keyframes;
    private V valueVector;
    private V velocityVector;

    /* JADX WARN: Multi-variable type inference failed */
    public VectorizedKeyframesSpec(@NotNull Map<Integer, ? extends u<? extends V, ? extends Easing>> keyframes, int i10, int i11) {
        t.j(keyframes, "keyframes");
        this.keyframes = keyframes;
        this.durationMillis = i10;
        this.delayMillis = i11;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ boolean a() {
        return h.a(this);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ AnimationVector b(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return f.a(this, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ long d(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return g.a(this, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int f() {
        return this.delayMillis;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int g() {
        return this.durationMillis;
    }

    public /* synthetic */ VectorizedKeyframesSpec(Map map, int i10, int i11, int i12, k kVar) {
        this(map, i10, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void h(V v5) {
        if (this.valueVector == null) {
            this.valueVector = (V) AnimationVectorsKt.d(v5);
            this.velocityVector = (V) AnimationVectorsKt.d(v5);
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V c(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        long jC = VectorizedAnimationSpecKt.c(this, j6 / 1000000);
        if (jC <= 0) {
            return initialVelocity;
        }
        AnimationVector animationVectorE = VectorizedAnimationSpecKt.e(this, jC - 1, initialValue, targetValue, initialVelocity);
        AnimationVector animationVectorE2 = VectorizedAnimationSpecKt.e(this, jC, initialValue, targetValue, initialVelocity);
        h(initialValue);
        int iB = animationVectorE.b();
        int i10 = 0;
        while (true) {
            V v5 = null;
            if (i10 >= iB) {
                break;
            }
            V v6 = this.velocityVector;
            if (v6 == null) {
                t.B("velocityVector");
            } else {
                v5 = v6;
            }
            v5.e(i10, (animationVectorE.a(i10) - animationVectorE2.a(i10)) * 1000.0f);
            i10++;
        }
        V v10 = this.velocityVector;
        if (v10 != null) {
            return v10;
        }
        t.B("velocityVector");
        return null;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V e(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        int iC = (int) VectorizedAnimationSpecKt.c(this, j6 / 1000000);
        if (this.keyframes.containsKey(Integer.valueOf(iC))) {
            return (V) ((u) s0.i(this.keyframes, Integer.valueOf(iC))).c();
        }
        if (iC >= g()) {
            return targetValue;
        }
        if (iC <= 0) {
            return initialValue;
        }
        int iG = g();
        Easing easingB = EasingKt.b();
        int i10 = 0;
        V vC = initialValue;
        int i11 = 0;
        for (Map.Entry<Integer, u<V, Easing>> entry : this.keyframes.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            u<V, Easing> value = entry.getValue();
            if (iC > iIntValue && iIntValue >= i11) {
                vC = value.c();
                easingB = value.d();
                i11 = iIntValue;
            } else if (iC < iIntValue && iIntValue <= iG) {
                targetValue = value.c();
                iG = iIntValue;
            }
        }
        float fA = easingB.a((iC - i11) / (iG - i11));
        h(initialValue);
        int iB = vC.b();
        while (true) {
            V v5 = null;
            if (i10 >= iB) {
                break;
            }
            V v6 = this.valueVector;
            if (v6 == null) {
                t.B("valueVector");
            } else {
                v5 = v6;
            }
            v5.e(i10, VectorConvertersKt.k(vC.a(i10), targetValue.a(i10), fA));
            i10++;
        }
        V v10 = this.valueVector;
        if (v10 != null) {
            return v10;
        }
        t.B("valueVector");
        return null;
    }
}
