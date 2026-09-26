package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidCanvas implements Canvas {

    @NotNull
    private android.graphics.Canvas internalCanvas = AndroidCanvas_androidKt.EmptyCanvas;

    @NotNull
    private final Rect srcRect = new Rect();

    @NotNull
    private final Rect dstRect = new Rect();

    @Override // androidx.compose.ui.graphics.Canvas
    public /* synthetic */ void i(androidx.compose.ui.geometry.Rect rect, int i10) {
        b1.a(this, rect, i10);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public /* synthetic */ void j(androidx.compose.ui.geometry.Rect rect, Paint paint) {
        b1.b(this, rect, paint);
    }

    @NotNull
    public final android.graphics.Canvas y() {
        return this.internalCanvas;
    }

    public final void z(@NotNull android.graphics.Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "<set-?>");
        this.internalCanvas = canvas;
    }

    @NotNull
    public final Region.Op A(int i10) {
        return ClipOp.e(i10, ClipOp.Companion.a()) ? Region.Op.DIFFERENCE : Region.Op.INTERSECT;
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void a(float f, float f6, float f7, float f10, int i10) {
        this.internalCanvas.clipRect(f, f6, f7, f10, A(i10));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void b(float f, float f6) {
        this.internalCanvas.translate(f, f6);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void c(@NotNull Path path, int i10) {
        kotlin.jvm.internal.t.j(path, "path");
        android.graphics.Canvas canvas = this.internalCanvas;
        if (!(path instanceof AndroidPath)) {
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        canvas.clipPath(((AndroidPath) path).n(), A(i10));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void d(int i10, @NotNull List<Offset> points, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(points, "points");
        kotlin.jvm.internal.t.j(paint, "paint");
        PointMode.Companion companion = PointMode.Companion;
        if (PointMode.f(i10, companion.a())) {
            w(points, paint, 2);
        } else if (PointMode.f(i10, companion.c())) {
            w(points, paint, 1);
        } else if (PointMode.f(i10, companion.b())) {
            x(points, paint);
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void e(@NotNull ImageBitmap image, long j6, long j10, long j11, long j12, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(image, "image");
        kotlin.jvm.internal.t.j(paint, "paint");
        android.graphics.Canvas canvas = this.internalCanvas;
        Bitmap bitmapB = AndroidImageBitmap_androidKt.b(image);
        Rect rect = this.srcRect;
        rect.left = IntOffset.j(j6);
        rect.top = IntOffset.k(j6);
        rect.right = IntOffset.j(j6) + IntSize.g(j10);
        rect.bottom = IntOffset.k(j6) + IntSize.f(j10);
        w7.l0 l0Var = w7.l0.INSTANCE;
        Rect rect2 = this.dstRect;
        rect2.left = IntOffset.j(j11);
        rect2.top = IntOffset.k(j11);
        rect2.right = IntOffset.j(j11) + IntSize.g(j12);
        rect2.bottom = IntOffset.k(j11) + IntSize.f(j12);
        canvas.drawBitmap(bitmapB, rect, rect2, paint.m());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void f(float f, float f6, float f7, float f10, float f11, float f12, boolean z6, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(paint, "paint");
        this.internalCanvas.drawArc(f, f6, f7, f10, f11, f12, z6, paint.m());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void g(@NotNull androidx.compose.ui.geometry.Rect bounds, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(bounds, "bounds");
        kotlin.jvm.internal.t.j(paint, "paint");
        this.internalCanvas.saveLayer(bounds.j(), bounds.m(), bounds.k(), bounds.e(), paint.m(), 31);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void h() {
        CanvasUtils.INSTANCE.a(this.internalCanvas, false);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void k(float f, float f6) {
        this.internalCanvas.scale(f, f6);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void l(float f, float f6, float f7, float f10, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(paint, "paint");
        this.internalCanvas.drawRect(f, f6, f7, f10, paint.m());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void m(@NotNull ImageBitmap image, long j6, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(image, "image");
        kotlin.jvm.internal.t.j(paint, "paint");
        this.internalCanvas.drawBitmap(AndroidImageBitmap_androidKt.b(image), Offset.m(j6), Offset.n(j6), paint.m());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void n() {
        this.internalCanvas.restore();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void o() {
        CanvasUtils.INSTANCE.a(this.internalCanvas, true);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void p(long j6, long j10, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(paint, "paint");
        this.internalCanvas.drawLine(Offset.m(j6), Offset.n(j6), Offset.m(j10), Offset.n(j10), paint.m());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void q(float f) {
        this.internalCanvas.rotate(f);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void r() {
        this.internalCanvas.save();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void s(@NotNull float[] matrix) {
        kotlin.jvm.internal.t.j(matrix, "matrix");
        if (MatrixKt.a(matrix)) {
            return;
        }
        android.graphics.Matrix matrix2 = new android.graphics.Matrix();
        AndroidMatrixConversions_androidKt.a(matrix2, matrix);
        this.internalCanvas.concat(matrix2);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void t(@NotNull Path path, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(path, "path");
        kotlin.jvm.internal.t.j(paint, "paint");
        android.graphics.Canvas canvas = this.internalCanvas;
        if (!(path instanceof AndroidPath)) {
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        canvas.drawPath(((AndroidPath) path).n(), paint.m());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void u(long j6, float f, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(paint, "paint");
        this.internalCanvas.drawCircle(Offset.m(j6), Offset.n(j6), f, paint.m());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void v(float f, float f6, float f7, float f10, float f11, float f12, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(paint, "paint");
        this.internalCanvas.drawRoundRect(f, f6, f7, f10, f11, f12, paint.m());
    }

    private final void w(List<Offset> list, Paint paint, int i10) {
        if (list.size() >= 2) {
            j8.g gVarU = j8.o.u(j8.o.v(0, list.size() - 1), i10);
            int iE = gVarU.e();
            int iF = gVarU.f();
            int iG = gVarU.g();
            if ((iG <= 0 || iE > iF) && (iG >= 0 || iF > iE)) {
                return;
            }
            while (true) {
                long jU = list.get(iE).u();
                long jU2 = list.get(iE + 1).u();
                this.internalCanvas.drawLine(Offset.m(jU), Offset.n(jU), Offset.m(jU2), Offset.n(jU2), paint.m());
                if (iE != iF) {
                    iE += iG;
                } else {
                    return;
                }
            }
        }
    }

    private final void x(List<Offset> list, Paint paint) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            long jU = list.get(i10).u();
            this.internalCanvas.drawPoint(Offset.m(jU), Offset.n(jU), paint.m());
        }
    }
}
