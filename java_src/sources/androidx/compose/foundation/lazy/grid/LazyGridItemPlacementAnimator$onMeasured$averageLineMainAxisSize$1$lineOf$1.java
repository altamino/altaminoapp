package androidx.compose.foundation.lazy.grid;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class LazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1 extends v implements l<Integer, Integer> {
    final /* synthetic */ List<LazyGridPositionedItem> $positionedItems;
    final /* synthetic */ LazyGridItemPlacementAnimator $this_run;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1(LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, List<LazyGridPositionedItem> list) {
        super(1);
        this.$this_run = lazyGridItemPlacementAnimator;
        this.$positionedItems = list;
    }

    @NotNull
    public final Integer b(int i10) {
        return Integer.valueOf(this.$this_run.isVertical ? this.$positionedItems.get(i10).d() : this.$positionedItems.get(i10).b());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
        return b(num.intValue());
    }
}
