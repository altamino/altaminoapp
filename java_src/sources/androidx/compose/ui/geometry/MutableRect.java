package androidx.compose.ui.geometry;

import androidx.compose.runtime.Stable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class MutableRect {
    private float bottom;
    private float left;
    private float right;
    private float top;

    public final float a() {
        return this.bottom;
    }

    public final float b() {
        return this.left;
    }

    public final float c() {
        return this.right;
    }

    public final float d() {
        return this.top;
    }

    public final boolean f() {
        return this.left >= this.right || this.top >= this.bottom;
    }

    public final void g(float f, float f6, float f7, float f10) {
        this.left = f;
        this.top = f6;
        this.right = f7;
        this.bottom = f10;
    }

    public final void h(float f) {
        this.bottom = f;
    }

    public final void i(float f) {
        this.left = f;
    }

    public final void j(float f) {
        this.right = f;
    }

    public final void k(float f) {
        this.top = f;
    }

    @Stable
    public final void e(float f, float f6, float f7, float f10) {
        this.left = Math.max(f, this.left);
        this.top = Math.max(f6, this.top);
        this.right = Math.min(f7, this.right);
        this.bottom = Math.min(f10, this.bottom);
    }

    @NotNull
    public String toString() {
        return "MutableRect(" + GeometryUtilsKt.a(this.left, 1) + ", " + GeometryUtilsKt.a(this.top, 1) + ", " + GeometryUtilsKt.a(this.right, 1) + ", " + GeometryUtilsKt.a(this.bottom, 1) + ')';
    }

    public MutableRect(float f, float f6, float f7, float f10) {
        this.left = f;
        this.top = f6;
        this.right = f7;
        this.bottom = f10;
    }
}
