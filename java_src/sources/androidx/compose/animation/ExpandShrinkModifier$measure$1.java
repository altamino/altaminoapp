package androidx.compose.animation;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class ExpandShrinkModifier$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ long $offset;
    final /* synthetic */ long $offsetDelta;
    final /* synthetic */ Placeable $placeable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExpandShrinkModifier$measure$1(Placeable placeable, long j6, long j10) {
        super(1);
        this.$placeable = placeable;
        this.$offset = j6;
        this.$offsetDelta = j10;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.j(layout, this.$placeable, IntOffset.j(this.$offset) + IntOffset.j(this.$offsetDelta), IntOffset.k(this.$offset) + IntOffset.k(this.$offsetDelta), 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
