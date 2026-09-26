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
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class UnspecifiedConstraintsModifier extends InspectorValueInfo implements LayoutModifier {
    private final float minHeight;
    private final float minWidth;

    public /* synthetic */ UnspecifiedConstraintsModifier(float f, float f6, e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(f, f6, lVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    public /* synthetic */ UnspecifiedConstraintsModifier(float f, float f6, e8.l lVar, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? Dp.Companion.b() : f, (i10 & 2) != 0 ? Dp.Companion.b() : f6, lVar, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int K(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return j8.o.e(measurable.Y(i10), !Dp.i(this.minWidth, Dp.Companion.b()) ? intrinsicMeasureScope.j0(this.minWidth) : 0);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        float f = this.minWidth;
        Dp.Companion companion = Dp.Companion;
        Placeable placeableB0 = measurable.b0(ConstraintsKt.a((Dp.i(f, companion.b()) || Constraints.p(j6) != 0) ? Constraints.p(j6) : j8.o.e(j8.o.j(measure.j0(this.minWidth), Constraints.n(j6)), 0), Constraints.n(j6), (Dp.i(this.minHeight, companion.b()) || Constraints.o(j6) != 0) ? Constraints.o(j6) : j8.o.e(j8.o.j(measure.j0(this.minHeight), Constraints.m(j6)), 0), Constraints.m(j6)));
        return MeasureScope.CC.b(measure, placeableB0.Q0(), placeableB0.B0(), null, new UnspecifiedConstraintsModifier$measure$1(placeableB0), 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int S(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return j8.o.e(measurable.a0(i10), !Dp.i(this.minWidth, Dp.Companion.b()) ? intrinsicMeasureScope.j0(this.minWidth) : 0);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int c0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return j8.o.e(measurable.M(i10), !Dp.i(this.minHeight, Dp.Companion.b()) ? intrinsicMeasureScope.j0(this.minHeight) : 0);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof UnspecifiedConstraintsModifier)) {
            return false;
        }
        UnspecifiedConstraintsModifier unspecifiedConstraintsModifier = (UnspecifiedConstraintsModifier) obj;
        return Dp.i(this.minWidth, unspecifiedConstraintsModifier.minWidth) && Dp.i(this.minHeight, unspecifiedConstraintsModifier.minHeight);
    }

    public int hashCode() {
        return (Dp.j(this.minWidth) * 31) + Dp.j(this.minHeight);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int s0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return j8.o.e(measurable.V(i10), !Dp.i(this.minHeight, Dp.Companion.b()) ? intrinsicMeasureScope.j0(this.minHeight) : 0);
    }

    private UnspecifiedConstraintsModifier(float f, float f6, e8.l<? super InspectorInfo, l0> lVar) {
        super(lVar);
        this.minWidth = f;
        this.minHeight = f6;
    }
}
