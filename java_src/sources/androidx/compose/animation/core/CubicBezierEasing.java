package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class CubicBezierEasing implements Easing {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f81a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f82b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f83c;
    private final float d;

    private final float b(float f, float f6, float f7) {
        float f10 = 3;
        float f11 = 1 - f7;
        return (f * f10 * f11 * f11 * f7) + (f10 * f6 * f11 * f7 * f7) + (f7 * f7 * f7);
    }

    @Override // androidx.compose.animation.core.Easing
    public float a(float f) {
        float f6 = 0.0f;
        if (f > 0.0f) {
            float f7 = 1.0f;
            if (f < 1.0f) {
                while (true) {
                    float f10 = (f6 + f7) / 2;
                    float fB = b(this.f81a, this.f83c, f10);
                    if (Math.abs(f - fB) < 0.001f) {
                        return b(this.f82b, this.d, f10);
                    }
                    if (fB < f) {
                        f6 = f10;
                    } else {
                        f7 = f10;
                    }
                }
            }
        }
        return f;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof CubicBezierEasing) {
            CubicBezierEasing cubicBezierEasing = (CubicBezierEasing) obj;
            if (this.f81a == cubicBezierEasing.f81a && this.f82b == cubicBezierEasing.f82b && this.f83c == cubicBezierEasing.f83c && this.d == cubicBezierEasing.d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f81a) * 31) + Float.floatToIntBits(this.f82b)) * 31) + Float.floatToIntBits(this.f83c)) * 31) + Float.floatToIntBits(this.d);
    }

    public CubicBezierEasing(float f, float f6, float f7, float f10) {
        this.f81a = f;
        this.f82b = f6;
        this.f83c = f7;
        this.d = f10;
    }
}
