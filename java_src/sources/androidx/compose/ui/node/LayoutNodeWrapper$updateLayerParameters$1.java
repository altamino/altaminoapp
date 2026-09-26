package androidx.compose.ui.node;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNodeWrapper$updateLayerParameters$1 extends v implements e8.a<l0> {
    final /* synthetic */ l<GraphicsLayerScope, l0> $layerBlock;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LayoutNodeWrapper$updateLayerParameters$1(l<? super GraphicsLayerScope, l0> lVar) {
        super(0);
        this.$layerBlock = lVar;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$layerBlock.invoke(LayoutNodeWrapper.graphicsLayerScope);
    }
}
