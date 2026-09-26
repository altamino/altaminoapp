package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Placeable;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class InsetsPaddingModifier$measure$1 extends v implements e8.l<Placeable.PlacementScope, l0> {
    final /* synthetic */ int $left;
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ int $top;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InsetsPaddingModifier$measure$1(Placeable placeable, int i10, int i11) {
        super(1);
        this.$placeable = placeable;
        this.$left = i10;
        this.$top = i11;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.j(layout, this.$placeable, this.$left, this.$top, 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
