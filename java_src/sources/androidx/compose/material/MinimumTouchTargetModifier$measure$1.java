package androidx.compose.material;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class MinimumTouchTargetModifier$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ int $height;
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ int $width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MinimumTouchTargetModifier$measure$1(int i10, Placeable placeable, int i11) {
        super(1);
        this.$width = i10;
        this.$placeable = placeable;
        this.$height = i11;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.j(layout, this.$placeable, c.c((this.$width - this.$placeable.Q0()) / 2.0f), c.c((this.$height - this.$placeable.B0()) / 2.0f), 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
