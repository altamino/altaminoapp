package androidx.compose.animation.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class g {
    public static long a(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, @NotNull AnimationVector initialValue, @NotNull AnimationVector targetValue, @NotNull AnimationVector initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return ((long) (vectorizedDurationBasedAnimationSpec.f() + vectorizedDurationBasedAnimationSpec.g())) * 1000000;
    }
}
