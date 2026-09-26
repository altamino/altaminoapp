package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class AnimationVector1D extends AnimationVector {
    public static final int $stable = 8;
    private final int size;
    private float value;

    public AnimationVector1D(float f) {
        super(null);
        this.value = f;
        this.size = 1;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public float a(int i10) {
        if (i10 == 0) {
            return this.value;
        }
        return 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public int b() {
        return this.size;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void d() {
        this.value = 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void e(int i10, float f) {
        if (i10 == 0) {
            this.value = f;
        }
    }

    public final float f() {
        return this.value;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof AnimationVector1D) && ((AnimationVector1D) obj).value == this.value;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    @NotNull
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public AnimationVector1D c() {
        return new AnimationVector1D(0.0f);
    }

    public int hashCode() {
        return Float.floatToIntBits(this.value);
    }

    @NotNull
    public String toString() {
        return "AnimationVector1D: value = " + this.value;
    }
}
