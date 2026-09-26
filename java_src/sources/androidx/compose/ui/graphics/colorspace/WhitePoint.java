package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class WhitePoint {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final float f96x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final float f97y;

    public WhitePoint(float f, float f6) {
        this.f96x = f;
        this.f97y = f6;
    }

    public final float a() {
        return this.f96x;
    }

    public final float b() {
        return this.f97y;
    }

    @NotNull
    public final float[] c() {
        float f = this.f96x;
        float f6 = this.f97y;
        return new float[]{f / f6, 1.0f, ((1.0f - f) - f6) / f6};
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WhitePoint)) {
            return false;
        }
        WhitePoint whitePoint = (WhitePoint) obj;
        return t.e(Float.valueOf(this.f96x), Float.valueOf(whitePoint.f96x)) && t.e(Float.valueOf(this.f97y), Float.valueOf(whitePoint.f97y));
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f96x) * 31) + Float.floatToIntBits(this.f97y);
    }

    @NotNull
    public String toString() {
        return "WhitePoint(x=" + this.f96x + ", y=" + this.f97y + ')';
    }

    public WhitePoint(float f, float f6, float f7) {
        this(f, f6, f7, f + f6 + f7);
    }

    private WhitePoint(float f, float f6, float f7, float f10) {
        this(f / f10, f6 / f10);
    }
}
