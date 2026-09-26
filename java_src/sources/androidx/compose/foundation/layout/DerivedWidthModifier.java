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
import androidx.compose.ui.unit.LayoutDirection;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
@Stable
final class DerivedWidthModifier extends InspectorValueInfo implements LayoutModifier, ModifierLocalConsumer {

    @NotNull
    private final WindowInsets insets;

    @NotNull
    private final MutableState unconsumedInsets$delegate;

    @NotNull
    private final q<WindowInsets, LayoutDirection, Density, Integer> widthCalc;

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
        if (!(obj instanceof DerivedWidthModifier)) {
            return false;
        }
        DerivedWidthModifier derivedWidthModifier = (DerivedWidthModifier) obj;
        return t.e(this.insets, derivedWidthModifier.insets) && t.e(this.widthCalc, derivedWidthModifier.widthCalc);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DerivedWidthModifier(@NotNull WindowInsets insets, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo, @NotNull q<? super WindowInsets, ? super LayoutDirection, ? super Density, Integer> widthCalc) {
        super(inspectorInfo);
        t.j(insets, "insets");
        t.j(inspectorInfo, "inspectorInfo");
        t.j(widthCalc, "widthCalc");
        this.insets = insets;
        this.widthCalc = widthCalc;
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
        int iIntValue = this.widthCalc.invoke(a(), measure.getLayoutDirection(), measure).intValue();
        if (iIntValue == 0) {
            return MeasureScope.CC.b(measure, 0, 0, null, DerivedWidthModifier$measure$1.INSTANCE, 4, null);
        }
        Placeable placeableB0 = measurable.b0(Constraints.e(j6, iIntValue, iIntValue, 0, 0, 12, null));
        return MeasureScope.CC.b(measure, iIntValue, placeableB0.B0(), null, new DerivedWidthModifier$measure$2(placeableB0), 4, null);
    }

    public int hashCode() {
        return (this.insets.hashCode() * 31) + this.widthCalc.hashCode();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        b(WindowInsetsKt.d(this.insets, (WindowInsets) scope.a(WindowInsetsPaddingKt.a())));
    }
}
