package androidx.compose.material;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ListItemKt$BaselinesOffsetColumn$1$measure$2 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ List<Placeable> $placeables;
    final /* synthetic */ Integer[] $y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ListItemKt$BaselinesOffsetColumn$1$measure$2(List<? extends Placeable> list, Integer[] numArr) {
        super(1);
        this.$placeables = list;
        this.$y = numArr;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        List<Placeable> list = this.$placeables;
        Integer[] numArr = this.$y;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Placeable.PlacementScope.n(layout, list.get(i10), 0, numArr[i10].intValue(), 0.0f, 4, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
