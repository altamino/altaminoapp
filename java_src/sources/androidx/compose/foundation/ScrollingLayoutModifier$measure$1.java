package androidx.compose.foundation;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import j8.o;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class ScrollingLayoutModifier$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ int $side;
    final /* synthetic */ ScrollingLayoutModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollingLayoutModifier$measure$1(ScrollingLayoutModifier scrollingLayoutModifier, int i10, Placeable placeable) {
        super(1);
        this.this$0 = scrollingLayoutModifier;
        this.$side = i10;
        this.$placeable = placeable;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        this.this$0.a().l(this.$side);
        int iN = o.n(this.this$0.a().k(), 0, this.$side);
        int i10 = this.this$0.b() ? iN - this.$side : -iN;
        Placeable.PlacementScope.r(layout, this.$placeable, this.this$0.c() ? 0 : i10, this.this$0.c() ? i10 : 0, 0.0f, null, 12, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
