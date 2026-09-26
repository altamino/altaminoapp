package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class OffsetModifier$measure$1 extends v implements e8.l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ OffsetModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OffsetModifier$measure$1(OffsetModifier offsetModifier, Placeable placeable, MeasureScope measureScope) {
        super(1);
        this.this$0 = offsetModifier;
        this.$placeable = placeable;
        this.$this_measure = measureScope;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        if (this.this$0.a()) {
            Placeable.PlacementScope.n(layout, this.$placeable, this.$this_measure.j0(this.this$0.b()), this.$this_measure.j0(this.this$0.c()), 0.0f, 4, null);
        } else {
            Placeable.PlacementScope.j(layout, this.$placeable, this.$this_measure.j0(this.this$0.b()), this.$this_measure.j0(this.this$0.c()), 0.0f, 4, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
