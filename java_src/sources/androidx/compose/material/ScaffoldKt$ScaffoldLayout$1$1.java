package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ScaffoldKt$ScaffoldLayout$1$1 extends v implements p<SubcomposeMeasureScope, Constraints, MeasureResult> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $bottomBar;
    final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $content;
    final /* synthetic */ p<Composer, Integer, l0> $fab;
    final /* synthetic */ int $fabPosition;
    final /* synthetic */ boolean $isFabDocked;
    final /* synthetic */ p<Composer, Integer, l0> $snackbar;
    final /* synthetic */ p<Composer, Integer, l0> $topBar;

    /* JADX INFO: renamed from: androidx.compose.material.ScaffoldKt$ScaffoldLayout$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Placeable.PlacementScope, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ p<Composer, Integer, l0> $bottomBar;
        final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $content;
        final /* synthetic */ p<Composer, Integer, l0> $fab;
        final /* synthetic */ int $fabPosition;
        final /* synthetic */ boolean $isFabDocked;
        final /* synthetic */ int $layoutHeight;
        final /* synthetic */ int $layoutWidth;
        final /* synthetic */ long $looseConstraints;
        final /* synthetic */ p<Composer, Integer, l0> $snackbar;
        final /* synthetic */ SubcomposeMeasureScope $this_SubcomposeLayout;
        final /* synthetic */ p<Composer, Integer, l0> $topBar;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(SubcomposeMeasureScope subcomposeMeasureScope, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, int i10, int i11, boolean z6, int i12, long j6, p<? super Composer, ? super Integer, l0> pVar4, int i13, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar) {
            super(1);
            this.$this_SubcomposeLayout = subcomposeMeasureScope;
            this.$topBar = pVar;
            this.$snackbar = pVar2;
            this.$fab = pVar3;
            this.$fabPosition = i10;
            this.$layoutWidth = i11;
            this.$isFabDocked = z6;
            this.$layoutHeight = i12;
            this.$looseConstraints = j6;
            this.$bottomBar = pVar4;
            this.$$dirty = i13;
            this.$content = qVar;
        }

        public final void a(@NotNull Placeable.PlacementScope layout) {
            Object obj;
            Object obj2;
            FabPlacement fabPlacement;
            Object obj3;
            Integer numValueOf;
            int iA;
            int iJ0;
            int iA2;
            Object obj4;
            Object obj5;
            t.j(layout, "$this$layout");
            List<Measurable> listV = this.$this_SubcomposeLayout.v(ScaffoldLayoutContent.TopBar, this.$topBar);
            long j6 = this.$looseConstraints;
            ArrayList arrayList = new ArrayList(listV.size());
            int size = listV.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(listV.get(i11).b0(j6));
            }
            if (!arrayList.isEmpty()) {
                obj = arrayList.get(0);
                int iB0 = ((Placeable) obj).B0();
                int iO = kotlin.collections.v.o(arrayList);
                if (1 <= iO) {
                    int i12 = 1;
                    while (true) {
                        Object obj6 = arrayList.get(i12);
                        int iB1 = ((Placeable) obj6).B0();
                        if (iB0 < iB1) {
                            obj = obj6;
                            iB0 = iB1;
                        }
                        if (i12 == iO) {
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
            } else {
                obj = null;
            }
            Placeable placeable = (Placeable) obj;
            int iB2 = placeable != null ? placeable.B0() : 0;
            List<Measurable> listV2 = this.$this_SubcomposeLayout.v(ScaffoldLayoutContent.Snackbar, this.$snackbar);
            long j10 = this.$looseConstraints;
            ArrayList arrayList2 = new ArrayList(listV2.size());
            int size2 = listV2.size();
            for (int i13 = 0; i13 < size2; i13++) {
                arrayList2.add(listV2.get(i13).b0(j10));
            }
            if (!arrayList2.isEmpty()) {
                obj2 = arrayList2.get(0);
                int iB3 = ((Placeable) obj2).B0();
                int iO2 = kotlin.collections.v.o(arrayList2);
                if (1 <= iO2) {
                    int i14 = 1;
                    while (true) {
                        Object obj7 = arrayList2.get(i14);
                        int iB4 = ((Placeable) obj7).B0();
                        if (iB3 < iB4) {
                            obj2 = obj7;
                            iB3 = iB4;
                        }
                        if (i14 == iO2) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                }
            } else {
                obj2 = null;
            }
            Placeable placeable2 = (Placeable) obj2;
            int iB5 = placeable2 != null ? placeable2.B0() : 0;
            List<Measurable> listV3 = this.$this_SubcomposeLayout.v(ScaffoldLayoutContent.Fab, this.$fab);
            long j11 = this.$looseConstraints;
            ArrayList arrayList3 = new ArrayList();
            Iterator<T> it = listV3.iterator();
            while (it.hasNext()) {
                Placeable placeableB0 = ((Measurable) it.next()).b0(j11);
                if (placeableB0.B0() == 0 || placeableB0.Q0() == 0) {
                    placeableB0 = null;
                }
                if (placeableB0 != null) {
                    arrayList3.add(placeableB0);
                }
            }
            if (!arrayList3.isEmpty()) {
                if (!arrayList3.isEmpty()) {
                    obj4 = arrayList3.get(0);
                    int iQ0 = ((Placeable) obj4).Q0();
                    int iO3 = kotlin.collections.v.o(arrayList3);
                    if (1 <= iO3) {
                        int i15 = 1;
                        while (true) {
                            Object obj8 = arrayList3.get(i15);
                            int iQ1 = ((Placeable) obj8).Q0();
                            if (iQ0 < iQ1) {
                                obj4 = obj8;
                                iQ0 = iQ1;
                            }
                            if (i15 == iO3) {
                                break;
                            } else {
                                i15++;
                            }
                        }
                    }
                } else {
                    obj4 = null;
                }
                t.g(obj4);
                int iQ2 = ((Placeable) obj4).Q0();
                if (!arrayList3.isEmpty()) {
                    obj5 = arrayList3.get(0);
                    int iB6 = ((Placeable) obj5).B0();
                    int iO4 = kotlin.collections.v.o(arrayList3);
                    if (1 <= iO4) {
                        int i16 = 1;
                        while (true) {
                            Object obj9 = arrayList3.get(i16);
                            int iB7 = ((Placeable) obj9).B0();
                            if (iB6 < iB7) {
                                iB6 = iB7;
                                obj5 = obj9;
                            }
                            if (i16 == iO4) {
                                break;
                            } else {
                                i16++;
                            }
                        }
                    }
                } else {
                    obj5 = null;
                }
                t.g(obj5);
                int iB8 = ((Placeable) obj5).B0();
                fabPlacement = new FabPlacement(this.$isFabDocked, FabPosition.f(this.$fabPosition, FabPosition.Companion.b()) ? this.$this_SubcomposeLayout.getLayoutDirection() == LayoutDirection.Ltr ? (this.$layoutWidth - this.$this_SubcomposeLayout.j0(ScaffoldKt.FabSpacing)) - iQ2 : this.$this_SubcomposeLayout.j0(ScaffoldKt.FabSpacing) : (this.$layoutWidth - iQ2) / 2, iQ2, iB8);
            } else {
                fabPlacement = null;
            }
            List<Measurable> listV4 = this.$this_SubcomposeLayout.v(ScaffoldLayoutContent.BottomBar, ComposableLambdaKt.c(1529070963, true, new ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1(fabPlacement, this.$bottomBar, this.$$dirty)));
            long j12 = this.$looseConstraints;
            ArrayList arrayList4 = new ArrayList(listV4.size());
            int size3 = listV4.size();
            for (int i17 = 0; i17 < size3; i17++) {
                arrayList4.add(listV4.get(i17).b0(j12));
            }
            if (!arrayList4.isEmpty()) {
                obj3 = arrayList4.get(0);
                int iB9 = ((Placeable) obj3).B0();
                int iO5 = kotlin.collections.v.o(arrayList4);
                if (1 <= iO5) {
                    int i18 = 1;
                    while (true) {
                        Object obj10 = arrayList4.get(i18);
                        int iB10 = ((Placeable) obj10).B0();
                        if (iB9 < iB10) {
                            obj3 = obj10;
                            iB9 = iB10;
                        }
                        if (i18 == iO5) {
                            break;
                        } else {
                            i18++;
                        }
                    }
                }
            } else {
                obj3 = null;
            }
            Placeable placeable3 = (Placeable) obj3;
            int iB11 = placeable3 != null ? placeable3.B0() : 0;
            if (fabPlacement != null) {
                SubcomposeMeasureScope subcomposeMeasureScope = this.$this_SubcomposeLayout;
                boolean z6 = this.$isFabDocked;
                if (iB11 == 0) {
                    iA = fabPlacement.a();
                    iJ0 = subcomposeMeasureScope.j0(ScaffoldKt.FabSpacing);
                } else {
                    if (z6) {
                        iA2 = iB11 + (fabPlacement.a() / 2);
                    } else {
                        iA = fabPlacement.a() + iB11;
                        iJ0 = subcomposeMeasureScope.j0(ScaffoldKt.FabSpacing);
                    }
                    numValueOf = Integer.valueOf(iA2);
                }
                iA2 = iA + iJ0;
                numValueOf = Integer.valueOf(iA2);
            } else {
                numValueOf = null;
            }
            int iIntValue = iB5 != 0 ? iB5 + (numValueOf != null ? numValueOf.intValue() : iB11) : 0;
            int i19 = this.$layoutHeight - iB2;
            SubcomposeMeasureScope subcomposeMeasureScope2 = this.$this_SubcomposeLayout;
            List<Measurable> listV5 = subcomposeMeasureScope2.v(ScaffoldLayoutContent.MainContent, ComposableLambdaKt.c(-1132241596, true, new ScaffoldKt$ScaffoldLayout$1$1$1$bodyContentPlaceables$1(subcomposeMeasureScope2, iB11, this.$content, this.$$dirty)));
            long j13 = this.$looseConstraints;
            ArrayList arrayList5 = new ArrayList(listV5.size());
            int size4 = listV5.size();
            while (i10 < size4) {
                arrayList5.add(listV5.get(i10).b0(Constraints.e(j13, 0, 0, 0, i19, 7, null)));
                i10++;
                listV5 = listV5;
                j13 = j13;
            }
            int size5 = arrayList5.size();
            int i20 = 0;
            while (i20 < size5) {
                Placeable.PlacementScope.j(layout, (Placeable) arrayList5.get(i20), 0, iB2, 0.0f, 4, null);
                i20++;
                arrayList5 = arrayList5;
                iB11 = iB11;
            }
            int i21 = iB11;
            int size6 = arrayList.size();
            for (int i22 = 0; i22 < size6; i22++) {
                Placeable.PlacementScope.j(layout, (Placeable) arrayList.get(i22), 0, 0, 0.0f, 4, null);
            }
            int i23 = this.$layoutHeight;
            int size7 = arrayList2.size();
            for (int i24 = 0; i24 < size7; i24++) {
                Placeable.PlacementScope.j(layout, (Placeable) arrayList2.get(i24), 0, i23 - iIntValue, 0.0f, 4, null);
            }
            int i25 = this.$layoutHeight;
            int size8 = arrayList4.size();
            for (int i26 = 0; i26 < size8; i26++) {
                Placeable.PlacementScope.j(layout, (Placeable) arrayList4.get(i26), 0, i25 - i21, 0.0f, 4, null);
            }
            if (fabPlacement != null) {
                int i27 = this.$layoutHeight;
                int size9 = arrayList3.size();
                for (int i28 = 0; i28 < size9; i28++) {
                    Placeable placeable4 = (Placeable) arrayList3.get(i28);
                    int iB = fabPlacement.b();
                    t.g(numValueOf);
                    Placeable.PlacementScope.j(layout, placeable4, iB, i27 - numValueOf.intValue(), 0.0f, 4, null);
                }
                l0 l0Var = l0.INSTANCE;
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
            a(placementScope);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ScaffoldKt$ScaffoldLayout$1$1(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, int i10, boolean z6, p<? super Composer, ? super Integer, l0> pVar4, int i11, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar) {
        super(2);
        this.$topBar = pVar;
        this.$snackbar = pVar2;
        this.$fab = pVar3;
        this.$fabPosition = i10;
        this.$isFabDocked = z6;
        this.$bottomBar = pVar4;
        this.$$dirty = i11;
        this.$content = qVar;
    }

    @NotNull
    public final MeasureResult a(@NotNull SubcomposeMeasureScope SubcomposeLayout, long j6) {
        t.j(SubcomposeLayout, "$this$SubcomposeLayout");
        int iN = Constraints.n(j6);
        int iM = Constraints.m(j6);
        return MeasureScope.CC.b(SubcomposeLayout, iN, iM, null, new AnonymousClass1(SubcomposeLayout, this.$topBar, this.$snackbar, this.$fab, this.$fabPosition, iN, this.$isFabDocked, iM, Constraints.e(j6, 0, 0, 0, 0, 10, null), this.$bottomBar, this.$$dirty, this.$content), 4, null);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
        return a(subcomposeMeasureScope, constraints.t());
    }
}
