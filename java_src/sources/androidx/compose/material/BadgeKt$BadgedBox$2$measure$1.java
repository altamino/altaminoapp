package androidx.compose.material;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class BadgeKt$BadgedBox$2$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $anchorPlaceable;
    final /* synthetic */ Placeable $badgePlaceable;
    final /* synthetic */ MeasureScope $this_Layout;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BadgeKt$BadgedBox$2$measure$1(Placeable placeable, MeasureScope measureScope, Placeable placeable2) {
        super(1);
        this.$badgePlaceable = placeable;
        this.$this_Layout = measureScope;
        this.$anchorPlaceable = placeable2;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        float f = this.$badgePlaceable.Q0() > this.$this_Layout.j0(BadgeKt.e()) * 2 ? BadgeKt.f() : BadgeKt.d();
        Placeable.PlacementScope.n(layout, this.$anchorPlaceable, 0, 0, 0.0f, 4, null);
        Placeable.PlacementScope.n(layout, this.$badgePlaceable, this.$anchorPlaceable.Q0() + this.$this_Layout.j0(f), (-this.$badgePlaceable.B0()) / 2, 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
