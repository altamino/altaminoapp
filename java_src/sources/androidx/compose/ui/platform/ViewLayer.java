package androidx.compose.ui.platform;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.ColorKt;
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
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class ViewLayer extends View implements OwnedLayer, GraphicLayerInfo {
    private static boolean hasRetrievedMethod;

    @Nullable
    private static Field recreateDisplayList;
    private static boolean shouldUseDispatchDraw;

    @Nullable
    private static Method updateDisplayListIfDirtyMethod;

    @NotNull
    private final CanvasHolder canvasHolder;

    @Nullable
    private Rect clipBoundsCache;
    private boolean clipToBounds;

    @NotNull
    private final DrawChildContainer container;

    @Nullable
    private e8.l<? super Canvas, w7.l0> drawBlock;
    private boolean drawnWithZ;

    @Nullable
    private e8.a<w7.l0> invalidateParentLayer;
    private boolean isInvalidated;
    private long mTransformOrigin;

    @NotNull
    private final LayerMatrixCache<View> matrixCache;

    @NotNull
    private final OutlineResolver outlineResolver;

    @NotNull
    private final AndroidComposeView ownerView;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final e8.p<View, Matrix, w7.l0> getMatrix = ViewLayer$Companion$getMatrix$1.INSTANCE;

    @NotNull
    private static final ViewOutlineProvider OutlineProvider = new ViewOutlineProvider() { // from class: androidx.compose.ui.platform.ViewLayer$Companion$OutlineProvider$1
        @Override // android.view.ViewOutlineProvider
        public void getOutline(@NotNull View view, @NotNull Outline outline) {
            kotlin.jvm.internal.t.j(view, "view");
            kotlin.jvm.internal.t.j(outline, "outline");
            Outline outlineC = ((ViewLayer) view).outlineResolver.c();
            kotlin.jvm.internal.t.g(outlineC);
            outline.set(outlineC);
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @SuppressLint({"BanUncheckedReflection"})
        public final void d(@NotNull View view) {
            kotlin.jvm.internal.t.j(view, "view");
            try {
                if (!a()) {
                    ViewLayer.hasRetrievedMethod = true;
                    if (Build.VERSION.SDK_INT < 28) {
                        ViewLayer.updateDisplayListIfDirtyMethod = View.class.getDeclaredMethod("updateDisplayListIfDirty", new Class[0]);
                        ViewLayer.recreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
                    } else {
                        ViewLayer.updateDisplayListIfDirtyMethod = (Method) Class.class.getDeclaredMethod("getDeclaredMethod", String.class, new Class[0].getClass()).invoke(View.class, "updateDisplayListIfDirty", new Class[0]);
                        ViewLayer.recreateDisplayList = (Field) Class.class.getDeclaredMethod("getDeclaredField", String.class).invoke(View.class, "mRecreateDisplayList");
                    }
                    Method method = ViewLayer.updateDisplayListIfDirtyMethod;
                    if (method != null) {
                        method.setAccessible(true);
                    }
                    Field field = ViewLayer.recreateDisplayList;
                    if (field != null) {
                        field.setAccessible(true);
                    }
                }
                Field field2 = ViewLayer.recreateDisplayList;
                if (field2 != null) {
                    field2.setBoolean(view, true);
                }
                Method method2 = ViewLayer.updateDisplayListIfDirtyMethod;
                if (method2 != null) {
                    method2.invoke(view, new Object[0]);
                }
            } catch (Throwable unused) {
                c(true);
            }
        }

        public final boolean a() {
            return ViewLayer.hasRetrievedMethod;
        }

        public final boolean b() {
            return ViewLayer.shouldUseDispatchDraw;
        }

        public final void c(boolean z6) {
            ViewLayer.shouldUseDispatchDraw = z6;
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
    public void destroy() {
        setInvalidated(false);
        this.ownerView.g0();
        this.drawBlock = null;
        this.invalidateParentLayer = null;
        this.ownerView.e0(this);
        this.container.removeViewInLayout(this);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void f(float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14, float f15, float f16, long j6, @NotNull Shape shape, boolean z6, @Nullable RenderEffect renderEffect, long j10, long j11, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        e8.a<w7.l0> aVar;
        kotlin.jvm.internal.t.j(shape, "shape");
        kotlin.jvm.internal.t.j(layoutDirection, "layoutDirection");
        kotlin.jvm.internal.t.j(density, "density");
        this.mTransformOrigin = j6;
        setScaleX(f);
        setScaleY(f6);
        setAlpha(f7);
        setTranslationX(f10);
        setTranslationY(f11);
        setElevation(f12);
        setRotation(f15);
        setRotationX(f13);
        setRotationY(f14);
        setPivotX(TransformOrigin.f(this.mTransformOrigin) * getWidth());
        setPivotY(TransformOrigin.g(this.mTransformOrigin) * getHeight());
        setCameraDistancePx(f16);
        this.clipToBounds = z6 && shape == RectangleShapeKt.a();
        t();
        boolean z10 = getManualClipPath() != null;
        setClipToOutline(z6 && shape != RectangleShapeKt.a());
        boolean zG = this.outlineResolver.g(shape, getAlpha(), getClipToOutline(), getElevation(), layoutDirection, density);
        u();
        boolean z11 = getManualClipPath() != null;
        if (z10 != z11 || (z11 && zG)) {
            invalidate();
        }
        if (!this.drawnWithZ && getElevation() > 0.0f && (aVar = this.invalidateParentLayer) != null) {
            aVar.invoke();
        }
        this.matrixCache.c();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            ViewLayerVerificationHelper28 viewLayerVerificationHelper28 = ViewLayerVerificationHelper28.INSTANCE;
            viewLayerVerificationHelper28.a(this, ColorKt.l(j10));
            viewLayerVerificationHelper28.b(this, ColorKt.l(j11));
        }
        if (i10 >= 31) {
            ViewLayerVerificationHelper31.INSTANCE.a(this, renderEffect);
        }
    }

    @Override // android.view.View
    public void forceLayout() {
    }

    @NotNull
    public final DrawChildContainer getContainer() {
        return this.container;
    }

    @NotNull
    public final AndroidComposeView getOwnerView() {
        return this.ownerView;
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
    }

    public final boolean s() {
        return this.isInvalidated;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewLayer(@NotNull AndroidComposeView ownerView, @NotNull DrawChildContainer container, @NotNull e8.l<? super Canvas, w7.l0> drawBlock, @NotNull e8.a<w7.l0> invalidateParentLayer) {
        super(ownerView.getContext());
        kotlin.jvm.internal.t.j(ownerView, "ownerView");
        kotlin.jvm.internal.t.j(container, "container");
        kotlin.jvm.internal.t.j(drawBlock, "drawBlock");
        kotlin.jvm.internal.t.j(invalidateParentLayer, "invalidateParentLayer");
        this.ownerView = ownerView;
        this.container = container;
        this.drawBlock = drawBlock;
        this.invalidateParentLayer = invalidateParentLayer;
        this.outlineResolver = new OutlineResolver(ownerView.getDensity());
        this.canvasHolder = new CanvasHolder();
        this.matrixCache = new LayerMatrixCache<>(getMatrix);
        this.mTransformOrigin = TransformOrigin.Companion.a();
        setWillNotDraw(false);
        setId(View.generateViewId());
        container.addView(this);
    }

    private final void setInvalidated(boolean z6) {
        if (z6 != this.isInvalidated) {
            this.isInvalidated = z6;
            this.ownerView.a0(this, z6);
        }
    }

    private final void t() {
        Rect rect;
        if (this.clipToBounds) {
            Rect rect2 = this.clipBoundsCache;
            if (rect2 == null) {
                this.clipBoundsCache = new Rect(0, 0, getWidth(), getHeight());
            } else {
                kotlin.jvm.internal.t.g(rect2);
                rect2.set(0, 0, getWidth(), getHeight());
            }
            rect = this.clipBoundsCache;
        } else {
            rect = null;
        }
        setClipBounds(rect);
    }

    private final void u() {
        setOutlineProvider(this.outlineResolver.c() != null ? OutlineProvider : null);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void a(@NotNull MutableRect rect, boolean z6) {
        kotlin.jvm.internal.t.j(rect, "rect");
        if (!z6) {
            androidx.compose.ui.graphics.Matrix.g(this.matrixCache.b(this), rect);
            return;
        }
        float[] fArrA = this.matrixCache.a(this);
        if (fArrA != null) {
            androidx.compose.ui.graphics.Matrix.g(fArrA, rect);
        } else {
            rect.g(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void b(@NotNull Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        boolean z6 = getElevation() > 0.0f;
        this.drawnWithZ = z6;
        if (z6) {
            canvas.o();
        }
        this.container.a(canvas, this, getDrawingTime());
        if (this.drawnWithZ) {
            canvas.h();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void c(@NotNull e8.l<? super Canvas, w7.l0> drawBlock, @NotNull e8.a<w7.l0> invalidateParentLayer) {
        kotlin.jvm.internal.t.j(drawBlock, "drawBlock");
        kotlin.jvm.internal.t.j(invalidateParentLayer, "invalidateParentLayer");
        this.container.addView(this);
        this.clipToBounds = false;
        this.drawnWithZ = false;
        this.mTransformOrigin = TransformOrigin.Companion.a();
        this.drawBlock = drawBlock;
        this.invalidateParentLayer = invalidateParentLayer;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public long d(long j6, boolean z6) {
        if (!z6) {
            return androidx.compose.ui.graphics.Matrix.f(this.matrixCache.b(this), j6);
        }
        float[] fArrA = this.matrixCache.a(this);
        return fArrA != null ? androidx.compose.ui.graphics.Matrix.f(fArrA, j6) : Offset.Companion.a();
    }

    @Override // android.view.View
    protected void dispatchDraw(@NotNull android.graphics.Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        boolean z6 = false;
        setInvalidated(false);
        CanvasHolder canvasHolder = this.canvasHolder;
        android.graphics.Canvas canvasY = canvasHolder.a().y();
        canvasHolder.a().z(canvas);
        AndroidCanvas androidCanvasA = canvasHolder.a();
        if (getManualClipPath() != null || !canvas.isHardwareAccelerated()) {
            androidCanvasA.r();
            this.outlineResolver.a(androidCanvasA);
            z6 = true;
        }
        e8.l<? super Canvas, w7.l0> lVar = this.drawBlock;
        if (lVar != null) {
            lVar.invoke(androidCanvasA);
        }
        if (z6) {
            androidCanvasA.n();
        }
        canvasHolder.a().z(canvasY);
    }

    public long getOwnerViewId() {
        if (Build.VERSION.SDK_INT >= 29) {
            return UniqueDrawingIdApi29.a(this.ownerView);
        }
        return -1L;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void i() {
        if (!this.isInvalidated || shouldUseDispatchDraw) {
            return;
        }
        setInvalidated(false);
        Companion.d(this);
    }

    @Override // android.view.View, androidx.compose.ui.node.OwnedLayer
    public void invalidate() {
        if (this.isInvalidated) {
            return;
        }
        setInvalidated(true);
        super.invalidate();
        this.ownerView.invalidate();
    }

    private final Path getManualClipPath() {
        if (getClipToOutline() && !this.outlineResolver.d()) {
            return this.outlineResolver.b();
        }
        return null;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void e(long j6) {
        int iG = IntSize.g(j6);
        int iF = IntSize.f(j6);
        if (iG != getWidth() || iF != getHeight()) {
            float f = iG;
            setPivotX(TransformOrigin.f(this.mTransformOrigin) * f);
            float f6 = iF;
            setPivotY(TransformOrigin.g(this.mTransformOrigin) * f6);
            this.outlineResolver.h(SizeKt.a(f, f6));
            u();
            layout(getLeft(), getTop(), getLeft() + iG, getTop() + iF);
            t();
            this.matrixCache.c();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public boolean g(long j6) {
        float fM = Offset.m(j6);
        float fN = Offset.n(j6);
        if (this.clipToBounds) {
            if (0.0f <= fM && fM < getWidth() && 0.0f <= fN && fN < getHeight()) {
                return true;
            }
            return false;
        }
        if (!getClipToOutline()) {
            return true;
        }
        return this.outlineResolver.e(j6);
    }

    public final float getCameraDistancePx() {
        return getCameraDistance() / getResources().getDisplayMetrics().densityDpi;
    }

    public long getLayerId() {
        return getId();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void h(long j6) {
        int iJ = IntOffset.j(j6);
        if (iJ != getLeft()) {
            offsetLeftAndRight(iJ - getLeft());
            this.matrixCache.c();
        }
        int iK = IntOffset.k(j6);
        if (iK != getTop()) {
            offsetTopAndBottom(iK - getTop());
            this.matrixCache.c();
        }
    }

    public final void setCameraDistancePx(float f) {
        setCameraDistance(f * getResources().getDisplayMetrics().densityDpi);
    }
}
