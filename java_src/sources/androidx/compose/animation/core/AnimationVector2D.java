package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class AnimationVector2D extends AnimationVector {
    public static final int $stable = 8;
    private final int size;
    private float v1;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private float f75v2;

    public AnimationVector2D(float f, float f6) {
        super(null);
        this.v1 = f;
        this.f75v2 = f6;
        this.size = 2;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public float a(int i10) {
        if (i10 == 0) {
            return this.v1;
        }
        if (i10 != 1) {
            return 0.0f;
        }
        return this.f75v2;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public int b() {
        return this.size;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void d() {
        this.v1 = 0.0f;
        this.f75v2 = 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void e(int i10, float f) {
        if (i10 == 0) {
            this.v1 = f;
        } else {
            if (i10 != 1) {
                return;
            }
            this.f75v2 = f;
        }
    }

    public final float f() {
        return this.v1;
    }

    public final float g() {
        return this.f75v2;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof AnimationVector2D) {
            AnimationVector2D animationVector2D = (AnimationVector2D) obj;
            if (animationVector2D.v1 == this.v1 && animationVector2D.f75v2 == this.f75v2) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    @NotNull
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public AnimationVector2D c() {
        return new AnimationVector2D(0.0f, 0.0f);
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.v1) * 31) + Float.floatToIntBits(this.f75v2);
    }

    @NotNull
    public String toString() {
        return "AnimationVector2D: v1 = " + this.v1 + ", v2 = " + this.f75v2;
    }
}
