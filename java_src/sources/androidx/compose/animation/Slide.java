package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class Slide {

    @NotNull
    private final FiniteAnimationSpec<IntOffset> animationSpec;

    @NotNull
    private final l<IntSize, IntOffset> slideOffset;

    @NotNull
    public final FiniteAnimationSpec<IntOffset> a() {
        return this.animationSpec;
    }

    @NotNull
    public final l<IntSize, IntOffset> b() {
        return this.slideOffset;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Slide)) {
            return false;
        }
        Slide slide = (Slide) obj;
        return t.e(this.slideOffset, slide.slideOffset) && t.e(this.animationSpec, slide.animationSpec);
    }

    public int hashCode() {
        return (this.slideOffset.hashCode() * 31) + this.animationSpec.hashCode();
    }

    @NotNull
    public String toString() {
        return "Slide(slideOffset=" + this.slideOffset + ", animationSpec=" + this.animationSpec + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Slide(@NotNull l<? super IntSize, IntOffset> slideOffset, @NotNull FiniteAnimationSpec<IntOffset> animationSpec) {
        t.j(slideOffset, "slideOffset");
        t.j(animationSpec, "animationSpec");
        this.slideOffset = slideOffset;
        this.animationSpec = animationSpec;
    }
}
