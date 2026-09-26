package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.os.Build;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RenderEffect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public final class RenderNodeApi23 implements DeviceRenderNode {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static boolean needToValidateAccess = true;
    private static boolean testFailCreateRenderNode;
    private int bottom;
    private boolean clipToBounds;
    private int left;

    @NotNull
    private final AndroidComposeView ownerView;

    @Nullable
    private RenderEffect renderEffect;

    @NotNull
    private final RenderNode renderNode;
    private int right;
    private int top;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean D() {
        return this.clipToBounds;
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int E() {
        return this.top;
    }

    public void K(int i10) {
        this.bottom = i10;
    }

    public void L(int i10) {
        this.left = i10;
    }

    public void M(int i10) {
        this.right = i10;
    }

    public void N(int i10) {
        this.top = i10;
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int a() {
        return this.right;
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int c() {
        return this.left;
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void l(@Nullable RenderEffect renderEffect) {
        this.renderEffect = renderEffect;
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int w() {
        return this.bottom;
    }

    public RenderNodeApi23(@NotNull AndroidComposeView ownerView) {
        kotlin.jvm.internal.t.j(ownerView, "ownerView");
        this.ownerView = ownerView;
        RenderNode renderNodeCreate = RenderNode.create("Compose", ownerView);
        kotlin.jvm.internal.t.i(renderNodeCreate, "create(\"Compose\", ownerView)");
        this.renderNode = renderNodeCreate;
        if (needToValidateAccess) {
            renderNodeCreate.setScaleX(renderNodeCreate.getScaleX());
            renderNodeCreate.setScaleY(renderNodeCreate.getScaleY());
            renderNodeCreate.setTranslationX(renderNodeCreate.getTranslationX());
            renderNodeCreate.setTranslationY(renderNodeCreate.getTranslationY());
            renderNodeCreate.setElevation(renderNodeCreate.getElevation());
            renderNodeCreate.setRotation(renderNodeCreate.getRotation());
            renderNodeCreate.setRotationX(renderNodeCreate.getRotationX());
            renderNodeCreate.setRotationY(renderNodeCreate.getRotationY());
            renderNodeCreate.setCameraDistance(renderNodeCreate.getCameraDistance());
            renderNodeCreate.setPivotX(renderNodeCreate.getPivotX());
            renderNodeCreate.setPivotY(renderNodeCreate.getPivotY());
            renderNodeCreate.setClipToOutline(renderNodeCreate.getClipToOutline());
            renderNodeCreate.setClipToBounds(false);
            renderNodeCreate.setAlpha(renderNodeCreate.getAlpha());
            renderNodeCreate.isValid();
            renderNodeCreate.setLeftTopRightBottom(0, 0, 0, 0);
            renderNodeCreate.offsetLeftAndRight(0);
            renderNodeCreate.offsetTopAndBottom(0);
            O(renderNodeCreate);
            J();
            needToValidateAccess = false;
        }
        if (testFailCreateRenderNode) {
            throw new NoClassDefFoundError();
        }
    }

    private final void J() {
        if (Build.VERSION.SDK_INT >= 24) {
            RenderNodeVerificationHelper24.INSTANCE.a(this.renderNode);
        } else {
            RenderNodeVerificationHelper23.INSTANCE.a(this.renderNode);
        }
    }

    private final void O(RenderNode renderNode) {
        if (Build.VERSION.SDK_INT >= 28) {
            RenderNodeVerificationHelper28 renderNodeVerificationHelper28 = RenderNodeVerificationHelper28.INSTANCE;
            renderNodeVerificationHelper28.c(renderNode, renderNodeVerificationHelper28.a(renderNode));
            renderNodeVerificationHelper28.d(renderNode, renderNodeVerificationHelper28.b(renderNode));
        }
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void A(boolean z6) {
        this.renderNode.setClipToOutline(z6);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void F(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            RenderNodeVerificationHelper28.INSTANCE.c(this.renderNode, i10);
        }
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void G(@NotNull CanvasHolder canvasHolder, @Nullable Path path, @NotNull e8.l<? super Canvas, w7.l0> drawBlock) {
        kotlin.jvm.internal.t.j(canvasHolder, "canvasHolder");
        kotlin.jvm.internal.t.j(drawBlock, "drawBlock");
        DisplayListCanvas displayListCanvasStart = this.renderNode.start(getWidth(), getHeight());
        kotlin.jvm.internal.t.i(displayListCanvasStart, "renderNode.start(width, height)");
        android.graphics.Canvas canvasY = canvasHolder.a().y();
        canvasHolder.a().z((android.graphics.Canvas) displayListCanvasStart);
        AndroidCanvas androidCanvasA = canvasHolder.a();
        if (path != null) {
            androidCanvasA.r();
            androidx.compose.ui.graphics.b1.c(androidCanvasA, path, 0, 2, null);
        }
        drawBlock.invoke(androidCanvasA);
        if (path != null) {
            androidCanvasA.n();
        }
        canvasHolder.a().z(canvasY);
        this.renderNode.end(displayListCanvasStart);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void H(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            RenderNodeVerificationHelper28.INSTANCE.d(this.renderNode, i10);
        }
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float I() {
        return this.renderNode.getElevation();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void b(float f) {
        this.renderNode.setAlpha(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void d(float f) {
        this.renderNode.setTranslationY(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float e() {
        return this.renderNode.getAlpha();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void f(float f) {
        this.renderNode.setCameraDistance(-f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void g(float f) {
        this.renderNode.setRotationX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void h(float f) {
        this.renderNode.setRotationY(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void i(float f) {
        this.renderNode.setRotation(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void j(@NotNull android.graphics.Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        ((DisplayListCanvas) canvas).drawRenderNode(this.renderNode);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void k(float f) {
        this.renderNode.setScaleX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void m(boolean z6) {
        this.clipToBounds = z6;
        this.renderNode.setClipToBounds(z6);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void n(float f) {
        this.renderNode.setScaleY(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void o(float f) {
        this.renderNode.setTranslationX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void p(float f) {
        this.renderNode.setElevation(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean r() {
        return this.renderNode.isValid();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean s() {
        return this.renderNode.getClipToOutline();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean t(boolean z6) {
        return this.renderNode.setHasOverlappingRendering(z6);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void u(@NotNull Matrix matrix) {
        kotlin.jvm.internal.t.j(matrix, "matrix");
        this.renderNode.getMatrix(matrix);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void x(float f) {
        this.renderNode.setPivotX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void y(float f) {
        this.renderNode.setPivotY(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void z(@Nullable Outline outline) {
        this.renderNode.setOutline(outline);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean B(int i10, int i11, int i12, int i13) {
        L(i10);
        N(i11);
        M(i12);
        K(i13);
        return this.renderNode.setLeftTopRightBottom(i10, i11, i12, i13);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void C() {
        J();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getHeight() {
        return w() - E();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getWidth() {
        return a() - c();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void q(int i10) {
        N(E() + i10);
        K(w() + i10);
        this.renderNode.offsetTopAndBottom(i10);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void v(int i10) {
        L(c() + i10);
        M(a() + i10);
        this.renderNode.offsetLeftAndRight(i10);
    }
}
