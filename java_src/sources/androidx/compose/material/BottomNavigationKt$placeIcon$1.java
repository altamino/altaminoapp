package androidx.compose.material;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BottomNavigationKt$placeIcon$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $iconPlaceable;
    final /* synthetic */ int $iconY;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BottomNavigationKt$placeIcon$1(Placeable placeable, int i10) {
        super(1);
        this.$iconPlaceable = placeable;
        this.$iconY = i10;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.n(layout, this.$iconPlaceable, 0, this.$iconY, 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
