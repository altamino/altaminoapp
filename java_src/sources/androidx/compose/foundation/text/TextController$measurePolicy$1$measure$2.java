package androidx.compose.foundation.text;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
final class TextController$measurePolicy$1$measure$2 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ List<u<Placeable, IntOffset>> $placeables;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextController$measurePolicy$1$measure$2(List<? extends u<? extends Placeable, IntOffset>> list) {
        super(1);
        this.$placeables = list;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        List<u<Placeable, IntOffset>> list = this.$placeables;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            u<Placeable, IntOffset> uVar = list.get(i10);
            Placeable.PlacementScope.l(layout, uVar.a(), uVar.b().n(), 0.0f, 2, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
