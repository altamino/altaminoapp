package androidx.compose.ui.graphics;

import androidx.compose.ui.layout.Placeable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class BlockGraphicsLayerModifier$measure$1 extends kotlin.jvm.internal.v implements e8.l<Placeable.PlacementScope, w7.l0> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ BlockGraphicsLayerModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BlockGraphicsLayerModifier$measure$1(Placeable placeable, BlockGraphicsLayerModifier blockGraphicsLayerModifier) {
        super(1);
        this.$placeable = placeable;
        this.this$0 = blockGraphicsLayerModifier;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        kotlin.jvm.internal.t.j(layout, "$this$layout");
        Placeable.PlacementScope.v(layout, this.$placeable, 0, 0, 0.0f, this.this$0.layerBlock, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return w7.l0.INSTANCE;
    }
}
