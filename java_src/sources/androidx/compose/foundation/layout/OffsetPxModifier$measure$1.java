package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class OffsetPxModifier$measure$1 extends v implements e8.l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ OffsetPxModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OffsetPxModifier$measure$1(OffsetPxModifier offsetPxModifier, MeasureScope measureScope, Placeable placeable) {
        super(1);
        this.this$0 = offsetPxModifier;
        this.$this_measure = measureScope;
        this.$placeable = placeable;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        long jN = this.this$0.a().invoke(this.$this_measure).n();
        if (this.this$0.b()) {
            Placeable.PlacementScope.r(layout, this.$placeable, IntOffset.j(jN), IntOffset.k(jN), 0.0f, null, 12, null);
        } else {
            Placeable.PlacementScope.v(layout, this.$placeable, IntOffset.j(jN), IntOffset.k(jN), 0.0f, null, 12, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
