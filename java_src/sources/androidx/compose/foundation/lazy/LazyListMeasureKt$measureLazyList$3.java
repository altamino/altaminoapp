package androidx.compose.foundation.lazy;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class LazyListMeasureKt$measureLazyList$3 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ LazyListPositionedItem $headerItem;
    final /* synthetic */ List<LazyListPositionedItem> $positionedItems;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListMeasureKt$measureLazyList$3(List<LazyListPositionedItem> list, LazyListPositionedItem lazyListPositionedItem) {
        super(1);
        this.$positionedItems = list;
        this.$headerItem = lazyListPositionedItem;
    }

    public final void a(@NotNull Placeable.PlacementScope invoke) {
        t.j(invoke, "$this$invoke");
        List<LazyListPositionedItem> list = this.$positionedItems;
        LazyListPositionedItem lazyListPositionedItem = this.$headerItem;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            LazyListPositionedItem lazyListPositionedItem2 = list.get(i10);
            if (lazyListPositionedItem2 != lazyListPositionedItem) {
                lazyListPositionedItem2.j(invoke);
            }
        }
        LazyListPositionedItem lazyListPositionedItem3 = this.$headerItem;
        if (lazyListPositionedItem3 != null) {
            lazyListPositionedItem3.j(invoke);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
