package androidx.compose.material;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ListItemKt$OffsetToBaselineOrCenter$1$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ int $y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ListItemKt$OffsetToBaselineOrCenter$1$measure$1(Placeable placeable, int i10) {
        super(1);
        this.$placeable = placeable;
        this.$y = i10;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.n(layout, this.$placeable, 0, this.$y, 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
