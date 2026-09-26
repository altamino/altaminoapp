package androidx.compose.foundation.layout;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class BoxKt {

    @NotNull
    private static final MeasurePolicy DefaultBoxMeasurePolicy = d(Alignment.Companion.o(), false);

    @NotNull
    private static final MeasurePolicy EmptyBoxMeasurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.layout.BoxKt$EmptyBoxMeasurePolicy$1
        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return androidx.compose.ui.layout.c.c(this, intrinsicMeasureScope, list, i10);
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return androidx.compose.ui.layout.c.d(this, intrinsicMeasureScope, list, i10);
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return androidx.compose.ui.layout.c.a(this, intrinsicMeasureScope, list, i10);
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return androidx.compose.ui.layout.c.b(this, intrinsicMeasureScope, list, i10);
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        @NotNull
        public final MeasureResult a(@NotNull MeasureScope MeasurePolicy, @NotNull List<? extends Measurable> list, long j6) {
            t.j(MeasurePolicy, "$this$MeasurePolicy");
            t.j(list, "<anonymous parameter 0>");
            return MeasureScope.CC.b(MeasurePolicy, Constraints.p(j6), Constraints.o(j6), null, BoxKt$EmptyBoxMeasurePolicy$1$measure$1.INSTANCE, 4, null);
        }
    };

    @ComposableTarget
    @Composable
    public static final void a(@NotNull Modifier modifier, @Nullable Composer composer, int i10) {
        int i11;
        t.j(modifier, "modifier");
        Composer composerS = composer.s(-211209833);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && composerS.b()) {
            composerS.g();
        } else {
            MeasurePolicy measurePolicy = EmptyBoxMeasurePolicy;
            composerS.G(-1323940314);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            e8.a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier);
            int i12 = (((((i11 << 3) & 112) | 384) << 9) & 7168) | 6;
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA = Updater.a(composerS);
            Updater.e(composerA, measurePolicy, companion.d());
            Updater.e(composerA, density, companion.b());
            Updater.e(composerA, layoutDirection, companion.c());
            Updater.e(composerA, viewConfiguration, companion.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i12 >> 3) & 112));
            composerS.G(2058660585);
            composerS.G(1021196736);
            if (((i12 >> 9) & 10) == 2 && composerS.b()) {
                composerS.g();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BoxKt$Box$3(modifier, i10));
    }

    @NotNull
    public static final MeasurePolicy d(@NotNull final Alignment alignment, final boolean z6) {
        t.j(alignment, "alignment");
        return new MeasurePolicy() { // from class: androidx.compose.foundation.layout.BoxKt$boxMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
                return androidx.compose.ui.layout.c.c(this, intrinsicMeasureScope, list, i10);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
                return androidx.compose.ui.layout.c.d(this, intrinsicMeasureScope, list, i10);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
                return androidx.compose.ui.layout.c.a(this, intrinsicMeasureScope, list, i10);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
                return androidx.compose.ui.layout.c.b(this, intrinsicMeasureScope, list, i10);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            public final MeasureResult a(@NotNull MeasureScope MeasurePolicy, @NotNull List<? extends Measurable> measurables, long j6) {
                int iP;
                Placeable placeableB0;
                int iMax;
                t.j(MeasurePolicy, "$this$MeasurePolicy");
                t.j(measurables, "measurables");
                if (measurables.isEmpty()) {
                    return MeasureScope.CC.b(MeasurePolicy, Constraints.p(j6), Constraints.o(j6), null, BoxKt$boxMeasurePolicy$1$measure$1.INSTANCE, 4, null);
                }
                long jE = z6 ? j6 : Constraints.e(j6, 0, 0, 0, 0, 10, null);
                if (measurables.size() == 1) {
                    Measurable measurable = measurables.get(0);
                    if (BoxKt.f(measurable)) {
                        iP = Constraints.p(j6);
                        int iO = Constraints.o(j6);
                        placeableB0 = measurable.b0(Constraints.Companion.c(Constraints.p(j6), Constraints.o(j6)));
                        iMax = iO;
                    } else {
                        Placeable placeableB1 = measurable.b0(jE);
                        int iMax2 = Math.max(Constraints.p(j6), placeableB1.Q0());
                        iMax = Math.max(Constraints.o(j6), placeableB1.B0());
                        placeableB0 = placeableB1;
                        iP = iMax2;
                    }
                    return MeasureScope.CC.b(MeasurePolicy, iP, iMax, null, new BoxKt$boxMeasurePolicy$1$measure$2(placeableB0, measurable, MeasurePolicy, iP, iMax, alignment), 4, null);
                }
                Placeable[] placeableArr = new Placeable[measurables.size()];
                n0 n0Var = new n0();
                n0Var.element = Constraints.p(j6);
                n0 n0Var2 = new n0();
                n0Var2.element = Constraints.o(j6);
                int size = measurables.size();
                boolean z10 = false;
                for (int i10 = 0; i10 < size; i10++) {
                    Measurable measurable2 = measurables.get(i10);
                    if (BoxKt.f(measurable2)) {
                        z10 = true;
                    } else {
                        Placeable placeableB2 = measurable2.b0(jE);
                        placeableArr[i10] = placeableB2;
                        n0Var.element = Math.max(n0Var.element, placeableB2.Q0());
                        n0Var2.element = Math.max(n0Var2.element, placeableB2.B0());
                    }
                }
                if (z10) {
                    int i11 = n0Var.element;
                    int i12 = i11 != Integer.MAX_VALUE ? i11 : 0;
                    int i13 = n0Var2.element;
                    long jA = ConstraintsKt.a(i12, i11, i13 != Integer.MAX_VALUE ? i13 : 0, i13);
                    int size2 = measurables.size();
                    for (int i14 = 0; i14 < size2; i14++) {
                        Measurable measurable3 = measurables.get(i14);
                        if (BoxKt.f(measurable3)) {
                            placeableArr[i14] = measurable3.b0(jA);
                        }
                    }
                }
                return MeasureScope.CC.b(MeasurePolicy, n0Var.element, n0Var2.element, null, new BoxKt$boxMeasurePolicy$1$measure$5(placeableArr, measurables, MeasurePolicy, n0Var, n0Var2, alignment), 4, null);
            }
        };
    }

    @Composable
    @NotNull
    public static final MeasurePolicy h(@NotNull Alignment alignment, boolean z6, @Nullable Composer composer, int i10) {
        MeasurePolicy measurePolicy;
        t.j(alignment, "alignment");
        composer.G(56522820);
        if (!t.e(alignment, Alignment.Companion.o()) || z6) {
            Boolean boolValueOf = Boolean.valueOf(z6);
            composer.G(511388516);
            boolean zK = composer.k(boolValueOf) | composer.k(alignment);
            Object objH = composer.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = d(alignment, z6);
                composer.z(objH);
            }
            composer.Q();
            measurePolicy = (MeasurePolicy) objH;
        } else {
            measurePolicy = DefaultBoxMeasurePolicy;
        }
        composer.Q();
        return measurePolicy;
    }

    private static final BoxChildData e(Measurable measurable) {
        Object objE = measurable.e();
        if (objE instanceof BoxChildData) {
            return (BoxChildData) objE;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(Measurable measurable) {
        BoxChildData boxChildDataE = e(measurable);
        if (boxChildDataE != null) {
            return boxChildDataE.b();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(Placeable.PlacementScope placementScope, Placeable placeable, Measurable measurable, LayoutDirection layoutDirection, int i10, int i11, Alignment alignment) {
        Alignment alignment2;
        Alignment alignmentA;
        BoxChildData boxChildDataE = e(measurable);
        if (boxChildDataE != null && (alignmentA = boxChildDataE.a()) != null) {
            alignment2 = alignmentA;
        } else {
            alignment2 = alignment;
        }
        Placeable.PlacementScope.l(placementScope, placeable, alignment2.a(IntSizeKt.a(placeable.Q0(), placeable.B0()), IntSizeKt.a(i10, i11), layoutDirection), 0.0f, 2, null);
    }
}
