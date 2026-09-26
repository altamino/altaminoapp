package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RenderEffect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
public final class RenderNodeApi29 implements DeviceRenderNode {

    @Nullable
    private RenderEffect internalRenderEffect;

    @NotNull
    private final AndroidComposeView ownerView;

    @NotNull
    private final RenderNode renderNode;

    public RenderNodeApi29(@NotNull AndroidComposeView ownerView) {
        kotlin.jvm.internal.t.j(ownerView, "ownerView");
        this.ownerView = ownerView;
        this.renderNode = u0.a("Compose");
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void A(boolean z6) {
        this.renderNode.setClipToOutline(z6);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean B(int i10, int i11, int i12, int i13) {
        return this.renderNode.setPosition(i10, i11, i12, i13);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void C() {
        this.renderNode.discardDisplayList();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean D() {
        return this.renderNode.getClipToBounds();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int E() {
        return this.renderNode.getTop();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void F(int i10) {
        this.renderNode.setAmbientShadowColor(i10);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void G(@NotNull CanvasHolder canvasHolder, @Nullable Path path, @NotNull e8.l<? super Canvas, w7.l0> drawBlock) {
        kotlin.jvm.internal.t.j(canvasHolder, "canvasHolder");
        kotlin.jvm.internal.t.j(drawBlock, "drawBlock");
        RecordingCanvas recordingCanvasBeginRecording = this.renderNode.beginRecording();
        kotlin.jvm.internal.t.i(recordingCanvasBeginRecording, "renderNode.beginRecording()");
        android.graphics.Canvas canvasY = canvasHolder.a().y();
        canvasHolder.a().z(recordingCanvasBeginRecording);
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
        this.renderNode.endRecording();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void H(int i10) {
        this.renderNode.setSpotShadowColor(i10);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public float I() {
        return this.renderNode.getElevation();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int a() {
        return this.renderNode.getRight();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void b(float f) {
        this.renderNode.setAlpha(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int c() {
        return this.renderNode.getLeft();
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
        this.renderNode.setCameraDistance(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void g(float f) {
        this.renderNode.setRotationX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getHeight() {
        return this.renderNode.getHeight();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int getWidth() {
        return this.renderNode.getWidth();
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void h(float f) {
        this.renderNode.setRotationY(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void i(float f) {
        this.renderNode.setRotationZ(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void j(@NotNull android.graphics.Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        canvas.drawRenderNode(this.renderNode);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void k(float f) {
        this.renderNode.setScaleX(f);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void l(@Nullable RenderEffect renderEffect) {
        this.internalRenderEffect = renderEffect;
        if (Build.VERSION.SDK_INT >= 31) {
            RenderNodeApi29VerificationHelper.INSTANCE.a(this.renderNode, renderEffect);
        }
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public void m(boolean z6) {
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
    public void q(int i10) {
        this.renderNode.offsetTopAndBottom(i10);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public boolean r() {
        return this.renderNode.hasDisplayList();
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
    public void v(int i10) {
        this.renderNode.offsetLeftAndRight(i10);
    }

    @Override // androidx.compose.ui.platform.DeviceRenderNode
    public int w() {
        return this.renderNode.getBottom();
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
}
