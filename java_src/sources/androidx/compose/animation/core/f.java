package androidx.compose.animation.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class f {
    @NotNull
    public static AnimationVector a(VectorizedAnimationSpec vectorizedAnimationSpec, @NotNull AnimationVector initialValue, @NotNull AnimationVector targetValue, @NotNull AnimationVector initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return vectorizedAnimationSpec.c(vectorizedAnimationSpec.d(initialValue, targetValue, initialVelocity), initialValue, targetValue, initialVelocity);
    }
}
