package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class SpringSpec<T> implements FiniteAnimationSpec<T> {
    private final float dampingRatio;
    private final float stiffness;

    @Nullable
    private final T visibilityThreshold;

    public SpringSpec() {
        this(0.0f, 0.0f, null, 7, null);
    }

    public SpringSpec(float f, float f6, @Nullable T t5) {
        this.dampingRatio = f;
        this.stiffness = f6;
        this.visibilityThreshold = t5;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SpringSpec)) {
            return false;
        }
        SpringSpec springSpec = (SpringSpec) obj;
        return springSpec.dampingRatio == this.dampingRatio && springSpec.stiffness == this.stiffness && t.e(springSpec.visibilityThreshold, this.visibilityThreshold);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public <V extends AnimationVector> VectorizedSpringSpec<V> a(@NotNull TwoWayConverter<T, V> converter) {
        t.j(converter, "converter");
        return new VectorizedSpringSpec<>(this.dampingRatio, this.stiffness, AnimationSpecKt.b(converter, this.visibilityThreshold));
    }

    public int hashCode() {
        T t5 = this.visibilityThreshold;
        return ((((t5 != null ? t5.hashCode() : 0) * 31) + Float.floatToIntBits(this.dampingRatio)) * 31) + Float.floatToIntBits(this.stiffness);
    }

    public /* synthetic */ SpringSpec(float f, float f6, Object obj, int i10, k kVar) {
        this((i10 & 1) != 0 ? 1.0f : f, (i10 & 2) != 0 ? 1500.0f : f6, (i10 & 4) != 0 ? null : obj);
    }
}
