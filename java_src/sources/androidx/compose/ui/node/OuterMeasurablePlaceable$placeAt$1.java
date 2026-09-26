package androidx.compose.ui.node;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class OuterMeasurablePlaceable$placeAt$1 extends v implements e8.a<l0> {
    final /* synthetic */ l<GraphicsLayerScope, l0> $layerBlock;
    final /* synthetic */ long $position;
    final /* synthetic */ float $zIndex;
    final /* synthetic */ OuterMeasurablePlaceable this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    OuterMeasurablePlaceable$placeAt$1(OuterMeasurablePlaceable outerMeasurablePlaceable, long j6, float f, l<? super GraphicsLayerScope, l0> lVar) {
        super(0);
        this.this$0 = outerMeasurablePlaceable;
        this.$position = j6;
        this.$zIndex = f;
        this.$layerBlock = lVar;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.b1(this.$position, this.$zIndex, this.$layerBlock);
    }
}
