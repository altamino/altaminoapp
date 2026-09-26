package androidx.compose.foundation.lazy;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffsetKt;
import e8.l;
import e8.p;
import e8.q;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class LazyListKt$rememberLazyListMeasurePolicy$1$1 extends v implements p<LazyLayoutMeasureScope, Constraints, LazyListMeasureResult> {
    final /* synthetic */ LazyListBeyondBoundsInfo $beyondBoundsInfo;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
    final /* synthetic */ Arrangement.Horizontal $horizontalArrangement;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ LazyListItemProvider $itemProvider;
    final /* synthetic */ OverscrollEffect $overscrollEffect;
    final /* synthetic */ LazyListItemPlacementAnimator $placementAnimator;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ LazyListState $state;
    final /* synthetic */ Alignment.Vertical $verticalAlignment;
    final /* synthetic */ Arrangement.Vertical $verticalArrangement;

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements q<Integer, Integer, l<? super Placeable.PlacementScope, ? extends l0>, MeasureResult> {
        final /* synthetic */ long $containerConstraints;
        final /* synthetic */ LazyLayoutMeasureScope $this_null;
        final /* synthetic */ int $totalHorizontalPadding;
        final /* synthetic */ int $totalVerticalPadding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j6, int i10, int i11) {
            super(3);
            this.$this_null = lazyLayoutMeasureScope;
            this.$containerConstraints = j6;
            this.$totalHorizontalPadding = i10;
            this.$totalVerticalPadding = i11;
        }

        @NotNull
        public final MeasureResult a(int i10, int i11, @NotNull l<? super Placeable.PlacementScope, l0> placement) {
            t.j(placement, "placement");
            return this.$this_null.G0(ConstraintsKt.g(this.$containerConstraints, i10 + this.$totalHorizontalPadding), ConstraintsKt.f(this.$containerConstraints, i11 + this.$totalVerticalPadding), s0.h(), placement);
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ MeasureResult invoke(Integer num, Integer num2, l<? super Placeable.PlacementScope, ? extends l0> lVar) {
            return a(num.intValue(), num2.intValue(), lVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListKt$rememberLazyListMeasurePolicy$1$1(boolean z6, PaddingValues paddingValues, boolean z10, LazyListState lazyListState, LazyListItemProvider lazyListItemProvider, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo, Alignment.Horizontal horizontal2, Alignment.Vertical vertical2, OverscrollEffect overscrollEffect) {
        super(2);
        this.$isVertical = z6;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z10;
        this.$state = lazyListState;
        this.$itemProvider = lazyListItemProvider;
        this.$verticalArrangement = vertical;
        this.$horizontalArrangement = horizontal;
        this.$placementAnimator = lazyListItemPlacementAnimator;
        this.$beyondBoundsInfo = lazyListBeyondBoundsInfo;
        this.$horizontalAlignment = horizontal2;
        this.$verticalAlignment = vertical2;
        this.$overscrollEffect = overscrollEffect;
    }

    @NotNull
    public final LazyListMeasureResult a(@NotNull final LazyLayoutMeasureScope lazyLayoutMeasureScope, long j6) {
        int i10;
        float fA;
        long jA;
        t.j(lazyLayoutMeasureScope, "$this$null");
        CheckScrollableContainerConstraintsKt.a(j6, this.$isVertical ? Orientation.Vertical : Orientation.Horizontal);
        int iJ0 = this.$isVertical ? lazyLayoutMeasureScope.j0(this.$contentPadding.b(lazyLayoutMeasureScope.getLayoutDirection())) : lazyLayoutMeasureScope.j0(PaddingKt.g(this.$contentPadding, lazyLayoutMeasureScope.getLayoutDirection()));
        int iJ1 = this.$isVertical ? lazyLayoutMeasureScope.j0(this.$contentPadding.c(lazyLayoutMeasureScope.getLayoutDirection())) : lazyLayoutMeasureScope.j0(PaddingKt.f(this.$contentPadding, lazyLayoutMeasureScope.getLayoutDirection()));
        int iJ2 = lazyLayoutMeasureScope.j0(this.$contentPadding.d());
        int iJ3 = lazyLayoutMeasureScope.j0(this.$contentPadding.a());
        int i11 = iJ2 + iJ3;
        int i12 = iJ0 + iJ1;
        boolean z6 = this.$isVertical;
        int i13 = z6 ? i11 : i12;
        if (z6 && !this.$reverseLayout) {
            i10 = iJ2;
        } else if (z6 && this.$reverseLayout) {
            i10 = iJ3;
        } else {
            i10 = (z6 || this.$reverseLayout) ? iJ1 : iJ0;
        }
        final int i14 = i13 - i10;
        long jI = ConstraintsKt.i(j6, -i12, -i11);
        this.$state.C(this.$itemProvider);
        this.$state.x(lazyLayoutMeasureScope);
        this.$itemProvider.e().b(lazyLayoutMeasureScope.j(Constraints.n(jI)));
        this.$itemProvider.e().a(lazyLayoutMeasureScope.j(Constraints.m(jI)));
        if (this.$isVertical) {
            Arrangement.Vertical vertical = this.$verticalArrangement;
            if (vertical == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            fA = vertical.a();
        } else {
            Arrangement.Horizontal horizontal = this.$horizontalArrangement;
            if (horizontal == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            fA = horizontal.a();
        }
        final int iJ4 = lazyLayoutMeasureScope.j0(fA);
        final int iF = this.$itemProvider.f();
        int iM = this.$isVertical ? Constraints.m(j6) - i11 : Constraints.n(j6) - i12;
        if (!this.$reverseLayout || iM > 0) {
            jA = IntOffsetKt.a(iJ0, iJ2);
        } else {
            boolean z10 = this.$isVertical;
            if (!z10) {
                iJ0 += iM;
            }
            if (z10) {
                iJ2 += iM;
            }
            jA = IntOffsetKt.a(iJ0, iJ2);
        }
        final long j10 = jA;
        final boolean z11 = this.$isVertical;
        LazyListItemProvider lazyListItemProvider = this.$itemProvider;
        final Alignment.Horizontal horizontal2 = this.$horizontalAlignment;
        final Alignment.Vertical vertical2 = this.$verticalAlignment;
        final boolean z12 = this.$reverseLayout;
        final LazyListItemPlacementAnimator lazyListItemPlacementAnimator = this.$placementAnimator;
        final int i15 = i10;
        LazyMeasuredItemProvider lazyMeasuredItemProvider = new LazyMeasuredItemProvider(jI, z11, lazyListItemProvider, lazyLayoutMeasureScope, new MeasuredItemFactory() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1
            @Override // androidx.compose.foundation.lazy.MeasuredItemFactory
            @NotNull
            public final LazyMeasuredItem a(int i16, @NotNull Object key, @NotNull Placeable[] placeables) {
                t.j(key, "key");
                t.j(placeables, "placeables");
                return new LazyMeasuredItem(i16, placeables, z11, horizontal2, vertical2, lazyLayoutMeasureScope.getLayoutDirection(), z12, i15, i14, lazyListItemPlacementAnimator, i16 == iF + (-1) ? 0 : iJ4, j10, key, null);
            }
        }, null);
        this.$state.z(lazyMeasuredItemProvider.b());
        Snapshot.Companion companion = Snapshot.Companion;
        LazyListState lazyListState = this.$state;
        Snapshot snapshotA = companion.a();
        try {
            Snapshot snapshotK = snapshotA.k();
            try {
                int iB = DataIndex.b(lazyListState.j());
                int iK = lazyListState.k();
                l0 l0Var = l0.INSTANCE;
                snapshotA.r(snapshotK);
                snapshotA.d();
                LazyListMeasureResult lazyListMeasureResultC = LazyListMeasureKt.c(iF, lazyMeasuredItemProvider, iM, i10, i14, iB, iK, this.$state.s(), jI, this.$isVertical, this.$itemProvider.g(), this.$verticalArrangement, this.$horizontalArrangement, this.$reverseLayout, lazyLayoutMeasureScope, this.$placementAnimator, this.$beyondBoundsInfo, new AnonymousClass2(lazyLayoutMeasureScope, j6, i12, i11));
                LazyListState lazyListState2 = this.$state;
                OverscrollEffect overscrollEffect = this.$overscrollEffect;
                lazyListState2.f(lazyListMeasureResultC);
                LazyListKt.e(overscrollEffect, lazyListMeasureResultC);
                return lazyListMeasureResultC;
            } catch (Throwable th) {
                snapshotA.r(snapshotK);
                throw th;
            }
        } catch (Throwable th2) {
            snapshotA.d();
            throw th2;
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ LazyListMeasureResult invoke(LazyLayoutMeasureScope lazyLayoutMeasureScope, Constraints constraints) {
        return a(lazyLayoutMeasureScope, constraints.t());
    }
}
