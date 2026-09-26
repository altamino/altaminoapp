package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class LazyGridPositionedItem implements LazyGridItemInfo {
    private final int column;
    private final boolean hasAnimations;
    private final int index;
    private final boolean isVertical;

    @NotNull
    private final Object key;
    private final int lineMainAxisSize;
    private final int mainAxisSpacing;
    private final int maxMainAxisOffset;
    private final int minMainAxisOffset;
    private final long offset;
    private final long placeableOffset;

    @NotNull
    private final LazyGridItemPlacementAnimator placementAnimator;
    private final int row;
    private final long size;
    private final long visualOffset;

    @NotNull
    private final List<LazyGridPlaceableWrapper> wrappers;

    public /* synthetic */ LazyGridPositionedItem(long j6, long j10, int i10, Object obj, int i11, int i12, long j11, int i13, int i14, int i15, int i16, boolean z6, List list, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, long j12, k kVar) {
        this(j6, j10, i10, obj, i11, i12, j11, i13, i14, i15, i16, z6, list, lazyGridItemPlacementAnimator, j12);
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public long a() {
        return this.size;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public int b() {
        return this.column;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public long c() {
        return this.offset;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public int d() {
        return this.row;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public int getIndex() {
        return this.index;
    }

    public final boolean h() {
        return this.hasAnimations;
    }

    @NotNull
    public Object i() {
        return this.key;
    }

    public final int j() {
        return this.lineMainAxisSize;
    }

    public final int k() {
        return this.mainAxisSpacing + this.lineMainAxisSize;
    }

    public final long p() {
        return this.placeableOffset;
    }

    private LazyGridPositionedItem(long j6, long j10, int i10, Object obj, int i11, int i12, long j11, int i13, int i14, int i15, int i16, boolean z6, List<LazyGridPlaceableWrapper> list, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, long j12) {
        this.offset = j6;
        this.placeableOffset = j10;
        this.index = i10;
        this.key = obj;
        this.row = i11;
        this.column = i12;
        this.size = j11;
        this.lineMainAxisSize = i13;
        this.mainAxisSpacing = i14;
        this.minMainAxisOffset = i15;
        this.maxMainAxisOffset = i16;
        this.isVertical = z6;
        this.wrappers = list;
        this.placementAnimator = lazyGridItemPlacementAnimator;
        this.visualOffset = j12;
        int iQ = q();
        boolean z10 = false;
        for (int i17 = 0; i17 < iQ; i17++) {
            if (e(i17) != null) {
                z10 = true;
                break;
            }
        }
        this.hasAnimations = z10;
    }

    private final int l(long j6) {
        return this.isVertical ? IntOffset.k(j6) : IntOffset.j(j6);
    }

    private final int n(Placeable placeable) {
        return this.isVertical ? placeable.B0() : placeable.Q0();
    }

    @Nullable
    public final FiniteAnimationSpec<IntOffset> e(int i10) {
        Object objA = this.wrappers.get(i10).a();
        if (objA instanceof FiniteAnimationSpec) {
            return (FiniteAnimationSpec) objA;
        }
        return null;
    }

    public final int f() {
        return this.isVertical ? IntOffset.j(c()) : IntOffset.k(c());
    }

    public final int g() {
        return this.isVertical ? IntSize.g(a()) : IntSize.f(a());
    }

    public final int m(int i10) {
        return n(this.wrappers.get(i10).b());
    }

    public final int o() {
        return this.mainAxisSpacing + (this.isVertical ? IntSize.f(a()) : IntSize.g(a()));
    }

    public final int q() {
        return this.wrappers.size();
    }

    public final void r(@NotNull Placeable.PlacementScope scope) {
        t.j(scope, "scope");
        int iQ = q();
        for (int i10 = 0; i10 < iQ; i10++) {
            Placeable placeableB = this.wrappers.get(i10).b();
            int iN = this.minMainAxisOffset - n(placeableB);
            int i11 = this.maxMainAxisOffset;
            long jC = e(i10) != null ? this.placementAnimator.c(i(), i10, iN, i11, this.placeableOffset) : this.placeableOffset;
            if (l(jC) > iN && l(jC) < i11) {
                if (this.isVertical) {
                    long j6 = this.visualOffset;
                    Placeable.PlacementScope.x(scope, placeableB, IntOffsetKt.a(IntOffset.j(jC) + IntOffset.j(j6), IntOffset.k(jC) + IntOffset.k(j6)), 0.0f, null, 6, null);
                } else {
                    long j10 = this.visualOffset;
                    Placeable.PlacementScope.t(scope, placeableB, IntOffsetKt.a(IntOffset.j(jC) + IntOffset.j(j10), IntOffset.k(jC) + IntOffset.k(j10)), 0.0f, null, 6, null);
                }
            }
        }
    }
}
