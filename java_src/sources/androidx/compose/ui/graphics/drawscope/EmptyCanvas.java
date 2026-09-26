package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.b1;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class EmptyCanvas implements Canvas {
    @Override // androidx.compose.ui.graphics.Canvas
    public /* synthetic */ void i(Rect rect, int i10) {
        b1.a(this, rect, i10);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public /* synthetic */ void j(Rect rect, Paint paint) {
        b1.b(this, rect, paint);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void a(float f, float f6, float f7, float f10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void b(float f, float f6) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void c(@NotNull Path path, int i10) {
        t.j(path, "path");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void d(int i10, @NotNull List<Offset> points, @NotNull Paint paint) {
        t.j(points, "points");
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void e(@NotNull ImageBitmap image, long j6, long j10, long j11, long j12, @NotNull Paint paint) {
        t.j(image, "image");
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void f(float f, float f6, float f7, float f10, float f11, float f12, boolean z6, @NotNull Paint paint) {
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void g(@NotNull Rect bounds, @NotNull Paint paint) {
        t.j(bounds, "bounds");
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void h() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void k(float f, float f6) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void l(float f, float f6, float f7, float f10, @NotNull Paint paint) {
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void m(@NotNull ImageBitmap image, long j6, @NotNull Paint paint) {
        t.j(image, "image");
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void n() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void o() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void p(long j6, long j10, @NotNull Paint paint) {
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void q(float f) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void r() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void s(@NotNull float[] matrix) {
        t.j(matrix, "matrix");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void t(@NotNull Path path, @NotNull Paint paint) {
        t.j(path, "path");
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void u(long j6, float f, @NotNull Paint paint) {
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void v(float f, float f6, float f7, float f10, float f11, float f12, @NotNull Paint paint) {
        t.j(paint, "paint");
        throw new UnsupportedOperationException();
    }
}
