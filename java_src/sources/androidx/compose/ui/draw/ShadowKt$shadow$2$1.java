package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ShadowKt$shadow$2$1 extends v implements l<GraphicsLayerScope, l0> {
    final /* synthetic */ long $ambientColor;
    final /* synthetic */ boolean $clip;
    final /* synthetic */ float $elevation;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ long $spotColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShadowKt$shadow$2$1(float f, Shape shape, boolean z6, long j6, long j10) {
        super(1);
        this.$elevation = f;
        this.$shape = shape;
        this.$clip = z6;
        this.$ambientColor = j6;
        this.$spotColor = j10;
    }

    public final void a(@NotNull GraphicsLayerScope graphicsLayer) {
        t.j(graphicsLayer, "$this$graphicsLayer");
        graphicsLayer.A(graphicsLayer.H0(this.$elevation));
        graphicsLayer.R(this.$shape);
        graphicsLayer.y(this.$clip);
        graphicsLayer.h0(this.$ambientColor);
        graphicsLayer.k0(this.$spotColor);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(GraphicsLayerScope graphicsLayerScope) {
        a(graphicsLayerScope);
        return l0.INSTANCE;
    }
}
