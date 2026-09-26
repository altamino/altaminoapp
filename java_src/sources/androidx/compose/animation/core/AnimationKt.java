package androidx.compose.animation.core;

import kotlin.jvm.internal.m;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class AnimationKt {
    public static final long MillisToNanos = 1000000;

    @NotNull
    public static final DecayAnimation<Float, AnimationVector1D> a(@NotNull FloatDecayAnimationSpec animationSpec, float f, float f6) {
        t.j(animationSpec, "animationSpec");
        return new DecayAnimation<>((DecayAnimationSpec<Float>) DecayAnimationSpecKt.a(animationSpec), VectorConvertersKt.i(m.INSTANCE), Float.valueOf(f), AnimationVectorsKt.a(f6));
    }

    @NotNull
    public static final <T, V extends AnimationVector> TargetBasedAnimation<T, V> b(@NotNull AnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, T t5, T t10, T t11) {
        t.j(animationSpec, "animationSpec");
        t.j(typeConverter, "typeConverter");
        return new TargetBasedAnimation<>(animationSpec, typeConverter, t5, t10, typeConverter.a().invoke(t11));
    }

    public static final long c(@NotNull Animation<?, ?> animation) {
        t.j(animation, "<this>");
        return animation.c() / 1000000;
    }
}
