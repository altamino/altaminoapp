package androidx.compose.animation.core;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public interface FloatAnimationSpec extends AnimationSpec<Float> {

    public static final class DefaultImpls {
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    @NotNull
    <V extends AnimationVector> VectorizedFloatAnimationSpec<V> a(@NotNull TwoWayConverter<Float, V> twoWayConverter);

    float b(long j6, float f, float f6, float f7);

    long c(float f, float f6, float f7);

    float d(float f, float f6, float f7);

    float e(long j6, float f, float f6, float f7);
}
