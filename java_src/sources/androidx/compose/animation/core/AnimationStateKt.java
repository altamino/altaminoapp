package androidx.compose.animation.core;

import kotlin.jvm.internal.m;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class AnimationStateKt {
    @NotNull
    public static final AnimationState<Float, AnimationVector1D> a(float f, float f6, long j6, long j10, boolean z6) {
        return new AnimationState<>(VectorConvertersKt.i(m.INSTANCE), Float.valueOf(f), AnimationVectorsKt.a(f6), j6, j10, z6);
    }

    public static /* synthetic */ AnimationState b(float f, float f6, long j6, long j10, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f6 = 0.0f;
        }
        long j11 = (i10 & 4) != 0 ? Long.MIN_VALUE : j6;
        long j12 = (i10 & 8) == 0 ? j10 : Long.MIN_VALUE;
        if ((i10 & 16) != 0) {
            z6 = false;
        }
        return a(f, f6, j11, j12, z6);
    }

    @NotNull
    public static final AnimationState<Float, AnimationVector1D> c(@NotNull AnimationState<Float, AnimationVector1D> animationState, float f, float f6, long j6, long j10, boolean z6) {
        t.j(animationState, "<this>");
        return new AnimationState<>(animationState.d(), Float.valueOf(f), AnimationVectorsKt.a(f6), j6, j10, z6);
    }

    @NotNull
    public static final <T, V extends AnimationVector> AnimationState<T, V> d(@NotNull AnimationState<T, V> animationState, T t5, @Nullable V v5, long j6, long j10, boolean z6) {
        t.j(animationState, "<this>");
        return new AnimationState<>(animationState.d(), t5, v5, j6, j10, z6);
    }

    public static /* synthetic */ AnimationState e(AnimationState animationState, float f, float f6, long j6, long j10, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = ((Number) animationState.getValue()).floatValue();
        }
        if ((i10 & 2) != 0) {
            f6 = ((AnimationVector1D) animationState.f()).f();
        }
        float f7 = f6;
        if ((i10 & 4) != 0) {
            j6 = animationState.b();
        }
        long j11 = j6;
        if ((i10 & 8) != 0) {
            j10 = animationState.a();
        }
        long j12 = j10;
        if ((i10 & 16) != 0) {
            z6 = animationState.j();
        }
        return c(animationState, f, f7, j11, j12, z6);
    }

    public static /* synthetic */ AnimationState f(AnimationState animationState, Object obj, AnimationVector animationVector, long j6, long j10, boolean z6, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = animationState.getValue();
        }
        if ((i10 & 2) != 0) {
            animationVector = AnimationVectorsKt.b(animationState.f());
        }
        AnimationVector animationVector2 = animationVector;
        if ((i10 & 4) != 0) {
            j6 = animationState.b();
        }
        long j11 = j6;
        if ((i10 & 8) != 0) {
            j10 = animationState.a();
        }
        long j12 = j10;
        if ((i10 & 16) != 0) {
            z6 = animationState.j();
        }
        return d(animationState, obj, animationVector2, j11, j12, z6);
    }

    @NotNull
    public static final <T, V extends AnimationVector> V g(@NotNull TwoWayConverter<T, V> twoWayConverter, T t5) {
        t.j(twoWayConverter, "<this>");
        return (V) AnimationVectorsKt.d(twoWayConverter.a().invoke(t5));
    }
}
