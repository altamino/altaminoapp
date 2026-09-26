package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.GraphicLayerInfo;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public final class RenderNodeLayer implements OwnedLayer, GraphicLayerInfo {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final e8.p<DeviceRenderNode, Matrix, w7.l0> getMatrix = RenderNodeLayer$Companion$getMatrix$1.INSTANCE;

    @NotNull
    private final CanvasHolder canvasHolder;

    @Nullable
    private e8.l<? super Canvas, w7.l0> drawBlock;
    private boolean drawnWithZ;

    @Nullable
    private e8.a<w7.l0> invalidateParentLayer;
    private boolean isDestroyed;
    private boolean isDirty;

    @NotNull
    private final LayerMatrixCache<DeviceRenderNode> matrixCache;

    @NotNull
    private final OutlineResolver outlineResolver;

    @NotNull
    private final AndroidComposeView ownerView;

    @NotNull
    private final DeviceRenderNode renderNode;

    @Nullable
    private Paint softwareLayerPaint;
    private long transformOrigin;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @RequiresApi
    private static final class UniqueDrawingIdApi29 {

        @NotNull
        public static final UniqueDrawingIdApi29 INSTANCE = new UniqueDrawingIdApi29();

        @DoNotInline
        public static final long a(@NotNull View view) {
            kotlin.jvm.internal.t.j(view, "view");
            return view.getUniqueDrawingId();
        }

        private UniqueDrawingIdApi29() {
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void f(float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14, float f15, float f16, long j6, @NotNull Shape shape, boolean z6, @Nullable RenderEffect renderEffect, long j10, long j11, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        e8.a<w7.l0> aVar;
        kotlin.jvm.internal.t.j(shape, "shape");
        kotlin.jvm.internal.t.j(layoutDirection, "layoutDirection");
        kotlin.jvm.internal.t.j(density, "density");
        this.transformOrigin = j6;
        boolean z10 = false;
        boolean z11 = this.renderNode.s() && !this.outlineResolver.d();
        this.renderNode.k(f);
        this.renderNode.n(f6);
        this.renderNode.b(f7);
        this.renderNode.o(f10);
        this.renderNode.d(f11);
        this.renderNode.p(f12);
        this.renderNode.F(ColorKt.l(j10));
        this.renderNode.H(ColorKt.l(j11));
        this.renderNode.i(f15);
        this.renderNode.g(f13);
        this.renderNode.h(f14);
        this.renderNode.f(f16);
        this.renderNode.x(TransformOrigin.f(j6) * this.renderNode.getWidth());
        this.renderNode.y(TransformOrigin.g(j6) * this.renderNode.getHeight());
        this.renderNode.A(z6 && shape != RectangleShapeKt.a());
        this.renderNode.m(z6 && shape == RectangleShapeKt.a());
        this.renderNode.l(renderEffect);
        boolean zG = this.outlineResolver.g(shape, this.renderNode.e(), this.renderNode.s(), this.renderNode.I(), layoutDirection, density);
        this.renderNode.z(this.outlineResolver.c());
        if (this.renderNode.s() && !this.outlineResolver.d()) {
            z10 = true;
        }
        if (z11 != z10 || (z10 && zG)) {
            invalidate();
        } else {
            l();
        }
        if (!this.drawnWithZ && this.renderNode.I() > 0.0f && (aVar = this.invalidateParentLayer) != null) {
            aVar.invoke();
        }
        this.matrixCache.c();
    }

    public RenderNodeLayer(@NotNull AndroidComposeView ownerView, @NotNull e8.l<? super Canvas, w7.l0> drawBlock, @NotNull e8.a<w7.l0> invalidateParentLayer) {
        kotlin.jvm.internal.t.j(ownerView, "ownerView");
        kotlin.jvm.internal.t.j(drawBlock, "drawBlock");
        kotlin.jvm.internal.t.j(invalidateParentLayer, "invalidateParentLayer");
        this.ownerView = ownerView;
        this.drawBlock = drawBlock;
        this.invalidateParentLayer = invalidateParentLayer;
        this.outlineResolver = new OutlineResolver(ownerView.getDensity());
        this.matrixCache = new LayerMatrixCache<>(getMatrix);
        this.canvasHolder = new CanvasHolder();
        this.transformOrigin = TransformOrigin.Companion.a();
        DeviceRenderNode renderNodeApi29 = Build.VERSION.SDK_INT >= 29 ? new RenderNodeApi29(ownerView) : new RenderNodeApi23(ownerView);
        renderNodeApi29.t(true);
        this.renderNode = renderNodeApi29;
    }

    private final void j(Canvas canvas) {
        if (this.renderNode.s() || this.renderNode.D()) {
            this.outlineResolver.a(canvas);
        }
    }

    private final void k(boolean z6) {
        if (z6 != this.isDirty) {
            this.isDirty = z6;
            this.ownerView.a0(this, z6);
        }
    }

    private final void l() {
        if (Build.VERSION.SDK_INT >= 26) {
            WrapperRenderNodeLayerHelperMethods.INSTANCE.a(this.ownerView);
        } else {
            this.ownerView.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void a(@NotNull MutableRect rect, boolean z6) {
        kotlin.jvm.internal.t.j(rect, "rect");
        if (!z6) {
            androidx.compose.ui.graphics.Matrix.g(this.matrixCache.b(this.renderNode), rect);
            return;
        }
        float[] fArrA = this.matrixCache.a(this.renderNode);
        if (fArrA == null) {
            rect.g(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            androidx.compose.ui.graphics.Matrix.g(fArrA, rect);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void b(@NotNull Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        android.graphics.Canvas canvasC = AndroidCanvas_androidKt.c(canvas);
        if (canvasC.isHardwareAccelerated()) {
            i();
            boolean z6 = this.renderNode.I() > 0.0f;
            this.drawnWithZ = z6;
            if (z6) {
                canvas.o();
            }
            this.renderNode.j(canvasC);
            if (this.drawnWithZ) {
                canvas.h();
                return;
            }
            return;
        }
        float fC = this.renderNode.c();
        float fE = this.renderNode.E();
        float fA = this.renderNode.a();
        float fW = this.renderNode.w();
        if (this.renderNode.e() < 1.0f) {
            Paint paintA = this.softwareLayerPaint;
            if (paintA == null) {
                paintA = AndroidPaint_androidKt.a();
                this.softwareLayerPaint = paintA;
            }
            paintA.b(this.renderNode.e());
            canvasC.saveLayer(fC, fE, fA, fW, paintA.m());
        } else {
            canvas.r();
        }
        canvas.b(fC, fE);
        canvas.s(this.matrixCache.b(this.renderNode));
        j(canvas);
        e8.l<? super Canvas, w7.l0> lVar = this.drawBlock;
        if (lVar != null) {
            lVar.invoke(canvas);
        }
        canvas.n();
        k(false);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void c(@NotNull e8.l<? super Canvas, w7.l0> drawBlock, @NotNull e8.a<w7.l0> invalidateParentLayer) {
        kotlin.jvm.internal.t.j(drawBlock, "drawBlock");
        kotlin.jvm.internal.t.j(invalidateParentLayer, "invalidateParentLayer");
        k(false);
        this.isDestroyed = false;
        this.drawnWithZ = false;
        this.transformOrigin = TransformOrigin.Companion.a();
        this.drawBlock = drawBlock;
        this.invalidateParentLayer = invalidateParentLayer;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public long d(long j6, boolean z6) {
        if (!z6) {
            return androidx.compose.ui.graphics.Matrix.f(this.matrixCache.b(this.renderNode), j6);
        }
        float[] fArrA = this.matrixCache.a(this.renderNode);
        return fArrA != null ? androidx.compose.ui.graphics.Matrix.f(fArrA, j6) : Offset.Companion.a();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void destroy() {
        if (this.renderNode.r()) {
            this.renderNode.C();
        }
        this.drawBlock = null;
        this.invalidateParentLayer = null;
        this.isDestroyed = true;
        k(false);
        this.ownerView.g0();
        this.ownerView.e0(this);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void h(long j6) {
        int iC = this.renderNode.c();
        int iE = this.renderNode.E();
        int iJ = IntOffset.j(j6);
        int iK = IntOffset.k(j6);
        if (iC == iJ && iE == iK) {
            return;
        }
        this.renderNode.v(iJ - iC);
        this.renderNode.q(iK - iE);
        l();
        this.matrixCache.c();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void i() {
        if (this.isDirty || !this.renderNode.r()) {
            k(false);
            Path pathB = (!this.renderNode.s() || this.outlineResolver.d()) ? null : this.outlineResolver.b();
            e8.l<? super Canvas, w7.l0> lVar = this.drawBlock;
            if (lVar != null) {
                this.renderNode.G(this.canvasHolder, pathB, lVar);
            }
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void invalidate() {
        if (this.isDirty || this.isDestroyed) {
            return;
        }
        this.ownerView.invalidate();
        k(true);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void e(long j6) {
        int iG = IntSize.g(j6);
        int iF = IntSize.f(j6);
        float f = iG;
        this.renderNode.x(TransformOrigin.f(this.transformOrigin) * f);
        float f6 = iF;
        this.renderNode.y(TransformOrigin.g(this.transformOrigin) * f6);
        DeviceRenderNode deviceRenderNode = this.renderNode;
        if (deviceRenderNode.B(deviceRenderNode.c(), this.renderNode.E(), this.renderNode.c() + iG, this.renderNode.E() + iF)) {
            this.outlineResolver.h(SizeKt.a(f, f6));
            this.renderNode.z(this.outlineResolver.c());
            invalidate();
            this.matrixCache.c();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public boolean g(long j6) {
        float fM = Offset.m(j6);
        float fN = Offset.n(j6);
        if (this.renderNode.D()) {
            if (0.0f <= fM && fM < this.renderNode.getWidth() && 0.0f <= fN && fN < this.renderNode.getHeight()) {
                return true;
            }
            return false;
        }
        if (!this.renderNode.s()) {
            return true;
        }
        return this.outlineResolver.e(j6);
    }
}
