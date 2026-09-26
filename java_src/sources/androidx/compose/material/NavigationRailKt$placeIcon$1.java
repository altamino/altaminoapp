package androidx.compose.material;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class NavigationRailKt$placeIcon$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $iconPlaceable;
    final /* synthetic */ int $iconX;
    final /* synthetic */ int $iconY;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavigationRailKt$placeIcon$1(Placeable placeable, int i10, int i11) {
        super(1);
        this.$iconPlaceable = placeable;
        this.$iconX = i10;
        this.$iconY = i11;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.n(layout, this.$iconPlaceable, this.$iconX, this.$iconY, 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
