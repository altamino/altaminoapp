package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RenderEffectKt;
import androidx.compose.ui.graphics.Shape;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class BlurKt$blur$1 extends v implements l<GraphicsLayerScope, l0> {
    final /* synthetic */ boolean $clip;
    final /* synthetic */ Shape $edgeTreatment;
    final /* synthetic */ float $radiusX;
    final /* synthetic */ float $radiusY;
    final /* synthetic */ int $tileMode;

    public final void a(@NotNull GraphicsLayerScope graphicsLayer) {
        t.j(graphicsLayer, "$this$graphicsLayer");
        float fH0 = graphicsLayer.H0(this.$radiusX);
        float fH1 = graphicsLayer.H0(this.$radiusY);
        graphicsLayer.l((fH0 <= 0.0f || fH1 <= 0.0f) ? null : RenderEffectKt.a(fH0, fH1, this.$tileMode));
        Shape shapeA = this.$edgeTreatment;
        if (shapeA == null) {
            shapeA = RectangleShapeKt.a();
        }
        graphicsLayer.R(shapeA);
        graphicsLayer.y(this.$clip);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(GraphicsLayerScope graphicsLayerScope) {
        a(graphicsLayerScope);
        return l0.INSTANCE;
    }
}
