package androidx.compose.ui;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class ZIndexModifier$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ ZIndexModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ZIndexModifier$measure$1(Placeable placeable, ZIndexModifier zIndexModifier) {
        super(1);
        this.$placeable = placeable;
        this.this$0 = zIndexModifier;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        layout.i(this.$placeable, 0, 0, this.this$0.zIndex);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
