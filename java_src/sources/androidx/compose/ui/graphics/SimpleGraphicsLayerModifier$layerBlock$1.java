package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SimpleGraphicsLayerModifier$layerBlock$1 extends kotlin.jvm.internal.v implements e8.l<GraphicsLayerScope, w7.l0> {
    final /* synthetic */ SimpleGraphicsLayerModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SimpleGraphicsLayerModifier$layerBlock$1(SimpleGraphicsLayerModifier simpleGraphicsLayerModifier) {
        super(1);
        this.this$0 = simpleGraphicsLayerModifier;
    }

    public final void a(@NotNull GraphicsLayerScope graphicsLayerScope) {
        kotlin.jvm.internal.t.j(graphicsLayerScope, "$this$null");
        graphicsLayerScope.k(this.this$0.scaleX);
        graphicsLayerScope.n(this.this$0.scaleY);
        graphicsLayerScope.b(this.this$0.alpha);
        graphicsLayerScope.o(this.this$0.translationX);
        graphicsLayerScope.d(this.this$0.translationY);
        graphicsLayerScope.A(this.this$0.shadowElevation);
        graphicsLayerScope.g(this.this$0.rotationX);
        graphicsLayerScope.h(this.this$0.rotationY);
        graphicsLayerScope.i(this.this$0.rotationZ);
        graphicsLayerScope.f(this.this$0.cameraDistance);
        graphicsLayerScope.z(this.this$0.transformOrigin);
        graphicsLayerScope.R(this.this$0.shape);
        graphicsLayerScope.y(this.this$0.clip);
        graphicsLayerScope.l(this.this$0.renderEffect);
        graphicsLayerScope.h0(this.this$0.ambientShadowColor);
        graphicsLayerScope.k0(this.this$0.spotShadowColor);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(GraphicsLayerScope graphicsLayerScope) {
        a(graphicsLayerScope);
        return w7.l0.INSTANCE;
    }
}
