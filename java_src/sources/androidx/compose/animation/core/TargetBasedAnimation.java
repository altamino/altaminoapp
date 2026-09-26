package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class TargetBasedAnimation<T, V extends AnimationVector> implements Animation<T, V> {
    public static final int $stable = 0;

    @NotNull
    private final VectorizedAnimationSpec<V> animationSpec;
    private final long durationNanos;

    @NotNull
    private final V endVelocity;
    private final T initialValue;

    @NotNull
    private final V initialValueVector;

    @NotNull
    private final V initialVelocityVector;
    private final T targetValue;

    @NotNull
    private final V targetValueVector;

    @NotNull
    private final TwoWayConverter<T, V> typeConverter;

    public TargetBasedAnimation(@NotNull VectorizedAnimationSpec<V> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t5, T t10, @Nullable V v5) {
        t.j(animationSpec, "animationSpec");
        t.j(typeConverter, "typeConverter");
        this.animationSpec = animationSpec;
        this.typeConverter = typeConverter;
        this.initialValue = t5;
        this.targetValue = t10;
        V vInvoke = d().a().invoke(t5);
        this.initialValueVector = vInvoke;
        V vInvoke2 = d().a().invoke(f());
        this.targetValueVector = vInvoke2;
        V v6 = (v5 == null || (v6 = (V) AnimationVectorsKt.b(v5)) == null) ? (V) AnimationVectorsKt.d(d().a().invoke(t5)) : v6;
        this.initialVelocityVector = v6;
        this.durationNanos = animationSpec.d(vInvoke, vInvoke2, v6);
        this.endVelocity = (V) animationSpec.b(vInvoke, vInvoke2, v6);
    }

    @Override // androidx.compose.animation.core.Animation
    public /* synthetic */ boolean b(long j6) {
        return a.a(this, j6);
    }

    @Override // androidx.compose.animation.core.Animation
    public long c() {
        return this.durationNanos;
    }

    @Override // androidx.compose.animation.core.Animation
    @NotNull
    public TwoWayConverter<T, V> d() {
        return this.typeConverter;
    }

    @Override // androidx.compose.animation.core.Animation
    public T f() {
        return this.targetValue;
    }

    public final T h() {
        return this.initialValue;
    }

    @Override // androidx.compose.animation.core.Animation
    public boolean a() {
        return this.animationSpec.a();
    }

    @NotNull
    public String toString() {
        return "TargetBasedAnimation: " + this.initialValue + " -> " + f() + ",initial velocity: " + this.initialVelocityVector + ", duration: " + AnimationKt.c(this) + " ms";
    }

    @Override // androidx.compose.animation.core.Animation
    public T e(long j6) {
        if (!b(j6)) {
            return (T) d().b().invoke(this.animationSpec.e(j6, this.initialValueVector, this.targetValueVector, this.initialVelocityVector));
        }
        return f();
    }

    @Override // androidx.compose.animation.core.Animation
    @NotNull
    public V g(long j6) {
        if (!b(j6)) {
            return (V) this.animationSpec.c(j6, this.initialValueVector, this.targetValueVector, this.initialVelocityVector);
        }
        return this.endVelocity;
    }

    public /* synthetic */ TargetBasedAnimation(VectorizedAnimationSpec vectorizedAnimationSpec, TwoWayConverter twoWayConverter, Object obj, Object obj2, AnimationVector animationVector, int i10, k kVar) {
        this((VectorizedAnimationSpec<AnimationVector>) vectorizedAnimationSpec, (TwoWayConverter<Object, AnimationVector>) twoWayConverter, obj, obj2, (i10 & 16) != 0 ? null : animationVector);
    }

    public /* synthetic */ TargetBasedAnimation(AnimationSpec animationSpec, TwoWayConverter twoWayConverter, Object obj, Object obj2, AnimationVector animationVector, int i10, k kVar) {
        this((AnimationSpec<Object>) animationSpec, (TwoWayConverter<Object, AnimationVector>) twoWayConverter, obj, obj2, (i10 & 16) != 0 ? null : animationVector);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TargetBasedAnimation(@NotNull AnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t5, T t10, @Nullable V v5) {
        this(animationSpec.a(typeConverter), typeConverter, t5, t10, v5);
        t.j(animationSpec, "animationSpec");
        t.j(typeConverter, "typeConverter");
    }
}
