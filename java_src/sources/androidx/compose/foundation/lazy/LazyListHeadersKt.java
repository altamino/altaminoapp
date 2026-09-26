package androidx.compose.foundation.lazy;

import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class LazyListHeadersKt {
    @Nullable
    public static final LazyListPositionedItem a(@NotNull List<LazyListPositionedItem> composedVisibleItems, @NotNull LazyMeasuredItemProvider itemProvider, @NotNull List<Integer> headerIndexes, int i10, int i11, int i12) {
        t.j(composedVisibleItems, "composedVisibleItems");
        t.j(itemProvider, "itemProvider");
        t.j(headerIndexes, "headerIndexes");
        int index = ((LazyListPositionedItem) d0.j0(composedVisibleItems)).getIndex();
        int size = headerIndexes.size();
        int iIntValue = -1;
        int iIntValue2 = -1;
        int i13 = 0;
        while (i13 < size && headerIndexes.get(i13).intValue() <= index) {
            iIntValue = headerIndexes.get(i13).intValue();
            i13++;
            iIntValue2 = ((i13 < 0 || i13 > v.o(headerIndexes)) ? -1 : headerIndexes.get(i13)).intValue();
        }
        int size2 = composedVisibleItems.size();
        int iA = Integer.MIN_VALUE;
        int iA2 = Integer.MIN_VALUE;
        int i14 = -1;
        for (int i15 = 0; i15 < size2; i15++) {
            LazyListPositionedItem lazyListPositionedItem = composedVisibleItems.get(i15);
            if (lazyListPositionedItem.getIndex() == iIntValue) {
                iA = lazyListPositionedItem.a();
                i14 = i15;
            } else if (lazyListPositionedItem.getIndex() == iIntValue2) {
                iA2 = lazyListPositionedItem.a();
            }
        }
        if (iIntValue == -1) {
            return null;
        }
        LazyMeasuredItem lazyMeasuredItemA = itemProvider.a(DataIndex.b(iIntValue));
        int iMax = iA != Integer.MIN_VALUE ? Math.max(-i10, iA) : -i10;
        if (iA2 != Integer.MIN_VALUE) {
            iMax = Math.min(iMax, iA2 - lazyMeasuredItemA.d());
        }
        LazyListPositionedItem lazyListPositionedItemF = lazyMeasuredItemA.f(iMax, i11, i12);
        if (i14 != -1) {
            composedVisibleItems.set(i14, lazyListPositionedItemF);
        } else {
            composedVisibleItems.add(0, lazyListPositionedItemF);
        }
        return lazyListPositionedItemF;
    }
}
