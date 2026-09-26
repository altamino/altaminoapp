package androidx.compose.animation.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class DecayAnimationSpecKt {
    @NotNull
    public static final <T> DecayAnimationSpec<T> a(@NotNull FloatDecayAnimationSpec floatDecayAnimationSpec) {
        t.j(floatDecayAnimationSpec, "<this>");
        return new DecayAnimationSpecImpl(floatDecayAnimationSpec);
    }
}
