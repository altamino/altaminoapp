package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class AnimationVector3D extends AnimationVector {
    public static final int $stable = 8;
    private final int size;
    private float v1;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private float f76v2;

    /* JADX INFO: renamed from: v3, reason: collision with root package name */
    private float f77v3;

    public AnimationVector3D(float f, float f6, float f7) {
        super(null);
        this.v1 = f;
        this.f76v2 = f6;
        this.f77v3 = f7;
        this.size = 3;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public float a(int i10) {
        if (i10 == 0) {
            return this.v1;
        }
        if (i10 == 1) {
            return this.f76v2;
        }
        if (i10 != 2) {
            return 0.0f;
        }
        return this.f77v3;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public int b() {
        return this.size;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void d() {
        this.v1 = 0.0f;
        this.f76v2 = 0.0f;
        this.f77v3 = 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void e(int i10, float f) {
        if (i10 == 0) {
            this.v1 = f;
        } else if (i10 == 1) {
            this.f76v2 = f;
        } else {
            if (i10 != 2) {
                return;
            }
            this.f77v3 = f;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof AnimationVector3D) {
            AnimationVector3D animationVector3D = (AnimationVector3D) obj;
            if (animationVector3D.v1 == this.v1 && animationVector3D.f76v2 == this.f76v2 && animationVector3D.f77v3 == this.f77v3) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public AnimationVector3D c() {
        return new AnimationVector3D(0.0f, 0.0f, 0.0f);
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.v1) * 31) + Float.floatToIntBits(this.f76v2)) * 31) + Float.floatToIntBits(this.f77v3);
    }

    @NotNull
    public String toString() {
        return "AnimationVector3D: v1 = " + this.v1 + ", v2 = " + this.f76v2 + ", v3 = " + this.f77v3;
    }
}
