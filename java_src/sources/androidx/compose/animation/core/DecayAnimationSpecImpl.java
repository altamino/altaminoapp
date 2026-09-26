package androidx.compose.animation.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class DecayAnimationSpecImpl<T> implements DecayAnimationSpec<T> {

    @NotNull
    private final FloatDecayAnimationSpec floatDecaySpec;

    public DecayAnimationSpecImpl(@NotNull FloatDecayAnimationSpec floatDecaySpec) {
        t.j(floatDecaySpec, "floatDecaySpec");
        this.floatDecaySpec = floatDecaySpec;
    }

    @Override // androidx.compose.animation.core.DecayAnimationSpec
    @NotNull
    public <V extends AnimationVector> VectorizedDecayAnimationSpec<V> a(@NotNull TwoWayConverter<T, V> typeConverter) {
        t.j(typeConverter, "typeConverter");
        return new VectorizedFloatDecaySpec(this.floatDecaySpec);
    }
}
