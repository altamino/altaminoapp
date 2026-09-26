package androidx.compose.ui.graphics;

import androidx.compose.ui.platform.InspectorInfo;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: renamed from: androidx.compose.ui.graphics.GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes10.dex */
public final class GraphicsLayerModifierKt$graphicsLayerpANQ8Wg$$inlined$debugInspectorInfo$1 extends kotlin.jvm.internal.v implements e8.l<InspectorInfo, w7.l0> {
    final /* synthetic */ float $alpha$inlined;
    final /* synthetic */ long $ambientShadowColor$inlined;
    final /* synthetic */ float $cameraDistance$inlined;
    final /* synthetic */ boolean $clip$inlined;
    final /* synthetic */ RenderEffect $renderEffect$inlined;
    final /* synthetic */ float $rotationX$inlined;
    final /* synthetic */ float $rotationY$inlined;
    final /* synthetic */ float $rotationZ$inlined;
    final /* synthetic */ float $scaleX$inlined;
    final /* synthetic */ float $scaleY$inlined;
    final /* synthetic */ float $shadowElevation$inlined;
    final /* synthetic */ Shape $shape$inlined;
    final /* synthetic */ long $spotShadowColor$inlined;
    final /* synthetic */ long $transformOrigin$inlined;
    final /* synthetic */ float $translationX$inlined;
    final /* synthetic */ float $translationY$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphicsLayerModifierKt$graphicsLayerpANQ8Wg$$inlined$debugInspectorInfo$1(float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14, float f15, float f16, long j6, Shape shape, boolean z6, RenderEffect renderEffect, long j10, long j11) {
        super(1);
        this.$scaleX$inlined = f;
        this.$scaleY$inlined = f6;
        this.$alpha$inlined = f7;
        this.$translationX$inlined = f10;
        this.$translationY$inlined = f11;
        this.$shadowElevation$inlined = f12;
        this.$rotationX$inlined = f13;
        this.$rotationY$inlined = f14;
        this.$rotationZ$inlined = f15;
        this.$cameraDistance$inlined = f16;
        this.$transformOrigin$inlined = j6;
        this.$shape$inlined = shape;
        this.$clip$inlined = z6;
        this.$renderEffect$inlined = renderEffect;
        this.$ambientShadowColor$inlined = j10;
        this.$spotShadowColor$inlined = j11;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        kotlin.jvm.internal.t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("graphicsLayer");
        inspectorInfo.a().c("scaleX", Float.valueOf(this.$scaleX$inlined));
        inspectorInfo.a().c("scaleY", Float.valueOf(this.$scaleY$inlined));
        inspectorInfo.a().c("alpha", Float.valueOf(this.$alpha$inlined));
        inspectorInfo.a().c("translationX", Float.valueOf(this.$translationX$inlined));
        inspectorInfo.a().c("translationY", Float.valueOf(this.$translationY$inlined));
        inspectorInfo.a().c("shadowElevation", Float.valueOf(this.$shadowElevation$inlined));
        inspectorInfo.a().c("rotationX", Float.valueOf(this.$rotationX$inlined));
        inspectorInfo.a().c("rotationY", Float.valueOf(this.$rotationY$inlined));
        inspectorInfo.a().c("rotationZ", Float.valueOf(this.$rotationZ$inlined));
        inspectorInfo.a().c("cameraDistance", Float.valueOf(this.$cameraDistance$inlined));
        inspectorInfo.a().c("transformOrigin", TransformOrigin.b(this.$transformOrigin$inlined));
        inspectorInfo.a().c("shape", this.$shape$inlined);
        inspectorInfo.a().c("clip", Boolean.valueOf(this.$clip$inlined));
        inspectorInfo.a().c("renderEffect", this.$renderEffect$inlined);
        inspectorInfo.a().c("ambientShadowColor", Color.h(this.$ambientShadowColor$inlined));
        inspectorInfo.a().c("spotShadowColor", Color.h(this.$spotShadowColor$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return w7.l0.INSTANCE;
    }
}
