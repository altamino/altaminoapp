package androidx.compose.animation.core;

import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class AnimatableKt {
    @NotNull
    public static final Animatable<Float, AnimationVector1D> a(float f, float f6) {
        return new Animatable<>(Float.valueOf(f), VectorConvertersKt.i(m.INSTANCE), Float.valueOf(f6));
    }

    public static /* synthetic */ Animatable b(float f, float f6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f6 = 0.01f;
        }
        return a(f, f6);
    }
}
