package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import kotlin.collections.p;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class LazyMeasuredItem {
    private final int afterContentPadding;
    private final int beforeContentPadding;
    private final int crossAxisSize;
    private final int index;
    private final boolean isVertical;

    @NotNull
    private final Object key;

    @NotNull
    private final LayoutDirection layoutDirection;
    private final int mainAxisSize;
    private final int mainAxisSizeWithSpacings;
    private final int mainAxisSpacing;

    @NotNull
    private final Placeable[] placeables;

    @NotNull
    private final LazyGridItemPlacementAnimator placementAnimator;
    private final boolean reverseLayout;
    private final long visualOffset;

    public /* synthetic */ LazyMeasuredItem(int i10, Object obj, boolean z6, int i11, int i12, boolean z10, LayoutDirection layoutDirection, int i13, int i14, Placeable[] placeableArr, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, long j6, k kVar) {
        this(i10, obj, z6, i11, i12, z10, layoutDirection, i13, i14, placeableArr, lazyGridItemPlacementAnimator, j6);
    }

    public final int a() {
        return this.crossAxisSize;
    }

    public final int b() {
        return this.index;
    }

    @NotNull
    public final Object c() {
        return this.key;
    }

    public final int d() {
        return this.mainAxisSize;
    }

    public final int e() {
        return this.mainAxisSizeWithSpacings;
    }

    private LazyMeasuredItem(int i10, Object obj, boolean z6, int i11, int i12, boolean z10, LayoutDirection layoutDirection, int i13, int i14, Placeable[] placeableArr, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, long j6) {
        this.index = i10;
        this.key = obj;
        this.isVertical = z6;
        this.crossAxisSize = i11;
        this.mainAxisSpacing = i12;
        this.reverseLayout = z10;
        this.layoutDirection = layoutDirection;
        this.beforeContentPadding = i13;
        this.afterContentPadding = i14;
        this.placeables = placeableArr;
        this.placementAnimator = lazyGridItemPlacementAnimator;
        this.visualOffset = j6;
        int iMax = 0;
        for (Placeable placeable : placeableArr) {
            iMax = Math.max(iMax, this.isVertical ? placeable.B0() : placeable.Q0());
        }
        this.mainAxisSize = iMax;
        this.mainAxisSizeWithSpacings = iMax + this.mainAxisSpacing;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x005d  */
    /* JADX WARN: Code duplicated, block: B:34:0x005f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x007f A[SYNTHETIC] */
    @NotNull
    public final LazyGridPositionedItem f(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        int size;
        ArrayList arrayList = new ArrayList();
        boolean z6 = this.isVertical;
        int i17 = z6 ? i13 : i12;
        int i18 = this.reverseLayout ? (i17 - i10) - this.mainAxisSize : i10;
        int i19 = (z6 && this.layoutDirection == LayoutDirection.Rtl) ? ((z6 ? i12 : i13) - i11) - this.crossAxisSize : i11;
        long jA = z6 ? IntOffsetKt.a(i19, i18) : IntOffsetKt.a(i18, i19);
        int iR = this.reverseLayout ? p.R(this.placeables) : 0;
        while (true) {
            boolean z10 = this.reverseLayout;
            if (z10) {
                if (iR < 0) {
                    break;
                }
                Placeable placeable = this.placeables[iR];
                if (z10) {
                    size = 0;
                } else {
                    size = arrayList.size();
                }
                arrayList.add(size, new LazyGridPlaceableWrapper(jA, placeable, this.placeables[iR].e(), null));
                iR = this.reverseLayout ? iR - 1 : iR + 1;
            } else {
                if (iR >= this.placeables.length) {
                    break;
                }
                Placeable placeable2 = this.placeables[iR];
                if (z10) {
                    size = 0;
                } else {
                    size = arrayList.size();
                }
                arrayList.add(size, new LazyGridPlaceableWrapper(jA, placeable2, this.placeables[iR].e(), null));
                if (this.reverseLayout) {
                }
            }
        }
        long jA2 = this.isVertical ? IntOffsetKt.a(i11, i10) : IntOffsetKt.a(i10, i11);
        int i20 = this.index;
        Object obj = this.key;
        long jA3 = this.isVertical ? IntSizeKt.a(this.crossAxisSize, this.mainAxisSize) : IntSizeKt.a(this.mainAxisSize, this.crossAxisSize);
        int i21 = this.mainAxisSpacing;
        boolean z11 = this.reverseLayout;
        return new LazyGridPositionedItem(jA2, jA, i20, obj, i14, i15, jA3, i16, i21, -(!z11 ? this.beforeContentPadding : this.afterContentPadding), i17 + (!z11 ? this.afterContentPadding : this.beforeContentPadding), this.isVertical, arrayList, this.placementAnimator, this.visualOffset, null);
    }
}
