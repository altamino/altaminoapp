package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class Fade {
    private final float alpha;

    @NotNull
    private final FiniteAnimationSpec<Float> animationSpec;

    public final float a() {
        return this.alpha;
    }

    @NotNull
    public final FiniteAnimationSpec<Float> b() {
        return this.animationSpec;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fade)) {
            return false;
        }
        Fade fade = (Fade) obj;
        return t.e(Float.valueOf(this.alpha), Float.valueOf(fade.alpha)) && t.e(this.animationSpec, fade.animationSpec);
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.alpha) * 31) + this.animationSpec.hashCode();
    }

    @NotNull
    public String toString() {
        return "Fade(alpha=" + this.alpha + ", animationSpec=" + this.animationSpec + ')';
    }

    public Fade(float f, @NotNull FiniteAnimationSpec<Float> animationSpec) {
        t.j(animationSpec, "animationSpec");
        this.alpha = f;
        this.animationSpec = animationSpec;
    }
}
