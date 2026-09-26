package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class LazyListPositionedItem implements LazyListItemInfo {
    private final boolean hasAnimations;
    private final int index;
    private final boolean isVertical;

    @NotNull
    private final Object key;
    private final int maxMainAxisOffset;
    private final int minMainAxisOffset;
    private final int offset;

    @NotNull
    private final LazyListItemPlacementAnimator placementAnimator;
    private final int size;
    private final int sizeWithSpacings;
    private final long visualOffset;

    @NotNull
    private final List<LazyListPlaceableWrapper> wrappers;

    public /* synthetic */ LazyListPositionedItem(int i10, int i11, Object obj, int i12, int i13, int i14, int i15, boolean z6, List list, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, long j6, k kVar) {
        this(i10, i11, obj, i12, i13, i14, i15, z6, list, lazyListItemPlacementAnimator, j6);
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int a() {
        return this.offset;
    }

    public final boolean c() {
        return this.hasAnimations;
    }

    @NotNull
    public Object d() {
        return this.key;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int getSize() {
        return this.size;
    }

    public final int i() {
        return this.sizeWithSpacings;
    }

    private LazyListPositionedItem(int i10, int i11, Object obj, int i12, int i13, int i14, int i15, boolean z6, List<LazyListPlaceableWrapper> list, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, long j6) {
        this.offset = i10;
        this.index = i11;
        this.key = obj;
        this.size = i12;
        this.sizeWithSpacings = i13;
        this.minMainAxisOffset = i14;
        this.maxMainAxisOffset = i15;
        this.isVertical = z6;
        this.wrappers = list;
        this.placementAnimator = lazyListItemPlacementAnimator;
        this.visualOffset = j6;
        int iH = h();
        boolean z10 = false;
        for (int i16 = 0; i16 < iH; i16++) {
            if (b(i16) != null) {
                z10 = true;
                break;
            }
        }
        this.hasAnimations = z10;
    }

    private final int f(Placeable placeable) {
        return this.isVertical ? placeable.B0() : placeable.Q0();
    }

    @Nullable
    public final FiniteAnimationSpec<IntOffset> b(int i10) {
        Object objB = this.wrappers.get(i10).b();
        if (objB instanceof FiniteAnimationSpec) {
            return (FiniteAnimationSpec) objB;
        }
        return null;
    }

    public final int e(int i10) {
        return f(this.wrappers.get(i10).c());
    }

    public final long g(int i10) {
        return this.wrappers.get(i10).a();
    }

    public final int h() {
        return this.wrappers.size();
    }

    public final void j(@NotNull Placeable.PlacementScope scope) {
        t.j(scope, "scope");
        int iH = h();
        for (int i10 = 0; i10 < iH; i10++) {
            Placeable placeableC = this.wrappers.get(i10).c();
            long jB = b(i10) != null ? this.placementAnimator.b(d(), i10, this.minMainAxisOffset - f(placeableC), this.maxMainAxisOffset, g(i10)) : g(i10);
            if (this.isVertical) {
                long j6 = this.visualOffset;
                Placeable.PlacementScope.x(scope, placeableC, IntOffsetKt.a(IntOffset.j(jB) + IntOffset.j(j6), IntOffset.k(jB) + IntOffset.k(j6)), 0.0f, null, 6, null);
            } else {
                long j10 = this.visualOffset;
                Placeable.PlacementScope.t(scope, placeableC, IntOffsetKt.a(IntOffset.j(jB) + IntOffset.j(j10), IntOffset.k(jB) + IntOffset.k(j10)), 0.0f, null, 6, null);
            }
        }
    }
}
