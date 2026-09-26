package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class SimpleGraphicsLayerModifier extends InspectorValueInfo implements LayoutModifier {
    private final float alpha;
    private final long ambientShadowColor;
    private final float cameraDistance;
    private final boolean clip;

    @NotNull
    private final e8.l<GraphicsLayerScope, w7.l0> layerBlock;

    @Nullable
    private final RenderEffect renderEffect;
    private final float rotationX;
    private final float rotationY;
    private final float rotationZ;
    private final float scaleX;
    private final float scaleY;
    private final float shadowElevation;

    @NotNull
    private final Shape shape;
    private final long spotShadowColor;
    private final long transformOrigin;
    private final float translationX;
    private final float translationY;

    public /* synthetic */ SimpleGraphicsLayerModifier(float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14, float f15, float f16, long j6, Shape shape, boolean z6, RenderEffect renderEffect, long j10, long j11, e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(f, f6, f7, f10, f11, f12, f13, f14, f15, f16, j6, shape, z6, renderEffect, j10, j11, lVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int K(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.d(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int S(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.b(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int c0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.a(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    private SimpleGraphicsLayerModifier(float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14, float f15, float f16, long j6, Shape shape, boolean z6, RenderEffect renderEffect, long j10, long j11, e8.l<? super InspectorInfo, w7.l0> lVar) {
        super(lVar);
        this.scaleX = f;
        this.scaleY = f6;
        this.alpha = f7;
        this.translationX = f10;
        this.translationY = f11;
        this.shadowElevation = f12;
        this.rotationX = f13;
        this.rotationY = f14;
        this.rotationZ = f15;
        this.cameraDistance = f16;
        this.transformOrigin = j6;
        this.shape = shape;
        this.clip = z6;
        this.renderEffect = renderEffect;
        this.ambientShadowColor = j10;
        this.spotShadowColor = j11;
        this.layerBlock = new SimpleGraphicsLayerModifier$layerBlock$1(this);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        kotlin.jvm.internal.t.j(measure, "$this$measure");
        kotlin.jvm.internal.t.j(measurable, "measurable");
        Placeable placeableB0 = measurable.b0(j6);
        return MeasureScope.CC.b(measure, placeableB0.Q0(), placeableB0.B0(), null, new SimpleGraphicsLayerModifier$measure$1(placeableB0, this), 4, null);
    }

    public boolean equals(@Nullable Object obj) {
        SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = obj instanceof SimpleGraphicsLayerModifier ? (SimpleGraphicsLayerModifier) obj : null;
        return simpleGraphicsLayerModifier != null && this.scaleX == simpleGraphicsLayerModifier.scaleX && this.scaleY == simpleGraphicsLayerModifier.scaleY && this.alpha == simpleGraphicsLayerModifier.alpha && this.translationX == simpleGraphicsLayerModifier.translationX && this.translationY == simpleGraphicsLayerModifier.translationY && this.shadowElevation == simpleGraphicsLayerModifier.shadowElevation && this.rotationX == simpleGraphicsLayerModifier.rotationX && this.rotationY == simpleGraphicsLayerModifier.rotationY && this.rotationZ == simpleGraphicsLayerModifier.rotationZ && this.cameraDistance == simpleGraphicsLayerModifier.cameraDistance && TransformOrigin.e(this.transformOrigin, simpleGraphicsLayerModifier.transformOrigin) && kotlin.jvm.internal.t.e(this.shape, simpleGraphicsLayerModifier.shape) && this.clip == simpleGraphicsLayerModifier.clip && kotlin.jvm.internal.t.e(this.renderEffect, simpleGraphicsLayerModifier.renderEffect) && Color.n(this.ambientShadowColor, simpleGraphicsLayerModifier.ambientShadowColor) && Color.n(this.spotShadowColor, simpleGraphicsLayerModifier.spotShadowColor);
    }

    public int hashCode() {
        int iFloatToIntBits = ((((((((((((((((((((((((Float.floatToIntBits(this.scaleX) * 31) + Float.floatToIntBits(this.scaleY)) * 31) + Float.floatToIntBits(this.alpha)) * 31) + Float.floatToIntBits(this.translationX)) * 31) + Float.floatToIntBits(this.translationY)) * 31) + Float.floatToIntBits(this.shadowElevation)) * 31) + Float.floatToIntBits(this.rotationX)) * 31) + Float.floatToIntBits(this.rotationY)) * 31) + Float.floatToIntBits(this.rotationZ)) * 31) + Float.floatToIntBits(this.cameraDistance)) * 31) + TransformOrigin.h(this.transformOrigin)) * 31) + this.shape.hashCode()) * 31) + androidx.compose.foundation.c.a(this.clip)) * 31;
        RenderEffect renderEffect = this.renderEffect;
        return ((((iFloatToIntBits + (renderEffect != null ? renderEffect.hashCode() : 0)) * 31) + Color.t(this.ambientShadowColor)) * 31) + Color.t(this.spotShadowColor);
    }

    @NotNull
    public String toString() {
        return "SimpleGraphicsLayerModifier(scaleX=" + this.scaleX + ", scaleY=" + this.scaleY + ", alpha = " + this.alpha + ", translationX=" + this.translationX + ", translationY=" + this.translationY + ", shadowElevation=" + this.shadowElevation + ", rotationX=" + this.rotationX + ", rotationY=" + this.rotationY + ", rotationZ=" + this.rotationZ + ", cameraDistance=" + this.cameraDistance + ", transformOrigin=" + ((Object) TransformOrigin.i(this.transformOrigin)) + ", shape=" + this.shape + ", clip=" + this.clip + ", renderEffect=" + this.renderEffect + ", ambientShadowColor=" + ((Object) Color.u(this.ambientShadowColor)) + ", spotShadowColor=" + ((Object) Color.u(this.spotShadowColor)) + ')';
    }
}
