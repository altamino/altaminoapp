package androidx.compose.ui.graphics;

import android.graphics.RectF;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidPath implements Path {

    @NotNull
    private final android.graphics.Path internalPath;

    @NotNull
    private final android.graphics.Matrix mMatrix;

    @NotNull
    private final float[] radii;

    @NotNull
    private final RectF rectF;

    /* JADX WARN: Multi-variable type inference failed */
    public AndroidPath() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @NotNull
    public final android.graphics.Path n() {
        return this.internalPath;
    }

    public AndroidPath(@NotNull android.graphics.Path internalPath) {
        kotlin.jvm.internal.t.j(internalPath, "internalPath");
        this.internalPath = internalPath;
        this.rectF = new RectF();
        this.radii = new float[8];
        this.mMatrix = new android.graphics.Matrix();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void a(float f, float f6) {
        this.internalPath.rMoveTo(f, f6);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void b(float f, float f6, float f7, float f10, float f11, float f12) {
        this.internalPath.rCubicTo(f, f6, f7, f10, f11, f12);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void c(float f, float f6, float f7, float f10) {
        this.internalPath.rQuadTo(f, f6, f7, f10);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void close() {
        this.internalPath.close();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void cubicTo(float f, float f6, float f7, float f10, float f11, float f12) {
        this.internalPath.cubicTo(f, f6, f7, f10, f11, f12);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void d(long j6) {
        this.mMatrix.reset();
        this.mMatrix.setTranslate(Offset.m(j6), Offset.n(j6));
        this.internalPath.transform(this.mMatrix);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void e(@NotNull RoundRect roundRect) {
        kotlin.jvm.internal.t.j(roundRect, "roundRect");
        this.rectF.set(roundRect.e(), roundRect.g(), roundRect.f(), roundRect.a());
        this.radii[0] = CornerRadius.e(roundRect.h());
        this.radii[1] = CornerRadius.f(roundRect.h());
        this.radii[2] = CornerRadius.e(roundRect.i());
        this.radii[3] = CornerRadius.f(roundRect.i());
        this.radii[4] = CornerRadius.e(roundRect.c());
        this.radii[5] = CornerRadius.f(roundRect.c());
        this.radii[6] = CornerRadius.e(roundRect.b());
        this.radii[7] = CornerRadius.f(roundRect.b());
        this.internalPath.addRoundRect(this.rectF, this.radii, android.graphics.Path.Direction.CCW);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void f(@NotNull Path path, long j6) {
        kotlin.jvm.internal.t.j(path, "path");
        android.graphics.Path path2 = this.internalPath;
        if (!(path instanceof AndroidPath)) {
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        path2.addPath(((AndroidPath) path).n(), Offset.m(j6), Offset.n(j6));
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean g() {
        return this.internalPath.isConvex();
    }

    @Override // androidx.compose.ui.graphics.Path
    @NotNull
    public Rect getBounds() {
        this.internalPath.computeBounds(this.rectF, true);
        RectF rectF = this.rectF;
        return new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void h(float f, float f6, float f7, float f10) {
        this.internalPath.quadTo(f, f6, f7, f10);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void i(int i10) {
        this.internalPath.setFillType(PathFillType.f(i10, PathFillType.Companion.a()) ? android.graphics.Path.FillType.EVEN_ODD : android.graphics.Path.FillType.WINDING);
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean isEmpty() {
        return this.internalPath.isEmpty();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void j(@NotNull Rect rect) {
        kotlin.jvm.internal.t.j(rect, "rect");
        if (!m(rect)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.rectF.set(RectHelper_androidKt.b(rect));
        this.internalPath.addRect(this.rectF, android.graphics.Path.Direction.CCW);
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean k(@NotNull Path path1, @NotNull Path path2, int i10) {
        android.graphics.Path.Op op;
        kotlin.jvm.internal.t.j(path1, "path1");
        kotlin.jvm.internal.t.j(path2, "path2");
        PathOperation.Companion companion = PathOperation.Companion;
        if (PathOperation.g(i10, companion.a())) {
            op = android.graphics.Path.Op.DIFFERENCE;
        } else if (PathOperation.g(i10, companion.b())) {
            op = android.graphics.Path.Op.INTERSECT;
        } else if (PathOperation.g(i10, companion.c())) {
            op = android.graphics.Path.Op.REVERSE_DIFFERENCE;
        } else {
            op = PathOperation.g(i10, companion.d()) ? android.graphics.Path.Op.UNION : android.graphics.Path.Op.XOR;
        }
        android.graphics.Path path = this.internalPath;
        if (!(path1 instanceof AndroidPath)) {
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        android.graphics.Path pathN = ((AndroidPath) path1).n();
        if (path2 instanceof AndroidPath) {
            return path.op(pathN, ((AndroidPath) path2).n(), op);
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.Path
    public void l(float f, float f6) {
        this.internalPath.rLineTo(f, f6);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void lineTo(float f, float f6) {
        this.internalPath.lineTo(f, f6);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void moveTo(float f, float f6) {
        this.internalPath.moveTo(f, f6);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void reset() {
        this.internalPath.reset();
    }

    private final boolean m(Rect rect) {
        if (!Float.isNaN(rect.j())) {
            if (!Float.isNaN(rect.m())) {
                if (!Float.isNaN(rect.k())) {
                    if (!Float.isNaN(rect.e())) {
                        return true;
                    }
                    throw new IllegalStateException("Rect.bottom is NaN".toString());
                }
                throw new IllegalStateException("Rect.right is NaN".toString());
            }
            throw new IllegalStateException("Rect.top is NaN".toString());
        }
        throw new IllegalStateException("Rect.left is NaN".toString());
    }

    public /* synthetic */ AndroidPath(android.graphics.Path path, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? new android.graphics.Path() : path);
    }
}
