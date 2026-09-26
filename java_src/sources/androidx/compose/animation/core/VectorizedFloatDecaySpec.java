package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class VectorizedFloatDecaySpec<V extends AnimationVector> implements VectorizedDecayAnimationSpec<V> {
    private final float absVelocityThreshold;

    @NotNull
    private final FloatDecayAnimationSpec floatDecaySpec;
    private V targetVector;
    private V valueVector;
    private V velocityVector;

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public float a() {
        return this.absVelocityThreshold;
    }

    public VectorizedFloatDecaySpec(@NotNull FloatDecayAnimationSpec floatDecaySpec) {
        t.j(floatDecaySpec, "floatDecaySpec");
        this.floatDecaySpec = floatDecaySpec;
        this.absVelocityThreshold = floatDecaySpec.a();
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    @NotNull
    public V b(long j6, @NotNull V initialValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(initialVelocity, "initialVelocity");
        if (this.velocityVector == null) {
            this.velocityVector = (V) AnimationVectorsKt.d(initialValue);
        }
        V v5 = this.velocityVector;
        if (v5 == null) {
            t.B("velocityVector");
            v5 = null;
        }
        int iB = v5.b();
        for (int i10 = 0; i10 < iB; i10++) {
            V v6 = this.velocityVector;
            if (v6 == null) {
                t.B("velocityVector");
                v6 = null;
            }
            v6.e(i10, this.floatDecaySpec.b(j6, initialValue.a(i10), initialVelocity.a(i10)));
        }
        V v10 = this.velocityVector;
        if (v10 != null) {
            return v10;
        }
        t.B("velocityVector");
        return null;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public long c(@NotNull V initialValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(initialVelocity, "initialVelocity");
        if (this.velocityVector == null) {
            this.velocityVector = (V) AnimationVectorsKt.d(initialValue);
        }
        V v5 = this.velocityVector;
        if (v5 == null) {
            t.B("velocityVector");
            v5 = null;
        }
        int iB = v5.b();
        long jMax = 0;
        for (int i10 = 0; i10 < iB; i10++) {
            jMax = Math.max(jMax, this.floatDecaySpec.c(initialValue.a(i10), initialVelocity.a(i10)));
        }
        return jMax;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    @NotNull
    public V d(@NotNull V initialValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(initialVelocity, "initialVelocity");
        if (this.targetVector == null) {
            this.targetVector = (V) AnimationVectorsKt.d(initialValue);
        }
        V v5 = this.targetVector;
        if (v5 == null) {
            t.B("targetVector");
            v5 = null;
        }
        int iB = v5.b();
        for (int i10 = 0; i10 < iB; i10++) {
            V v6 = this.targetVector;
            if (v6 == null) {
                t.B("targetVector");
                v6 = null;
            }
            v6.e(i10, this.floatDecaySpec.d(initialValue.a(i10), initialVelocity.a(i10)));
        }
        V v10 = this.targetVector;
        if (v10 != null) {
            return v10;
        }
        t.B("targetVector");
        return null;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    @NotNull
    public V e(long j6, @NotNull V initialValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(initialVelocity, "initialVelocity");
        if (this.valueVector == null) {
            this.valueVector = (V) AnimationVectorsKt.d(initialValue);
        }
        V v5 = this.valueVector;
        if (v5 == null) {
            t.B("valueVector");
            v5 = null;
        }
        int iB = v5.b();
        for (int i10 = 0; i10 < iB; i10++) {
            V v6 = this.valueVector;
            if (v6 == null) {
                t.B("valueVector");
                v6 = null;
            }
            v6.e(i10, this.floatDecaySpec.e(j6, initialValue.a(i10), initialVelocity.a(i10)));
        }
        V v10 = this.valueVector;
        if (v10 != null) {
            return v10;
        }
        t.B("valueVector");
        return null;
    }
}
