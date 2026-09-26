package androidx.compose.foundation.lazy.grid;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class LazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1 extends v implements l<Integer, Integer> {
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ List<LazyGridItemInfo> $visibleItems;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1(boolean z6, List<? extends LazyGridItemInfo> list) {
        super(1);
        this.$isVertical = z6;
        this.$visibleItems = list;
    }

    @NotNull
    public final Integer b(int i10) {
        return Integer.valueOf(this.$isVertical ? this.$visibleItems.get(i10).d() : this.$visibleItems.get(i10).b());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
        return b(num.intValue());
    }
}
