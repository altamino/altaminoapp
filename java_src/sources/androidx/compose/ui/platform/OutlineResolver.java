package androidx.compose.ui.platform;

import android.graphics.Outline;
import android.os.Build;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class OutlineResolver {
    private boolean cacheIsDirty;

    @NotNull
    private final Outline cachedOutline;

    @Nullable
    private Path cachedRrectPath;

    @Nullable
    private androidx.compose.ui.graphics.Outline calculatedOutline;

    @NotNull
    private Density density;
    private boolean isSupportedOutline;

    @NotNull
    private LayoutDirection layoutDirection;
    private boolean outlineNeeded;

    @Nullable
    private Path outlinePath;
    private long rectSize;
    private long rectTopLeft;
    private float roundedCornerRadius;

    @NotNull
    private Shape shape;
    private long size;

    @Nullable
    private Path tmpOpPath;

    @Nullable
    private Path tmpPath;

    @Nullable
    private RoundRect tmpRoundRect;

    @Nullable
    private Path tmpTouchPointPath;
    private boolean usePathForClip;

    private final boolean f(RoundRect roundRect, long j6, long j10, float f) {
        return roundRect != null && RoundRectKt.d(roundRect) && roundRect.e() == Offset.m(j6) && roundRect.g() == Offset.n(j6) && roundRect.f() == Offset.m(j6) + Size.i(j10) && roundRect.a() == Offset.n(j6) + Size.g(j10) && CornerRadius.e(roundRect.h()) == f;
    }

    public final boolean d() {
        return !this.usePathForClip;
    }

    public OutlineResolver(@NotNull Density density) {
        kotlin.jvm.internal.t.j(density, "density");
        this.density = density;
        this.isSupportedOutline = true;
        Outline outline = new Outline();
        outline.setAlpha(1.0f);
        this.cachedOutline = outline;
        Size.Companion companion = Size.Companion;
        this.size = companion.b();
        this.shape = RectangleShapeKt.a();
        this.rectTopLeft = Offset.Companion.c();
        this.rectSize = companion.b();
        this.layoutDirection = LayoutDirection.Ltr;
    }

    private final void i() {
        if (this.cacheIsDirty) {
            this.rectTopLeft = Offset.Companion.c();
            long j6 = this.size;
            this.rectSize = j6;
            this.roundedCornerRadius = 0.0f;
            this.outlinePath = null;
            this.cacheIsDirty = false;
            this.usePathForClip = false;
            if (!this.outlineNeeded || Size.i(j6) <= 0.0f || Size.g(this.size) <= 0.0f) {
                this.cachedOutline.setEmpty();
                return;
            }
            this.isSupportedOutline = true;
            androidx.compose.ui.graphics.Outline outlineA = this.shape.a(this.size, this.layoutDirection, this.density);
            this.calculatedOutline = outlineA;
            if (outlineA instanceof androidx.compose.ui.graphics.Outline.Rectangle) {
                k(((androidx.compose.ui.graphics.Outline.Rectangle) outlineA).a());
            } else if (outlineA instanceof androidx.compose.ui.graphics.Outline.Rounded) {
                l(((androidx.compose.ui.graphics.Outline.Rounded) outlineA).a());
            } else if (outlineA instanceof androidx.compose.ui.graphics.Outline.Generic) {
                j(((androidx.compose.ui.graphics.Outline.Generic) outlineA).a());
            }
        }
    }

    private final void j(Path path) {
        if (Build.VERSION.SDK_INT > 28 || path.g()) {
            Outline outline = this.cachedOutline;
            if (!(path instanceof AndroidPath)) {
                throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
            }
            outline.setConvexPath(((AndroidPath) path).n());
            this.usePathForClip = !this.cachedOutline.canClip();
        } else {
            this.isSupportedOutline = false;
            this.cachedOutline.setEmpty();
            this.usePathForClip = true;
        }
        this.outlinePath = path;
    }

    public final void a(@NotNull Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        Path pathB = b();
        if (pathB != null) {
            androidx.compose.ui.graphics.b1.c(canvas, pathB, 0, 2, null);
            return;
        }
        float f = this.roundedCornerRadius;
        if (f <= 0.0f) {
            androidx.compose.ui.graphics.b1.d(canvas, Offset.m(this.rectTopLeft), Offset.n(this.rectTopLeft), Offset.m(this.rectTopLeft) + Size.i(this.rectSize), Offset.n(this.rectTopLeft) + Size.g(this.rectSize), 0, 16, null);
            return;
        }
        Path pathA = this.tmpPath;
        RoundRect roundRect = this.tmpRoundRect;
        if (pathA == null || !f(roundRect, this.rectTopLeft, this.rectSize, f)) {
            RoundRect roundRectC = RoundRectKt.c(Offset.m(this.rectTopLeft), Offset.n(this.rectTopLeft), Offset.m(this.rectTopLeft) + Size.i(this.rectSize), Offset.n(this.rectTopLeft) + Size.g(this.rectSize), CornerRadiusKt.b(this.roundedCornerRadius, 0.0f, 2, null));
            if (pathA == null) {
                pathA = AndroidPath_androidKt.a();
            } else {
                pathA.reset();
            }
            pathA.e(roundRectC);
            this.tmpRoundRect = roundRectC;
            this.tmpPath = pathA;
        }
        androidx.compose.ui.graphics.b1.c(canvas, pathA, 0, 2, null);
    }

    public final boolean e(long j6) {
        androidx.compose.ui.graphics.Outline outline;
        if (this.outlineNeeded && (outline = this.calculatedOutline) != null) {
            return ShapeContainingUtilKt.b(outline, Offset.m(j6), Offset.n(j6), this.tmpTouchPointPath, this.tmpOpPath);
        }
        return true;
    }

    public final boolean g(@NotNull Shape shape, float f, boolean z6, float f6, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        kotlin.jvm.internal.t.j(shape, "shape");
        kotlin.jvm.internal.t.j(layoutDirection, "layoutDirection");
        kotlin.jvm.internal.t.j(density, "density");
        this.cachedOutline.setAlpha(f);
        boolean z10 = !kotlin.jvm.internal.t.e(this.shape, shape);
        if (z10) {
            this.shape = shape;
            this.cacheIsDirty = true;
        }
        boolean z11 = z6 || f6 > 0.0f;
        if (this.outlineNeeded != z11) {
            this.outlineNeeded = z11;
            this.cacheIsDirty = true;
        }
        if (this.layoutDirection != layoutDirection) {
            this.layoutDirection = layoutDirection;
            this.cacheIsDirty = true;
        }
        if (!kotlin.jvm.internal.t.e(this.density, density)) {
            this.density = density;
            this.cacheIsDirty = true;
        }
        return z10;
    }

    public final void h(long j6) {
        if (Size.f(this.size, j6)) {
            return;
        }
        this.size = j6;
        this.cacheIsDirty = true;
    }

    private final void k(Rect rect) {
        this.rectTopLeft = OffsetKt.a(rect.j(), rect.m());
        this.rectSize = SizeKt.a(rect.p(), rect.i());
        this.cachedOutline.setRect(g8.c.c(rect.j()), g8.c.c(rect.m()), g8.c.c(rect.k()), g8.c.c(rect.e()));
    }

    private final void l(RoundRect roundRect) {
        float fE = CornerRadius.e(roundRect.h());
        this.rectTopLeft = OffsetKt.a(roundRect.e(), roundRect.g());
        this.rectSize = SizeKt.a(roundRect.j(), roundRect.d());
        if (RoundRectKt.d(roundRect)) {
            this.cachedOutline.setRoundRect(g8.c.c(roundRect.e()), g8.c.c(roundRect.g()), g8.c.c(roundRect.f()), g8.c.c(roundRect.a()), fE);
            this.roundedCornerRadius = fE;
            return;
        }
        Path pathA = this.cachedRrectPath;
        if (pathA == null) {
            pathA = AndroidPath_androidKt.a();
            this.cachedRrectPath = pathA;
        }
        pathA.reset();
        pathA.e(roundRect);
        j(pathA);
    }

    @Nullable
    public final Path b() {
        i();
        return this.outlinePath;
    }

    @Nullable
    public final Outline c() {
        i();
        if (this.outlineNeeded && this.isSupportedOutline) {
            return this.cachedOutline;
        }
        return null;
    }
}
