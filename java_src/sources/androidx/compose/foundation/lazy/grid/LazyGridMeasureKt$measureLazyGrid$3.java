package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class LazyGridMeasureKt$measureLazyGrid$3 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ List<LazyGridPositionedItem> $positionedItems;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridMeasureKt$measureLazyGrid$3(List<LazyGridPositionedItem> list) {
        super(1);
        this.$positionedItems = list;
    }

    public final void a(@NotNull Placeable.PlacementScope invoke) {
        t.j(invoke, "$this$invoke");
        List<LazyGridPositionedItem> list = this.$positionedItems;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).r(invoke);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
