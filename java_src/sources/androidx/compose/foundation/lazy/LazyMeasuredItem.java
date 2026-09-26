package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import kotlin.collections.p;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class LazyMeasuredItem {
    private final int afterContentPadding;
    private final int beforeContentPadding;
    private final int crossAxisSize;

    @Nullable
    private final Alignment.Horizontal horizontalAlignment;
    private final int index;
    private final boolean isVertical;

    @NotNull
    private final Object key;

    @NotNull
    private final LayoutDirection layoutDirection;

    @NotNull
    private final Placeable[] placeables;

    @NotNull
    private final LazyListItemPlacementAnimator placementAnimator;
    private final boolean reverseLayout;
    private final int size;
    private final int sizeWithSpacings;
    private final int spacing;

    @Nullable
    private final Alignment.Vertical verticalAlignment;
    private final long visualOffset;

    @ExperimentalFoundationApi
    public /* synthetic */ LazyMeasuredItem(int i10, Placeable[] placeableArr, boolean z6, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z10, int i11, int i12, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, int i13, long j6, Object obj, k kVar) {
        this(i10, placeableArr, z6, horizontal, vertical, layoutDirection, z10, i11, i12, lazyListItemPlacementAnimator, i13, j6, obj);
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
        return this.size;
    }

    public final int e() {
        return this.sizeWithSpacings;
    }

    private LazyMeasuredItem(int i10, Placeable[] placeableArr, boolean z6, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z10, int i11, int i12, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, int i13, long j6, Object obj) {
        this.index = i10;
        this.placeables = placeableArr;
        this.isVertical = z6;
        this.horizontalAlignment = horizontal;
        this.verticalAlignment = vertical;
        this.layoutDirection = layoutDirection;
        this.reverseLayout = z10;
        this.beforeContentPadding = i11;
        this.afterContentPadding = i12;
        this.placementAnimator = lazyListItemPlacementAnimator;
        this.spacing = i13;
        this.visualOffset = j6;
        this.key = obj;
        int iB0 = 0;
        int iMax = 0;
        for (Placeable placeable : placeableArr) {
            iB0 += this.isVertical ? placeable.B0() : placeable.Q0();
            iMax = Math.max(iMax, !this.isVertical ? placeable.B0() : placeable.Q0());
        }
        this.size = iB0;
        this.sizeWithSpacings = iB0 + this.spacing;
        this.crossAxisSize = iMax;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0039  */
    /* JADX WARN: Code duplicated, block: B:23:0x003b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    /* JADX WARN: Code duplicated, block: B:32:0x0067  */
    /* JADX WARN: Code duplicated, block: B:34:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0080  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085  */
    /* JADX WARN: Code duplicated, block: B:57:0x005d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00a1 A[SYNTHETIC] */
    @NotNull
    public final LazyListPositionedItem f(int i10, int i11, int i12) {
        boolean z6;
        Placeable placeable;
        int size;
        Alignment.Vertical vertical;
        long jA;
        int iQ0;
        Alignment.Horizontal horizontal;
        ArrayList arrayList = new ArrayList();
        int i13 = this.isVertical ? i12 : i11;
        boolean z10 = this.reverseLayout;
        int i14 = z10 ? (i13 - i10) - this.size : i10;
        int iR = z10 ? p.R(this.placeables) : 0;
        while (true) {
            z6 = this.reverseLayout;
            if (z6) {
                if (iR < 0) {
                    break;
                }
                placeable = this.placeables[iR];
                if (z6) {
                    size = 0;
                } else {
                    size = arrayList.size();
                }
                if (this.isVertical) {
                    horizontal = this.horizontalAlignment;
                    if (horizontal != null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    jA = IntOffsetKt.a(horizontal.a(placeable.Q0(), i11, this.layoutDirection), i14);
                } else {
                    vertical = this.verticalAlignment;
                    if (vertical != null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    jA = IntOffsetKt.a(i14, vertical.a(placeable.B0(), i12));
                }
                long j6 = jA;
                if (this.isVertical) {
                    iQ0 = placeable.B0();
                } else {
                    iQ0 = placeable.Q0();
                }
                i14 += iQ0;
                arrayList.add(size, new LazyListPlaceableWrapper(j6, placeable, this.placeables[iR].e(), null));
                iR = this.reverseLayout ? iR - 1 : iR + 1;
            } else {
                if (iR >= this.placeables.length) {
                    break;
                }
                placeable = this.placeables[iR];
                if (z6) {
                    size = 0;
                } else {
                    size = arrayList.size();
                }
                if (this.isVertical) {
                    horizontal = this.horizontalAlignment;
                    if (horizontal != null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    jA = IntOffsetKt.a(horizontal.a(placeable.Q0(), i11, this.layoutDirection), i14);
                } else {
                    vertical = this.verticalAlignment;
                    if (vertical != null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    jA = IntOffsetKt.a(i14, vertical.a(placeable.B0(), i12));
                }
                long j10 = jA;
                if (this.isVertical) {
                    iQ0 = placeable.B0();
                } else {
                    iQ0 = placeable.Q0();
                }
                i14 += iQ0;
                arrayList.add(size, new LazyListPlaceableWrapper(j10, placeable, this.placeables[iR].e(), null));
                if (this.reverseLayout) {
                }
            }
        }
        return new LazyListPositionedItem(i10, this.index, this.key, this.size, this.sizeWithSpacings, -(!z6 ? this.beforeContentPadding : this.afterContentPadding), i13 + (!z6 ? this.afterContentPadding : this.beforeContentPadding), this.isVertical, arrayList, this.placementAnimator, this.visualOffset, null);
    }
}
