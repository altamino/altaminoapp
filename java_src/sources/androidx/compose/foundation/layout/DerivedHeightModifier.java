package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
@Stable
final class DerivedHeightModifier extends InspectorValueInfo implements LayoutModifier, ModifierLocalConsumer {

    @NotNull
    private final e8.p<WindowInsets, Density, Integer> heightCalc;

    @NotNull
    private final WindowInsets insets;

    @NotNull
    private final MutableState unconsumedInsets$delegate;

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

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DerivedHeightModifier)) {
            return false;
        }
        DerivedHeightModifier derivedHeightModifier = (DerivedHeightModifier) obj;
        return t.e(this.insets, derivedHeightModifier.insets) && t.e(this.heightCalc, derivedHeightModifier.heightCalc);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DerivedHeightModifier(@NotNull WindowInsets insets, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo, @NotNull e8.p<? super WindowInsets, ? super Density, Integer> heightCalc) {
        super(inspectorInfo);
        t.j(insets, "insets");
        t.j(inspectorInfo, "inspectorInfo");
        t.j(heightCalc, "heightCalc");
        this.insets = insets;
        this.heightCalc = heightCalc;
        this.unconsumedInsets$delegate = SnapshotStateKt__SnapshotStateKt.e(insets, null, 2, null);
    }

    private final WindowInsets a() {
        return (WindowInsets) this.unconsumedInsets$delegate.getValue();
    }

    private final void b(WindowInsets windowInsets) {
        this.unconsumedInsets$delegate.setValue(windowInsets);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        int iIntValue = this.heightCalc.invoke(a(), measure).intValue();
        if (iIntValue == 0) {
            return MeasureScope.CC.b(measure, 0, 0, null, DerivedHeightModifier$measure$1.INSTANCE, 4, null);
        }
        Placeable placeableB0 = measurable.b0(Constraints.e(j6, 0, 0, iIntValue, iIntValue, 3, null));
        return MeasureScope.CC.b(measure, placeableB0.Q0(), iIntValue, null, new DerivedHeightModifier$measure$2(placeableB0), 4, null);
    }

    public int hashCode() {
        return (this.insets.hashCode() * 31) + this.heightCalc.hashCode();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        b(WindowInsetsKt.d(this.insets, (WindowInsets) scope.a(WindowInsetsPaddingKt.a())));
    }
}
