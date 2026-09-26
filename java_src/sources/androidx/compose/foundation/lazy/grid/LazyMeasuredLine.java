package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class LazyMeasuredLine {
    private final int crossAxisSpacing;
    private final int index;
    private final boolean isVertical;

    @NotNull
    private final LazyMeasuredItem[] items;

    @NotNull
    private final LayoutDirection layoutDirection;
    private final int mainAxisSize;
    private final int mainAxisSizeWithSpacings;
    private final int mainAxisSpacing;
    private final int slotsPerLine;

    @NotNull
    private final List<GridItemSpan> spans;

    public /* synthetic */ LazyMeasuredLine(int i10, LazyMeasuredItem[] lazyMeasuredItemArr, List list, boolean z6, int i11, LayoutDirection layoutDirection, int i12, int i13, k kVar) {
        this(i10, lazyMeasuredItemArr, list, z6, i11, layoutDirection, i12, i13);
    }

    public final int a() {
        return this.index;
    }

    @NotNull
    public final LazyMeasuredItem[] b() {
        return this.items;
    }

    public final int c() {
        return this.mainAxisSize;
    }

    public final int d() {
        return this.mainAxisSizeWithSpacings;
    }

    private LazyMeasuredLine(int i10, LazyMeasuredItem[] lazyMeasuredItemArr, List<GridItemSpan> list, boolean z6, int i11, LayoutDirection layoutDirection, int i12, int i13) {
        this.index = i10;
        this.items = lazyMeasuredItemArr;
        this.spans = list;
        this.isVertical = z6;
        this.slotsPerLine = i11;
        this.layoutDirection = layoutDirection;
        this.mainAxisSpacing = i12;
        this.crossAxisSpacing = i13;
        int iMax = 0;
        for (LazyMeasuredItem lazyMeasuredItem : lazyMeasuredItemArr) {
            iMax = Math.max(iMax, lazyMeasuredItem.d());
        }
        this.mainAxisSize = iMax;
        this.mainAxisSizeWithSpacings = iMax + this.mainAxisSpacing;
    }

    public final boolean e() {
        return this.items.length == 0;
    }

    @NotNull
    public final List<LazyGridPositionedItem> f(int i10, int i11, int i12) {
        LazyMeasuredItem[] lazyMeasuredItemArr = this.items;
        ArrayList arrayList = new ArrayList(lazyMeasuredItemArr.length);
        int length = lazyMeasuredItemArr.length;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int iA = 0;
        while (i13 < length) {
            LazyMeasuredItem lazyMeasuredItem = lazyMeasuredItemArr[i13];
            int i16 = i14 + 1;
            int iD = GridItemSpan.d(this.spans.get(i14).g());
            int i17 = this.layoutDirection == LayoutDirection.Rtl ? (this.slotsPerLine - i15) - iD : i15;
            boolean z6 = this.isVertical;
            int i18 = z6 ? this.index : i17;
            if (!z6) {
                i17 = this.index;
            }
            LazyGridPositionedItem lazyGridPositionedItemF = lazyMeasuredItem.f(i10, iA, i11, i12, i18, i17, this.mainAxisSize);
            iA += lazyMeasuredItem.a() + this.crossAxisSpacing;
            i15 += iD;
            arrayList.add(lazyGridPositionedItemF);
            i13++;
            i14 = i16;
        }
        return arrayList;
    }
}
