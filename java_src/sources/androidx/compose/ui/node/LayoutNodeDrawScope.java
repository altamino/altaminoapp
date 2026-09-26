package androidx.compose.ui.node;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutNodeDrawScope implements DrawScope, ContentDrawScope {

    @NotNull
    private final CanvasDrawScope canvasDrawScope;

    @Nullable
    private DrawEntity drawEntity;

    /* JADX WARN: Multi-variable type inference failed */
    public LayoutNodeDrawScope() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void C(@NotNull ImageBitmap image, long j6, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(image, "image");
        t.j(style, "style");
        this.canvasDrawScope.C(image, j6, f, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void D(@NotNull Brush brush, long j6, long j10, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(brush, "brush");
        t.j(style, "style");
        this.canvasDrawScope.D(brush, j6, j10, f, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void D0(@NotNull Brush brush, long j6, long j10, long j11, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(brush, "brush");
        t.j(style, "style");
        this.canvasDrawScope.D0(brush, j6, j10, j11, f, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void E(long j6, long j10, long j11, float f, int i10, @Nullable PathEffect pathEffect, float f6, @Nullable ColorFilter colorFilter, int i11) {
        this.canvasDrawScope.E(j6, j10, j11, f, i10, pathEffect, f6, colorFilter, i11);
    }

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.canvasDrawScope.E0();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void G(@NotNull Path path, long j6, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(path, "path");
        t.j(style, "style");
        this.canvasDrawScope.G(path, j6, f, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float H0(float f) {
        return this.canvasDrawScope.H0(f);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void I0(@NotNull List<Offset> points, int i10, long j6, float f, int i11, @Nullable PathEffect pathEffect, float f6, @Nullable ColorFilter colorFilter, int i12) {
        t.j(points, "points");
        this.canvasDrawScope.I0(points, i10, j6, f, i11, pathEffect, f6, colorFilter, i12);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void K0(@NotNull Brush brush, long j6, long j10, float f, int i10, @Nullable PathEffect pathEffect, float f6, @Nullable ColorFilter colorFilter, int i11) {
        t.j(brush, "brush");
        this.canvasDrawScope.K0(brush, j6, j10, f, i10, pathEffect, f6, colorFilter, i11);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void L(long j6, float f, long j10, float f6, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(style, "style");
        this.canvasDrawScope.L(j6, f, j10, f6, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int L0(long j6) {
        return this.canvasDrawScope.L0(j6);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void N(long j6, float f, float f6, boolean z6, long j10, long j11, float f7, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(style, "style");
        this.canvasDrawScope.N(j6, f, f6, z6, j10, j11, f7, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float P(float f) {
        return this.canvasDrawScope.P(f);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void P0(@NotNull ImageBitmap image, long j6, long j10, long j11, long j12, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10, int i11) {
        t.j(image, "image");
        t.j(style, "style");
        this.canvasDrawScope.P0(image, j6, j10, j11, j12, f, style, colorFilter, i10, i11);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @NotNull
    public DrawContext T() {
        return this.canvasDrawScope.T();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public long W() {
        return this.canvasDrawScope.W();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long X(long j6) {
        return this.canvasDrawScope.X(j6);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public long c() {
        return this.canvasDrawScope.c();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.canvasDrawScope.getLayoutDirection();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float j(int i10) {
        return this.canvasDrawScope.j(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int j0(float f) {
        return this.canvasDrawScope.j0(f);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void o0(long j6, long j10, long j11, long j12, @NotNull DrawStyle style, float f, @Nullable ColorFilter colorFilter, int i10) {
        t.j(style, "style");
        this.canvasDrawScope.o0(j6, j10, j11, j12, style, f, colorFilter, i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float p0(long j6) {
        return this.canvasDrawScope.p0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long q(long j6) {
        return this.canvasDrawScope.q(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float s(long j6) {
        return this.canvasDrawScope.s(j6);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void w(@NotNull Path path, @NotNull Brush brush, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(path, "path");
        t.j(brush, "brush");
        t.j(style, "style");
        this.canvasDrawScope.w(path, brush, f, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public void x0(long j6, long j10, long j11, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        t.j(style, "style");
        this.canvasDrawScope.x0(j6, j10, j11, f, style, colorFilter, i10);
    }

    public LayoutNodeDrawScope(@NotNull CanvasDrawScope canvasDrawScope) {
        t.j(canvasDrawScope, "canvasDrawScope");
        this.canvasDrawScope = canvasDrawScope;
    }

    public /* synthetic */ LayoutNodeDrawScope(CanvasDrawScope canvasDrawScope, int i10, k kVar) {
        this((i10 & 1) != 0 ? new CanvasDrawScope() : canvasDrawScope);
    }

    @Override // androidx.compose.ui.graphics.drawscope.ContentDrawScope
    public void Z() {
        Canvas canvasA = T().a();
        DrawEntity drawEntity = this.drawEntity;
        t.g(drawEntity);
        DrawEntity drawEntityD = drawEntity.d();
        if (drawEntityD != null) {
            drawEntityD.m(canvasA);
        } else {
            drawEntity.b().Y1(canvasA);
        }
    }
}
