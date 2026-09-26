package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class PaddingValuesModifier extends InspectorValueInfo implements LayoutModifier {

    @NotNull
    private final PaddingValues paddingValues;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int K(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.d(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int S(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.b(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @NotNull
    public final PaddingValues a() {
        return this.paddingValues;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int c0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.a(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaddingValuesModifier(@NotNull PaddingValues paddingValues, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(paddingValues, "paddingValues");
        t.j(inspectorInfo, "inspectorInfo");
        this.paddingValues = paddingValues;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        float f = 0;
        if (Dp.e(this.paddingValues.b(measure.getLayoutDirection()), Dp.f(f)) < 0 || Dp.e(this.paddingValues.d(), Dp.f(f)) < 0 || Dp.e(this.paddingValues.c(measure.getLayoutDirection()), Dp.f(f)) < 0 || Dp.e(this.paddingValues.a(), Dp.f(f)) < 0) {
            throw new IllegalArgumentException("Padding must be non-negative".toString());
        }
        int iJ0 = measure.j0(this.paddingValues.b(measure.getLayoutDirection())) + measure.j0(this.paddingValues.c(measure.getLayoutDirection()));
        int iJ1 = measure.j0(this.paddingValues.d()) + measure.j0(this.paddingValues.a());
        Placeable placeableB0 = measurable.b0(ConstraintsKt.i(j6, -iJ0, -iJ1));
        return MeasureScope.CC.b(measure, ConstraintsKt.g(j6, placeableB0.Q0() + iJ0), ConstraintsKt.f(j6, placeableB0.B0() + iJ1), null, new PaddingValuesModifier$measure$2(placeableB0, measure, this), 4, null);
    }

    public boolean equals(@Nullable Object obj) {
        PaddingValuesModifier paddingValuesModifier = obj instanceof PaddingValuesModifier ? (PaddingValuesModifier) obj : null;
        if (paddingValuesModifier == null) {
            return false;
        }
        return t.e(this.paddingValues, paddingValuesModifier.paddingValues);
    }

    public int hashCode() {
        return this.paddingValues.hashCode();
    }
}
