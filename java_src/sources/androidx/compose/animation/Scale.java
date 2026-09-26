package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.TransformOrigin;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@Immutable
public final class Scale {

    @NotNull
    private final FiniteAnimationSpec<Float> animationSpec;
    private final float scale;
    private final long transformOrigin;

    public /* synthetic */ Scale(float f, long j6, FiniteAnimationSpec finiteAnimationSpec, k kVar) {
        this(f, j6, finiteAnimationSpec);
    }

    @NotNull
    public final FiniteAnimationSpec<Float> a() {
        return this.animationSpec;
    }

    public final float b() {
        return this.scale;
    }

    public final long c() {
        return this.transformOrigin;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scale)) {
            return false;
        }
        Scale scale = (Scale) obj;
        return t.e(Float.valueOf(this.scale), Float.valueOf(scale.scale)) && TransformOrigin.e(this.transformOrigin, scale.transformOrigin) && t.e(this.animationSpec, scale.animationSpec);
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.scale) * 31) + TransformOrigin.h(this.transformOrigin)) * 31) + this.animationSpec.hashCode();
    }

    @NotNull
    public String toString() {
        return "Scale(scale=" + this.scale + ", transformOrigin=" + ((Object) TransformOrigin.i(this.transformOrigin)) + ", animationSpec=" + this.animationSpec + ')';
    }

    private Scale(float f, long j6, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.scale = f;
        this.transformOrigin = j6;
        this.animationSpec = finiteAnimationSpec;
    }
}
