package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class DecayAnimation<T, V extends AnimationVector> implements Animation<T, V> {
    public static final int $stable = 0;

    @NotNull
    private final VectorizedDecayAnimationSpec<V> animationSpec;
    private final long durationNanos;

    @NotNull
    private final V endVelocity;
    private final T initialValue;

    @NotNull
    private final V initialValueVector;

    @NotNull
    private final V initialVelocityVector;
    private final boolean isInfinite;
    private final T targetValue;

    @NotNull
    private final TwoWayConverter<T, V> typeConverter;

    public DecayAnimation(@NotNull VectorizedDecayAnimationSpec<V> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t5, @NotNull V initialVelocityVector) {
        t.j(animationSpec, "animationSpec");
        t.j(typeConverter, "typeConverter");
        t.j(initialVelocityVector, "initialVelocityVector");
        this.animationSpec = animationSpec;
        this.typeConverter = typeConverter;
        this.initialValue = t5;
        V vInvoke = d().a().invoke(t5);
        this.initialValueVector = vInvoke;
        this.initialVelocityVector = (V) AnimationVectorsKt.b(initialVelocityVector);
        this.targetValue = (T) d().b().invoke(animationSpec.d(vInvoke, initialVelocityVector));
        this.durationNanos = animationSpec.c(vInvoke, initialVelocityVector);
        V v5 = (V) AnimationVectorsKt.b(animationSpec.b(c(), vInvoke, initialVelocityVector));
        this.endVelocity = v5;
        int iB = v5.b();
        for (int i10 = 0; i10 < iB; i10++) {
            V v6 = this.endVelocity;
            v6.e(i10, o.m(v6.a(i10), -this.animationSpec.a(), this.animationSpec.a()));
        }
    }

    @Override // androidx.compose.animation.core.Animation
    public boolean a() {
        return this.isInfinite;
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

    @Override // androidx.compose.animation.core.Animation
    public T e(long j6) {
        if (!b(j6)) {
            return (T) d().b().invoke(this.animationSpec.e(j6, this.initialValueVector, this.initialVelocityVector));
        }
        return f();
    }

    @Override // androidx.compose.animation.core.Animation
    @NotNull
    public V g(long j6) {
        if (!b(j6)) {
            return (V) this.animationSpec.b(j6, this.initialValueVector, this.initialVelocityVector);
        }
        return this.endVelocity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DecayAnimation(@NotNull DecayAnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t5, @NotNull V initialVelocityVector) {
        this(animationSpec.a(typeConverter), typeConverter, t5, initialVelocityVector);
        t.j(animationSpec, "animationSpec");
        t.j(typeConverter, "typeConverter");
        t.j(initialVelocityVector, "initialVelocityVector");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DecayAnimation(@NotNull DecayAnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t5, T t10) {
        this(animationSpec.a(typeConverter), typeConverter, t5, typeConverter.a().invoke(t10));
        t.j(animationSpec, "animationSpec");
        t.j(typeConverter, "typeConverter");
    }
}
