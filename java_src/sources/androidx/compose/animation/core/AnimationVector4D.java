package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class AnimationVector4D extends AnimationVector {
    public static final int $stable = 8;
    private final int size;
    private float v1;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private float f78v2;

    /* JADX INFO: renamed from: v3, reason: collision with root package name */
    private float f79v3;

    /* JADX INFO: renamed from: v4, reason: collision with root package name */
    private float f80v4;

    public AnimationVector4D(float f, float f6, float f7, float f10) {
        super(null);
        this.v1 = f;
        this.f78v2 = f6;
        this.f79v3 = f7;
        this.f80v4 = f10;
        this.size = 4;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public float a(int i10) {
        if (i10 == 0) {
            return this.v1;
        }
        if (i10 == 1) {
            return this.f78v2;
        }
        if (i10 == 2) {
            return this.f79v3;
        }
        if (i10 != 3) {
            return 0.0f;
        }
        return this.f80v4;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public int b() {
        return this.size;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void d() {
        this.v1 = 0.0f;
        this.f78v2 = 0.0f;
        this.f79v3 = 0.0f;
        this.f80v4 = 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public void e(int i10, float f) {
        if (i10 == 0) {
            this.v1 = f;
            return;
        }
        if (i10 == 1) {
            this.f78v2 = f;
        } else if (i10 == 2) {
            this.f79v3 = f;
        } else {
            if (i10 != 3) {
                return;
            }
            this.f80v4 = f;
        }
    }

    public final float f() {
        return this.v1;
    }

    public final float g() {
        return this.f78v2;
    }

    public final float h() {
        return this.f79v3;
    }

    public final float i() {
        return this.f80v4;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof AnimationVector4D) {
            AnimationVector4D animationVector4D = (AnimationVector4D) obj;
            if (animationVector4D.v1 == this.v1 && animationVector4D.f78v2 == this.f78v2 && animationVector4D.f79v3 == this.f79v3 && animationVector4D.f80v4 == this.f80v4) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.v1) * 31) + Float.floatToIntBits(this.f78v2)) * 31) + Float.floatToIntBits(this.f79v3)) * 31) + Float.floatToIntBits(this.f80v4);
    }

    @Override // androidx.compose.animation.core.AnimationVector
    @NotNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public AnimationVector4D c() {
        return new AnimationVector4D(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @NotNull
    public String toString() {
        return "AnimationVector4D: v1 = " + this.v1 + ", v2 = " + this.f78v2 + ", v3 = " + this.f79v3 + ", v4 = " + this.f80v4;
    }
}
