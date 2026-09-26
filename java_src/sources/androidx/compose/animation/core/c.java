package androidx.compose.animation.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class c {
    @NotNull
    public static VectorizedFloatAnimationSpec c(FloatAnimationSpec floatAnimationSpec, @NotNull TwoWayConverter converter) {
        t.j(converter, "converter");
        return new VectorizedFloatAnimationSpec(floatAnimationSpec);
    }

    public static float a(FloatAnimationSpec floatAnimationSpec, float f, float f6, float f7) {
        return floatAnimationSpec.b(floatAnimationSpec.c(f, f6, f7), f, f6, f7);
    }
}
