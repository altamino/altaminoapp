package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffsetKt;
import e8.l;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
final class LazyGridKt$rememberLazyGridMeasurePolicy$1$1 extends v implements p<LazyLayoutMeasureScope, Constraints, LazyGridMeasureResult> {
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ Arrangement.Horizontal $horizontalArrangement;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ LazyGridItemProvider $itemProvider;
    final /* synthetic */ OverscrollEffect $overscrollEffect;
    final /* synthetic */ LazyGridItemPlacementAnimator $placementAnimator;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ p<Density, Constraints, List<Integer>> $slotSizesSums;
    final /* synthetic */ LazyGridState $state;
    final /* synthetic */ Arrangement.Vertical $verticalArrangement;

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<LineIndex, ArrayList<u<? extends Integer, ? extends Constraints>>> {
        final /* synthetic */ LazyMeasuredLineProvider $measuredLineProvider;
        final /* synthetic */ LazyGridSpanLayoutProvider $spanLayoutProvider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider, LazyMeasuredLineProvider lazyMeasuredLineProvider) {
            super(1);
            this.$spanLayoutProvider = lazyGridSpanLayoutProvider;
            this.$measuredLineProvider = lazyMeasuredLineProvider;
        }

        @NotNull
        public final ArrayList<u<Integer, Constraints>> b(int i10) {
            LazyGridSpanLayoutProvider.LineConfiguration lineConfigurationC = this.$spanLayoutProvider.c(i10);
            int iB = ItemIndex.b(lineConfigurationC.a());
            ArrayList<u<Integer, Constraints>> arrayList = new ArrayList<>(lineConfigurationC.b().size());
            List<GridItemSpan> listB = lineConfigurationC.b();
            LazyMeasuredLineProvider lazyMeasuredLineProvider = this.$measuredLineProvider;
            int size = listB.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iD = GridItemSpan.d(listB.get(i12).g());
                arrayList.add(a0.a(Integer.valueOf(iB), lazyMeasuredLineProvider.c().invoke(Integer.valueOf(i11), Integer.valueOf(iD))));
                iB = ItemIndex.b(iB + 1);
                i11 += iD;
            }
            return arrayList;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ ArrayList<u<? extends Integer, ? extends Constraints>> invoke(LineIndex lineIndex) {
            return b(lineIndex.g());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements q<Integer, Integer, l<? super Placeable.PlacementScope, ? extends l0>, MeasureResult> {
        final /* synthetic */ long $containerConstraints;
        final /* synthetic */ LazyLayoutMeasureScope $this_null;
        final /* synthetic */ int $totalHorizontalPadding;
        final /* synthetic */ int $totalVerticalPadding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j6, int i10, int i11) {
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
    /* JADX WARN: Multi-variable type inference failed */
    LazyGridKt$rememberLazyGridMeasurePolicy$1$1(boolean z6, PaddingValues paddingValues, boolean z10, LazyGridState lazyGridState, LazyGridItemProvider lazyGridItemProvider, p<? super Density, ? super Constraints, ? extends List<Integer>> pVar, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, OverscrollEffect overscrollEffect) {
        super(2);
        this.$isVertical = z6;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z10;
        this.$state = lazyGridState;
        this.$itemProvider = lazyGridItemProvider;
        this.$slotSizesSums = pVar;
        this.$verticalArrangement = vertical;
        this.$horizontalArrangement = horizontal;
        this.$placementAnimator = lazyGridItemPlacementAnimator;
        this.$overscrollEffect = overscrollEffect;
    }

    @NotNull
    public final LazyGridMeasureResult a(@NotNull final LazyLayoutMeasureScope lazyLayoutMeasureScope, long j6) {
        int i10;
        float fA;
        float fA2;
        long jA;
        int iK;
        int iD;
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
        this.$state.F(this.$itemProvider);
        LazyGridSpanLayoutProvider lazyGridSpanLayoutProviderH = this.$itemProvider.h();
        final List<Integer> listInvoke = this.$slotSizesSums.invoke(lazyLayoutMeasureScope, Constraints.b(j6));
        lazyGridSpanLayoutProviderH.g(listInvoke.size());
        this.$state.y(lazyLayoutMeasureScope);
        this.$state.C(listInvoke.size());
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
        int iJ4 = lazyLayoutMeasureScope.j0(fA);
        if (this.$isVertical) {
            Arrangement.Horizontal horizontal2 = this.$horizontalArrangement;
            fA2 = horizontal2 != null ? horizontal2.a() : Dp.f(0);
        } else {
            Arrangement.Vertical vertical2 = this.$verticalArrangement;
            fA2 = vertical2 != null ? vertical2.a() : Dp.f(0);
        }
        final int iJ5 = lazyLayoutMeasureScope.j0(fA2);
        int iF = this.$itemProvider.f();
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
        LazyGridItemProvider lazyGridItemProvider = this.$itemProvider;
        final boolean z11 = this.$isVertical;
        final boolean z12 = this.$reverseLayout;
        final LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator = this.$placementAnimator;
        final int i15 = i10;
        LazyMeasuredItemProvider lazyMeasuredItemProvider = new LazyMeasuredItemProvider(lazyGridItemProvider, lazyLayoutMeasureScope, iJ4, new MeasuredItemFactory() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1
            @Override // androidx.compose.foundation.lazy.grid.MeasuredItemFactory
            @NotNull
            public final LazyMeasuredItem a(int i16, @NotNull Object key, int i17, int i18, @NotNull Placeable[] placeables) {
                t.j(key, "key");
                t.j(placeables, "placeables");
                return new LazyMeasuredItem(i16, key, z11, i17, i18, z12, lazyLayoutMeasureScope.getLayoutDirection(), i15, i14, placeables, lazyGridItemPlacementAnimator, j10, null);
            }
        });
        final boolean z13 = this.$isVertical;
        LazyMeasuredLineProvider lazyMeasuredLineProvider = new LazyMeasuredLineProvider(z13, listInvoke, iJ5, iF, iJ4, lazyMeasuredItemProvider, lazyGridSpanLayoutProviderH, new MeasuredLineFactory() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1
            @Override // androidx.compose.foundation.lazy.grid.MeasuredLineFactory
            @NotNull
            public final LazyMeasuredLine a(int i16, @NotNull LazyMeasuredItem[] items, @NotNull List<GridItemSpan> spans, int i17) {
                t.j(items, "items");
                t.j(spans, "spans");
                return new LazyMeasuredLine(i16, items, spans, z13, listInvoke.size(), lazyLayoutMeasureScope.getLayoutDirection(), i17, iJ5, null);
            }
        });
        this.$state.A(new AnonymousClass1(lazyGridSpanLayoutProviderH, lazyMeasuredLineProvider));
        Snapshot.Companion companion = Snapshot.Companion;
        LazyGridState lazyGridState = this.$state;
        Snapshot snapshotA = companion.a();
        try {
            Snapshot snapshotK = snapshotA.k();
            try {
                if (lazyGridState.j() < iF || iF <= 0) {
                    int iD2 = lazyGridSpanLayoutProviderH.d(lazyGridState.j());
                    iK = lazyGridState.k();
                    iD = iD2;
                } else {
                    iD = lazyGridSpanLayoutProviderH.d(iF - 1);
                    iK = 0;
                }
                l0 l0Var = l0.INSTANCE;
                snapshotA.r(snapshotK);
                snapshotA.d();
                LazyGridMeasureResult lazyGridMeasureResultC = LazyGridMeasureKt.c(iF, lazyMeasuredLineProvider, lazyMeasuredItemProvider, iM, listInvoke.size(), i10, i14, iD, iK, this.$state.s(), jI, this.$isVertical, this.$verticalArrangement, this.$horizontalArrangement, this.$reverseLayout, lazyLayoutMeasureScope, this.$placementAnimator, new AnonymousClass3(lazyLayoutMeasureScope, j6, i12, i11));
                LazyGridState lazyGridState2 = this.$state;
                OverscrollEffect overscrollEffect = this.$overscrollEffect;
                lazyGridState2.f(lazyGridMeasureResultC);
                LazyGridKt.e(overscrollEffect, lazyGridMeasureResultC);
                return lazyGridMeasureResultC;
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
    public /* bridge */ /* synthetic */ LazyGridMeasureResult invoke(LazyLayoutMeasureScope lazyLayoutMeasureScope, Constraints constraints) {
        return a(lazyLayoutMeasureScope, constraints.t());
    }
}
