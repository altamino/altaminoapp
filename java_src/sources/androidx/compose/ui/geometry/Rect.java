package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class Rect {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Rect Zero = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Rect a() {
            return Rect.Zero;
        }
    }

    public static /* synthetic */ Rect d(Rect rect, float f, float f6, float f7, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = rect.left;
        }
        if ((i10 & 2) != 0) {
            f6 = rect.top;
        }
        if ((i10 & 4) != 0) {
            f7 = rect.right;
        }
        if ((i10 & 8) != 0) {
            f10 = rect.bottom;
        }
        return rect.c(f, f6, f7, f10);
    }

    @NotNull
    public final Rect c(float f, float f6, float f7, float f10) {
        return new Rect(f, f6, f7, f10);
    }

    public final float e() {
        return this.bottom;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rect)) {
            return false;
        }
        Rect rect = (Rect) obj;
        return t.e(Float.valueOf(this.left), Float.valueOf(rect.left)) && t.e(Float.valueOf(this.top), Float.valueOf(rect.top)) && t.e(Float.valueOf(this.right), Float.valueOf(rect.right)) && t.e(Float.valueOf(this.bottom), Float.valueOf(rect.bottom));
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.left) * 31) + Float.floatToIntBits(this.top)) * 31) + Float.floatToIntBits(this.right)) * 31) + Float.floatToIntBits(this.bottom);
    }

    public final float i() {
        return this.bottom - this.top;
    }

    public final float j() {
        return this.left;
    }

    public final float k() {
        return this.right;
    }

    public final float m() {
        return this.top;
    }

    public final float p() {
        return this.right - this.left;
    }

    public final long f() {
        return OffsetKt.a(this.left, this.bottom);
    }

    public final long g() {
        return OffsetKt.a(this.right, this.bottom);
    }

    public final long h() {
        return OffsetKt.a(this.left + (p() / 2.0f), this.top + (i() / 2.0f));
    }

    public final long n() {
        return OffsetKt.a(this.left, this.top);
    }

    public final long o() {
        return OffsetKt.a(this.right, this.top);
    }

    @Stable
    @NotNull
    public final Rect q(@NotNull Rect other) {
        t.j(other, "other");
        return new Rect(Math.max(this.left, other.left), Math.max(this.top, other.top), Math.min(this.right, other.right), Math.min(this.bottom, other.bottom));
    }

    public final boolean r(@NotNull Rect other) {
        t.j(other, "other");
        return this.right > other.left && other.right > this.left && this.bottom > other.top && other.bottom > this.top;
    }

    @Stable
    @NotNull
    public final Rect s(float f, float f6) {
        return new Rect(this.left + f, this.top + f6, this.right + f, this.bottom + f6);
    }

    @Stable
    @NotNull
    public final Rect t(long j6) {
        return new Rect(this.left + Offset.m(j6), this.top + Offset.n(j6), this.right + Offset.m(j6), this.bottom + Offset.n(j6));
    }

    @NotNull
    public String toString() {
        return "Rect.fromLTRB(" + GeometryUtilsKt.a(this.left, 1) + ", " + GeometryUtilsKt.a(this.top, 1) + ", " + GeometryUtilsKt.a(this.right, 1) + ", " + GeometryUtilsKt.a(this.bottom, 1) + ')';
    }

    public Rect(float f, float f6, float f7, float f10) {
        this.left = f;
        this.top = f6;
        this.right = f7;
        this.bottom = f10;
    }

    public final boolean b(long j6) {
        if (Offset.m(j6) >= this.left && Offset.m(j6) < this.right && Offset.n(j6) >= this.top && Offset.n(j6) < this.bottom) {
            return true;
        }
        return false;
    }

    public final long l() {
        return SizeKt.a(p(), i());
    }
}
