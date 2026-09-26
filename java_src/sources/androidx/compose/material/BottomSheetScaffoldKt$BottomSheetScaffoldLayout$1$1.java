package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import e8.l;
import e8.p;
import e8.q;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1 extends v implements p<SubcomposeMeasureScope, Constraints, MeasureResult> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $body;
    final /* synthetic */ q<Integer, Composer, Integer, l0> $bottomSheet;
    final /* synthetic */ p<Composer, Integer, l0> $floatingActionButton;
    final /* synthetic */ int $floatingActionButtonPosition;
    final /* synthetic */ State<Float> $sheetOffset;
    final /* synthetic */ float $sheetPeekHeight;
    final /* synthetic */ BottomSheetState $sheetState;
    final /* synthetic */ p<Composer, Integer, l0> $snackbarHost;
    final /* synthetic */ p<Composer, Integer, l0> $topBar;

    /* JADX INFO: renamed from: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Placeable.PlacementScope, l0> {
        final /* synthetic */ Placeable $bodyPlaceable;
        final /* synthetic */ int $fabOffsetX;
        final /* synthetic */ int $fabOffsetY;
        final /* synthetic */ Placeable $fabPlaceable;
        final /* synthetic */ int $sheetOffsetY;
        final /* synthetic */ Placeable $sheetPlaceable;
        final /* synthetic */ int $snackbarOffsetX;
        final /* synthetic */ int $snackbarOffsetY;
        final /* synthetic */ Placeable $snackbarPlaceable;
        final /* synthetic */ int $topBarHeight;
        final /* synthetic */ Placeable $topBarPlaceable;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Placeable placeable, int i10, Placeable placeable2, Placeable placeable3, int i11, Placeable placeable4, int i12, int i13, Placeable placeable5, int i14, int i15) {
            super(1);
            this.$bodyPlaceable = placeable;
            this.$topBarHeight = i10;
            this.$topBarPlaceable = placeable2;
            this.$sheetPlaceable = placeable3;
            this.$sheetOffsetY = i11;
            this.$fabPlaceable = placeable4;
            this.$fabOffsetX = i12;
            this.$fabOffsetY = i13;
            this.$snackbarPlaceable = placeable5;
            this.$snackbarOffsetX = i14;
            this.$snackbarOffsetY = i15;
        }

        public final void a(@NotNull Placeable.PlacementScope layout) {
            t.j(layout, "$this$layout");
            Placeable.PlacementScope.n(layout, this.$bodyPlaceable, 0, this.$topBarHeight, 0.0f, 4, null);
            Placeable placeable = this.$topBarPlaceable;
            if (placeable != null) {
                Placeable.PlacementScope.n(layout, placeable, 0, 0, 0.0f, 4, null);
            }
            Placeable.PlacementScope.n(layout, this.$sheetPlaceable, 0, this.$sheetOffsetY, 0.0f, 4, null);
            Placeable placeable2 = this.$fabPlaceable;
            if (placeable2 != null) {
                Placeable.PlacementScope.n(layout, placeable2, this.$fabOffsetX, this.$fabOffsetY, 0.0f, 4, null);
            }
            Placeable.PlacementScope.n(layout, this.$snackbarPlaceable, this.$snackbarOffsetX, this.$snackbarOffsetY, 0.0f, 4, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
            a(placementScope);
            return l0.INSTANCE;
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BottomSheetValue.values().length];
            iArr[BottomSheetValue.Collapsed.ordinal()] = 1;
            iArr[BottomSheetValue.Expanded.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1(State<Float> state, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i10, float f, p<? super Composer, ? super Integer, l0> pVar3, BottomSheetState bottomSheetState, q<? super Integer, ? super Composer, ? super Integer, l0> qVar, int i11, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar2) {
        super(2);
        this.$sheetOffset = state;
        this.$topBar = pVar;
        this.$floatingActionButton = pVar2;
        this.$floatingActionButtonPosition = i10;
        this.$sheetPeekHeight = f;
        this.$snackbarHost = pVar3;
        this.$sheetState = bottomSheetState;
        this.$bottomSheet = qVar;
        this.$$dirty = i11;
        this.$body = qVar2;
    }

    @NotNull
    public final MeasureResult a(@NotNull SubcomposeMeasureScope SubcomposeLayout, long j6) {
        Placeable placeableB0;
        int iB0;
        t.j(SubcomposeLayout, "$this$SubcomposeLayout");
        int iN = Constraints.n(j6);
        int iM = Constraints.m(j6);
        long jE = Constraints.e(j6, 0, 0, 0, 0, 10, null);
        Placeable placeableB1 = SubcomposeLayout.v(BottomSheetScaffoldLayoutSlot.Sheet, ComposableLambdaKt.c(520491296, true, new BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$sheetPlaceable$1(this.$bottomSheet, iM, this.$$dirty))).get(0).b0(jE);
        int iC = c.c(this.$sheetOffset.getValue().floatValue());
        p<Composer, Integer, l0> pVar = this.$topBar;
        if (pVar != null) {
            placeableB0 = SubcomposeLayout.v(BottomSheetScaffoldLayoutSlot.TopBar, ComposableLambdaKt.c(1988456983, true, new BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarPlaceable$1$1(pVar, this.$$dirty))).get(0).b0(jE);
        } else {
            placeableB0 = null;
        }
        int iB1 = placeableB0 != null ? placeableB0.B0() : 0;
        Placeable placeableB2 = SubcomposeLayout.v(BottomSheetScaffoldLayoutSlot.Body, ComposableLambdaKt.c(1466287989, true, new BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1(this.$body, this.$sheetPeekHeight, this.$$dirty))).get(0).b0(Constraints.e(jE, 0, 0, 0, iM - iB1, 7, null));
        p<Composer, Integer, l0> pVar2 = this.$floatingActionButton;
        Placeable placeableB3 = pVar2 != null ? SubcomposeLayout.v(BottomSheetScaffoldLayoutSlot.Fab, pVar2).get(0).b0(jE) : null;
        int iQ0 = placeableB3 != null ? placeableB3.Q0() : 0;
        int iB2 = placeableB3 != null ? placeableB3.B0() : 0;
        int iJ0 = FabPosition.f(this.$floatingActionButtonPosition, FabPosition.Companion.a()) ? (iN - iQ0) / 2 : (iN - iQ0) - SubcomposeLayout.j0(BottomSheetScaffoldKt.FabSpacing);
        int i10 = iB2 / 2;
        int iJ1 = SubcomposeLayout.H0(this.$sheetPeekHeight) < ((float) i10) ? (iC - iB2) - SubcomposeLayout.j0(BottomSheetScaffoldKt.FabSpacing) : iC - i10;
        Placeable placeableB4 = SubcomposeLayout.v(BottomSheetScaffoldLayoutSlot.Snackbar, this.$snackbarHost).get(0).b0(jE);
        int iQ1 = (iN - placeableB4.Q0()) / 2;
        int i11 = WhenMappings.$EnumSwitchMapping$0[this.$sheetState.p().ordinal()];
        if (i11 == 1) {
            iB0 = iJ1 - placeableB4.B0();
        } else {
            if (i11 != 2) {
                throw new s();
            }
            iB0 = iM - placeableB4.B0();
        }
        return MeasureScope.CC.b(SubcomposeLayout, iN, iM, null, new AnonymousClass1(placeableB2, iB1, placeableB0, placeableB1, iC, placeableB3, iJ0, iJ1, placeableB4, iQ1, iB0), 4, null);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
        return a(subcomposeMeasureScope, constraints.t());
    }
}
