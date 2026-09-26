package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class RoundRect {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final RoundRect Zero = RoundRectKt.c(0.0f, 0.0f, 0.0f, 0.0f, CornerRadius.Companion.a());

    @Nullable
    private RoundRect _scaledRadiiRect;
    private final float bottom;
    private final long bottomLeftCornerRadius;
    private final long bottomRightCornerRadius;
    private final float left;
    private final float right;
    private final float top;
    private final long topLeftCornerRadius;
    private final long topRightCornerRadius;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ RoundRect(float f, float f6, float f7, float f10, long j6, long j10, long j11, long j12, k kVar) {
        this(f, f6, f7, f10, j6, j10, j11, j12);
    }

    public final float a() {
        return this.bottom;
    }

    public final long b() {
        return this.bottomLeftCornerRadius;
    }

    public final long c() {
        return this.bottomRightCornerRadius;
    }

    public final float d() {
        return this.bottom - this.top;
    }

    public final float e() {
        return this.left;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundRect)) {
            return false;
        }
        RoundRect roundRect = (RoundRect) obj;
        return t.e(Float.valueOf(this.left), Float.valueOf(roundRect.left)) && t.e(Float.valueOf(this.top), Float.valueOf(roundRect.top)) && t.e(Float.valueOf(this.right), Float.valueOf(roundRect.right)) && t.e(Float.valueOf(this.bottom), Float.valueOf(roundRect.bottom)) && CornerRadius.d(this.topLeftCornerRadius, roundRect.topLeftCornerRadius) && CornerRadius.d(this.topRightCornerRadius, roundRect.topRightCornerRadius) && CornerRadius.d(this.bottomRightCornerRadius, roundRect.bottomRightCornerRadius) && CornerRadius.d(this.bottomLeftCornerRadius, roundRect.bottomLeftCornerRadius);
    }

    public final float f() {
        return this.right;
    }

    public final float g() {
        return this.top;
    }

    public final long h() {
        return this.topLeftCornerRadius;
    }

    public int hashCode() {
        return (((((((((((((Float.floatToIntBits(this.left) * 31) + Float.floatToIntBits(this.top)) * 31) + Float.floatToIntBits(this.right)) * 31) + Float.floatToIntBits(this.bottom)) * 31) + CornerRadius.g(this.topLeftCornerRadius)) * 31) + CornerRadius.g(this.topRightCornerRadius)) * 31) + CornerRadius.g(this.bottomRightCornerRadius)) * 31) + CornerRadius.g(this.bottomLeftCornerRadius);
    }

    public final long i() {
        return this.topRightCornerRadius;
    }

    public final float j() {
        return this.right - this.left;
    }

    private RoundRect(float f, float f6, float f7, float f10, long j6, long j10, long j11, long j12) {
        this.left = f;
        this.top = f6;
        this.right = f7;
        this.bottom = f10;
        this.topLeftCornerRadius = j6;
        this.topRightCornerRadius = j10;
        this.bottomRightCornerRadius = j11;
        this.bottomLeftCornerRadius = j12;
    }

    @NotNull
    public String toString() {
        long j6 = this.topLeftCornerRadius;
        long j10 = this.topRightCornerRadius;
        long j11 = this.bottomRightCornerRadius;
        long j12 = this.bottomLeftCornerRadius;
        String str = GeometryUtilsKt.a(this.left, 1) + ", " + GeometryUtilsKt.a(this.top, 1) + ", " + GeometryUtilsKt.a(this.right, 1) + ", " + GeometryUtilsKt.a(this.bottom, 1);
        if (!CornerRadius.d(j6, j10) || !CornerRadius.d(j10, j11) || !CornerRadius.d(j11, j12)) {
            return "RoundRect(rect=" + str + ", topLeft=" + ((Object) CornerRadius.h(j6)) + ", topRight=" + ((Object) CornerRadius.h(j10)) + ", bottomRight=" + ((Object) CornerRadius.h(j11)) + ", bottomLeft=" + ((Object) CornerRadius.h(j12)) + ')';
        }
        if (CornerRadius.e(j6) == CornerRadius.f(j6)) {
            return "RoundRect(rect=" + str + ", radius=" + GeometryUtilsKt.a(CornerRadius.e(j6), 1) + ')';
        }
        return "RoundRect(rect=" + str + ", x=" + GeometryUtilsKt.a(CornerRadius.e(j6), 1) + ", y=" + GeometryUtilsKt.a(CornerRadius.f(j6), 1) + ')';
    }

    public /* synthetic */ RoundRect(float f, float f6, float f7, float f10, long j6, long j10, long j11, long j12, int i10, k kVar) {
        this(f, f6, f7, f10, (i10 & 16) != 0 ? CornerRadius.Companion.a() : j6, (i10 & 32) != 0 ? CornerRadius.Companion.a() : j10, (i10 & 64) != 0 ? CornerRadius.Companion.a() : j11, (i10 & 128) != 0 ? CornerRadius.Companion.a() : j12, null);
    }
}
