package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes2.dex */
public final class CanvasDrawScope implements DrawScope {

    @Nullable
    private Paint fillPaint;

    @Nullable
    private Paint strokePaint;

    @NotNull
    private final DrawParams drawParams = new DrawParams(null, null, null, 0, 15, null);

    @NotNull
    private final DrawContext drawContext = new DrawContext() { // from class: androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1

        @NotNull
        private final DrawTransform transform = CanvasDrawScopeKt.c(this);

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        @NotNull
        public DrawTransform d() {
            return this.transform;
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        @NotNull
        public Canvas a() {
            return this.this$0.I().e();
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public void b(long j6) {
            this.this$0.I().l(j6);
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        public long c() {
            return this.this$0.I().h();
        }
    };

    public static final class DrawParams {

        @NotNull
        private Canvas canvas;

        @NotNull
        private Density density;

        @NotNull
        private LayoutDirection layoutDirection;
        private long size;

        public /* synthetic */ DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j6, k kVar) {
            this(density, layoutDirection, canvas, j6);
        }

        @NotNull
        public final Density a() {
            return this.density;
        }

        @NotNull
        public final LayoutDirection b() {
            return this.layoutDirection;
        }

        @NotNull
        public final Canvas c() {
            return this.canvas;
        }

        public final long d() {
            return this.size;
        }

        @NotNull
        public final Canvas e() {
            return this.canvas;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrawParams)) {
                return false;
            }
            DrawParams drawParams = (DrawParams) obj;
            return t.e(this.density, drawParams.density) && this.layoutDirection == drawParams.layoutDirection && t.e(this.canvas, drawParams.canvas) && Size.f(this.size, drawParams.size);
        }

        @NotNull
        public final Density f() {
            return this.density;
        }

        @NotNull
        public final LayoutDirection g() {
            return this.layoutDirection;
        }

        public final long h() {
            return this.size;
        }

        public int hashCode() {
            return (((((this.density.hashCode() * 31) + this.layoutDirection.hashCode()) * 31) + this.canvas.hashCode()) * 31) + Size.j(this.size);
        }

        public final void i(@NotNull Canvas canvas) {
            t.j(canvas, "<set-?>");
            this.canvas = canvas;
        }

        public final void j(@NotNull Density density) {
            t.j(density, "<set-?>");
            this.density = density;
        }

        public final void k(@NotNull LayoutDirection layoutDirection) {
            t.j(layoutDirection, "<set-?>");
            this.layoutDirection = layoutDirection;
        }

        public final void l(long j6) {
            this.size = j6;
        }

        @NotNull
        public String toString() {
            return "DrawParams(density=" + this.density + ", layoutDirection=" + this.layoutDirection + ", canvas=" + this.canvas + ", size=" + ((Object) Size.l(this.size)) + ')';
        }

        private DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j6) {
            this.density = density;
            this.layoutDirection = layoutDirection;
            this.canvas = canvas;
            this.size = j6;
        }

        public /* synthetic */ DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j6, int i10, k kVar) {
            this((i10 & 1) != 0 ? CanvasDrawScopeKt.DefaultDensity : density, (i10 & 2) != 0 ? LayoutDirection.Ltr : layoutDirection, (i10 & 4) != 0 ? new EmptyCanvas() : canvas, (i10 & 8) != 0 ? Size.Companion.b() : j6, null);
        }
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void C(@NotNull ImageBitmap image, long j6, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(image, "image");
        t.j(style, "style");
        this.drawParams.e().m(image, j6, r(this, null, style, f, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void G(@NotNull Path path, long j6, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(path, "path");
        t.j(style, "style");
        this.drawParams.e().t(path, m(this, j6, style, f, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float H0(float f) {
        return androidx.compose.ui.unit.a.h(this, f);
    }

    @NotNull
    public final DrawParams I() {
        return this.drawParams;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int L0(long j6) {
        return androidx.compose.ui.unit.a.a(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float P(float f) {
        return androidx.compose.ui.unit.a.d(this, f);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @NotNull
    public DrawContext T() {
        return this.drawContext;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public /* synthetic */ long W() {
        return a.a(this);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long X(long j6) {
        return androidx.compose.ui.unit.a.i(this, j6);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public /* synthetic */ long c() {
        return a.b(this);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float j(int i10) {
        return androidx.compose.ui.unit.a.e(this, i10);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int j0(float f) {
        return androidx.compose.ui.unit.a.b(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float p0(long j6) {
        return androidx.compose.ui.unit.a.g(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long q(long j6) {
        return androidx.compose.ui.unit.a.f(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float s(long j6) {
        return androidx.compose.ui.unit.a.c(this, j6);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void w(@NotNull Path path, @NotNull Brush brush, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(path, "path");
        t.j(brush, "brush");
        t.j(style, "style");
        this.drawParams.e().t(path, r(this, brush, style, f, colorFilter, i10, 0, 32, null));
    }

    static /* synthetic */ Paint H(CanvasDrawScope canvasDrawScope, Brush brush, float f, float f6, int i10, int i11, PathEffect pathEffect, float f7, ColorFilter colorFilter, int i12, int i13, int i14, Object obj) {
        return canvasDrawScope.B(brush, f, f6, i10, i11, pathEffect, f7, colorFilter, i12, (i14 & 512) != 0 ? DrawScope.Companion.b() : i13);
    }

    private final long K(long j6, float f) {
        return f == 1.0f ? j6 : Color.l(j6, Color.o(j6) * f, 0.0f, 0.0f, 0.0f, 14, null);
    }

    private final Paint M() {
        Paint paint = this.fillPaint;
        if (paint != null) {
            return paint;
        }
        Paint paintA = AndroidPaint_androidKt.a();
        paintA.p(PaintingStyle.Companion.a());
        this.fillPaint = paintA;
        return paintA;
    }

    private final Paint O() {
        Paint paint = this.strokePaint;
        if (paint != null) {
            return paint;
        }
        Paint paintA = AndroidPaint_androidKt.a();
        paintA.p(PaintingStyle.Companion.b());
        this.strokePaint = paintA;
        return paintA;
    }

    private final Paint Q(DrawStyle drawStyle) {
        if (t.e(drawStyle, Fill.INSTANCE)) {
            return M();
        }
        if (!(drawStyle instanceof Stroke)) {
            throw new s();
        }
        Paint paintO = O();
        Stroke stroke = (Stroke) drawStyle;
        if (paintO.r() != stroke.f()) {
            paintO.q(stroke.f());
        }
        if (!StrokeCap.g(paintO.h(), stroke.b())) {
            paintO.f(stroke.b());
        }
        if (paintO.l() != stroke.d()) {
            paintO.o(stroke.d());
        }
        if (!StrokeJoin.g(paintO.k(), stroke.c())) {
            paintO.i(stroke.c());
        }
        if (!t.e(paintO.v(), stroke.e())) {
            paintO.u(stroke.e());
        }
        return paintO;
    }

    static /* synthetic */ Paint m(CanvasDrawScope canvasDrawScope, long j6, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i10, int i11, int i12, Object obj) {
        return canvasDrawScope.e(j6, drawStyle, f, colorFilter, i10, (i12 & 32) != 0 ? DrawScope.Companion.b() : i11);
    }

    static /* synthetic */ Paint r(CanvasDrawScope canvasDrawScope, Brush brush, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i10, int i11, int i12, Object obj) {
        if ((i12 & 32) != 0) {
            i11 = DrawScope.Companion.b();
        }
        return canvasDrawScope.p(brush, drawStyle, f, colorFilter, i10, i11);
    }

    static /* synthetic */ Paint x(CanvasDrawScope canvasDrawScope, long j6, float f, float f6, int i10, int i11, PathEffect pathEffect, float f7, ColorFilter colorFilter, int i12, int i13, int i14, Object obj) {
        return canvasDrawScope.u(j6, f, f6, i10, i11, pathEffect, f7, colorFilter, i12, (i14 & 512) != 0 ? DrawScope.Companion.b() : i13);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void D(@NotNull Brush brush, long j6, long j10, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(brush, "brush");
        t.j(style, "style");
        this.drawParams.e().l(Offset.m(j6), Offset.n(j6), Offset.m(j6) + Size.i(j10), Offset.n(j6) + Size.g(j10), r(this, brush, style, f, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void D0(@NotNull Brush brush, long j6, long j10, long j11, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(brush, "brush");
        t.j(style, "style");
        this.drawParams.e().v(Offset.m(j6), Offset.n(j6), Offset.m(j6) + Size.i(j10), Offset.n(j6) + Size.g(j10), CornerRadius.e(j11), CornerRadius.f(j11), r(this, brush, style, f, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void E(long j6, long j10, long j11, float f, int i10, @Nullable PathEffect pathEffect, float f6, @Nullable ColorFilter colorFilter, int i11) {
        this.drawParams.e().p(j10, j11, x(this, j6, f, 4.0f, i10, StrokeJoin.Companion.b(), pathEffect, f6, colorFilter, i11, 0, 512, null));
    }

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.drawParams.f().E0();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void I0(@NotNull List<Offset> points, int i10, long j6, float f, int i11, @Nullable PathEffect pathEffect, float f6, @Nullable ColorFilter colorFilter, int i12) {
        t.j(points, "points");
        this.drawParams.e().d(i10, points, x(this, j6, f, 4.0f, i11, StrokeJoin.Companion.b(), pathEffect, f6, colorFilter, i12, 0, 512, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void K0(@NotNull Brush brush, long j6, long j10, float f, int i10, @Nullable PathEffect pathEffect, float f6, @Nullable ColorFilter colorFilter, int i11) {
        t.j(brush, "brush");
        this.drawParams.e().p(j6, j10, H(this, brush, f, 4.0f, i10, StrokeJoin.Companion.b(), pathEffect, f6, colorFilter, i11, 0, 512, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void L(long j6, float f, long j10, float f6, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(style, "style");
        this.drawParams.e().u(j10, f, m(this, j6, style, f6, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void N(long j6, float f, float f6, boolean z6, long j10, long j11, float f7, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(style, "style");
        this.drawParams.e().f(Offset.m(j10), Offset.n(j10), Offset.m(j10) + Size.i(j11), Offset.n(j10) + Size.g(j11), f, f6, z6, m(this, j6, style, f7, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void P0(@NotNull ImageBitmap image, long j6, long j10, long j11, long j12, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10, int i11) {
        t.j(image, "image");
        t.j(style, "style");
        this.drawParams.e().e(image, j6, j10, j11, j12, p(null, style, f, colorFilter, i10, i11));
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.drawParams.f().getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.drawParams.g();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void o0(long j6, long j10, long j11, long j12, @NotNull DrawStyle style, float f, @Nullable ColorFilter colorFilter, int i10) {
        t.j(style, "style");
        this.drawParams.e().v(Offset.m(j10), Offset.n(j10), Offset.m(j10) + Size.i(j11), Offset.n(j10) + Size.g(j11), CornerRadius.e(j12), CornerRadius.f(j12), m(this, j6, style, f, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void x0(long j6, long j10, long j11, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(style, "style");
        this.drawParams.e().l(Offset.m(j10), Offset.n(j10), Offset.m(j10) + Size.i(j11), Offset.n(j10) + Size.g(j11), m(this, j6, style, f, colorFilter, i10, 0, 32, null));
    }

    private final Paint B(Brush brush, float f, float f6, int i10, int i11, PathEffect pathEffect, float f7, ColorFilter colorFilter, int i12, int i13) {
        Paint paintO = O();
        if (brush != null) {
            brush.a(c(), paintO, f7);
        } else if (paintO.e() != f7) {
            paintO.b(f7);
        }
        if (!t.e(paintO.t(), colorFilter)) {
            paintO.y(colorFilter);
        }
        if (!BlendMode.G(paintO.w(), i12)) {
            paintO.s(i12);
        }
        if (paintO.r() != f) {
            paintO.q(f);
        }
        if (paintO.l() != f6) {
            paintO.o(f6);
        }
        if (!StrokeCap.g(paintO.h(), i10)) {
            paintO.f(i10);
        }
        if (!StrokeJoin.g(paintO.k(), i11)) {
            paintO.i(i11);
        }
        if (!t.e(paintO.v(), pathEffect)) {
            paintO.u(pathEffect);
        }
        if (!FilterQuality.e(paintO.z(), i13)) {
            paintO.g(i13);
        }
        return paintO;
    }

    private final Paint e(long j6, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i10, int i11) {
        Paint paintQ = Q(drawStyle);
        long jK = K(j6, f);
        if (!Color.n(paintQ.a(), jK)) {
            paintQ.j(jK);
        }
        if (paintQ.n() != null) {
            paintQ.x(null);
        }
        if (!t.e(paintQ.t(), colorFilter)) {
            paintQ.y(colorFilter);
        }
        if (!BlendMode.G(paintQ.w(), i10)) {
            paintQ.s(i10);
        }
        if (!FilterQuality.e(paintQ.z(), i11)) {
            paintQ.g(i11);
        }
        return paintQ;
    }

    private final Paint p(Brush brush, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i10, int i11) {
        Paint paintQ = Q(drawStyle);
        if (brush != null) {
            brush.a(c(), paintQ, f);
        } else if (paintQ.e() != f) {
            paintQ.b(f);
        }
        if (!t.e(paintQ.t(), colorFilter)) {
            paintQ.y(colorFilter);
        }
        if (!BlendMode.G(paintQ.w(), i10)) {
            paintQ.s(i10);
        }
        if (!FilterQuality.e(paintQ.z(), i11)) {
            paintQ.g(i11);
        }
        return paintQ;
    }

    private final Paint u(long j6, float f, float f6, int i10, int i11, PathEffect pathEffect, float f7, ColorFilter colorFilter, int i12, int i13) {
        Paint paintO = O();
        long jK = K(j6, f7);
        if (!Color.n(paintO.a(), jK)) {
            paintO.j(jK);
        }
        if (paintO.n() != null) {
            paintO.x(null);
        }
        if (!t.e(paintO.t(), colorFilter)) {
            paintO.y(colorFilter);
        }
        if (!BlendMode.G(paintO.w(), i12)) {
            paintO.s(i12);
        }
        if (paintO.r() != f) {
            paintO.q(f);
        }
        if (paintO.l() != f6) {
            paintO.o(f6);
        }
        if (!StrokeCap.g(paintO.h(), i10)) {
            paintO.f(i10);
        }
        if (!StrokeJoin.g(paintO.k(), i11)) {
            paintO.i(i11);
        }
        if (!t.e(paintO.v(), pathEffect)) {
            paintO.u(pathEffect);
        }
        if (!FilterQuality.e(paintO.z(), i13)) {
            paintO.g(i13);
        }
        return paintO;
    }
}
