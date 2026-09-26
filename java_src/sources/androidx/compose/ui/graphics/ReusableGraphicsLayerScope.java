package androidx.compose.ui.graphics;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ReusableGraphicsLayerScope implements GraphicsLayerScope {
    private boolean clip;

    @Nullable
    private RenderEffect renderEffect;
    private float rotationX;
    private float rotationY;
    private float rotationZ;
    private float shadowElevation;
    private float translationX;
    private float translationY;
    private float scaleX = 1.0f;
    private float scaleY = 1.0f;
    private float alpha = 1.0f;
    private long ambientShadowColor = GraphicsLayerScopeKt.a();
    private long spotShadowColor = GraphicsLayerScopeKt.a();
    private float cameraDistance = 8.0f;
    private long transformOrigin = TransformOrigin.Companion.a();

    @NotNull
    private Shape shape = RectangleShapeKt.a();

    @NotNull
    private Density graphicsDensity = DensityKt.b(1.0f, 0.0f, 2, null);

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void A(float f) {
        this.shadowElevation = f;
    }

    public float B() {
        return this.rotationY;
    }

    public float H() {
        return this.rotationZ;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float H0(float f) {
        return androidx.compose.ui.unit.a.h(this, f);
    }

    public float I() {
        return this.scaleX;
    }

    public float K() {
        return this.scaleY;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int L0(long j6) {
        return androidx.compose.ui.unit.a.a(this, j6);
    }

    public float M() {
        return this.shadowElevation;
    }

    @NotNull
    public Shape O() {
        return this.shape;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float P(float f) {
        return androidx.compose.ui.unit.a.d(this, f);
    }

    public long Q() {
        return this.spotShadowColor;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void R(@NotNull Shape shape) {
        kotlin.jvm.internal.t.j(shape, "<set-?>");
        this.shape = shape;
    }

    public long S() {
        return this.transformOrigin;
    }

    public float U() {
        return this.translationX;
    }

    public float V() {
        return this.translationY;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long X(long j6) {
        return androidx.compose.ui.unit.a.i(this, j6);
    }

    public final void a0(@NotNull Density density) {
        kotlin.jvm.internal.t.j(density, "<set-?>");
        this.graphicsDensity = density;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void b(float f) {
        this.alpha = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void d(float f) {
        this.translationY = f;
    }

    public float e() {
        return this.alpha;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void f(float f) {
        this.cameraDistance = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void g(float f) {
        this.rotationX = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void h(float f) {
        this.rotationY = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void h0(long j6) {
        this.ambientShadowColor = j6;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void i(float f) {
        this.rotationZ = f;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float j(int i10) {
        return androidx.compose.ui.unit.a.e(this, i10);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int j0(float f) {
        return androidx.compose.ui.unit.a.b(this, f);
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void k(float f) {
        this.scaleX = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void k0(long j6) {
        this.spotShadowColor = j6;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void l(@Nullable RenderEffect renderEffect) {
        this.renderEffect = renderEffect;
    }

    public long m() {
        return this.ambientShadowColor;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void n(float f) {
        this.scaleY = f;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void o(float f) {
        this.translationX = f;
    }

    public float p() {
        return this.cameraDistance;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float p0(long j6) {
        return androidx.compose.ui.unit.a.g(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long q(long j6) {
        return androidx.compose.ui.unit.a.f(this, j6);
    }

    public boolean r() {
        return this.clip;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float s(long j6) {
        return androidx.compose.ui.unit.a.c(this, j6);
    }

    @Nullable
    public RenderEffect u() {
        return this.renderEffect;
    }

    public float x() {
        return this.rotationX;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void y(boolean z6) {
        this.clip = z6;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void z(long j6) {
        this.transformOrigin = j6;
    }

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.graphicsDensity.E0();
    }

    public final void Y() {
        k(1.0f);
        n(1.0f);
        b(1.0f);
        o(0.0f);
        d(0.0f);
        A(0.0f);
        h0(GraphicsLayerScopeKt.a());
        k0(GraphicsLayerScopeKt.a());
        g(0.0f);
        h(0.0f);
        i(0.0f);
        f(8.0f);
        z(TransformOrigin.Companion.a());
        R(RectangleShapeKt.a());
        y(false);
        l(null);
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.graphicsDensity.getDensity();
    }
}
