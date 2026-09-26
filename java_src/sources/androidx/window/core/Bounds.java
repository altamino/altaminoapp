package androidx.window.core;

import android.graphics.Rect;
import kotlin.jvm.internal.t;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class Bounds {
    private final int bottom;
    private final int left;
    private final int right;
    private final int top;

    public Bounds(int i10, int i11, int i12, int i13) {
        this.left = i10;
        this.top = i11;
        this.right = i12;
        this.bottom = i13;
    }

    public final int a() {
        return this.bottom - this.top;
    }

    public final int b() {
        return this.left;
    }

    public final int c() {
        return this.top;
    }

    public final int d() {
        return this.right - this.left;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!t.e(Bounds.class, obj == null ? null : obj.getClass())) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.window.core.Bounds");
        }
        Bounds bounds = (Bounds) obj;
        return this.left == bounds.left && this.top == bounds.top && this.right == bounds.right && this.bottom == bounds.bottom;
    }

    public int hashCode() {
        return (((((this.left * 31) + this.top) * 31) + this.right) * 31) + this.bottom;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Bounds(@NotNull Rect rect) {
        this(rect.left, rect.top, rect.right, rect.bottom);
        t.j(rect, "rect");
    }

    @NotNull
    public final Rect f() {
        return new Rect(this.left, this.top, this.right, this.bottom);
    }

    @NotNull
    public String toString() {
        return ((Object) Bounds.class.getSimpleName()) + " { [" + this.left + b.COMMA + this.top + b.COMMA + this.right + b.COMMA + this.bottom + "] }";
    }

    public final boolean e() {
        if (a() == 0 && d() == 0) {
            return true;
        }
        return false;
    }
}
