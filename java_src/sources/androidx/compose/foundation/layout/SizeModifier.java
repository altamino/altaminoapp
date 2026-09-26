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
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class SizeModifier extends InspectorValueInfo implements LayoutModifier {
    private final boolean enforceIncoming;
    private final float maxHeight;
    private final float maxWidth;
    private final float minHeight;
    private final float minWidth;

    public /* synthetic */ SizeModifier(float f, float f6, float f7, float f10, boolean z6, e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(f, f6, f7, f10, z6, lVar);
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

    public /* synthetic */ SizeModifier(float f, float f6, float f7, float f10, boolean z6, e8.l lVar, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? Dp.Companion.b() : f, (i10 & 2) != 0 ? Dp.Companion.b() : f6, (i10 & 4) != 0 ? Dp.Companion.b() : f7, (i10 & 8) != 0 ? Dp.Companion.b() : f10, z6, lVar, null);
    }

    private final long a(Density density) {
        int iE;
        int iE2;
        float f = this.maxWidth;
        Dp.Companion companion = Dp.Companion;
        int i10 = 0;
        int iJ0 = !Dp.i(f, companion.b()) ? density.j0(((Dp) j8.o.g(Dp.c(this.maxWidth), Dp.c(Dp.f(0)))).l()) : Integer.MAX_VALUE;
        int iJ1 = !Dp.i(this.maxHeight, companion.b()) ? density.j0(((Dp) j8.o.g(Dp.c(this.maxHeight), Dp.c(Dp.f(0)))).l()) : Integer.MAX_VALUE;
        if (Dp.i(this.minWidth, companion.b()) || (iE = j8.o.e(j8.o.j(density.j0(this.minWidth), iJ0), 0)) == Integer.MAX_VALUE) {
            iE = 0;
        }
        if (!Dp.i(this.minHeight, companion.b()) && (iE2 = j8.o.e(j8.o.j(density.j0(this.minHeight), iJ1), 0)) != Integer.MAX_VALUE) {
            i10 = iE2;
        }
        return ConstraintsKt.a(iE, iJ0, i10, iJ1);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int K(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        long jA = a(intrinsicMeasureScope);
        return Constraints.l(jA) ? Constraints.n(jA) : ConstraintsKt.g(jA, measurable.Y(i10));
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        long jA;
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        long jA2 = a(measure);
        if (this.enforceIncoming) {
            jA = ConstraintsKt.e(j6, jA2);
        } else {
            float f = this.minWidth;
            Dp.Companion companion = Dp.Companion;
            jA = ConstraintsKt.a(!Dp.i(f, companion.b()) ? Constraints.p(jA2) : j8.o.j(Constraints.p(j6), Constraints.n(jA2)), !Dp.i(this.maxWidth, companion.b()) ? Constraints.n(jA2) : j8.o.e(Constraints.n(j6), Constraints.p(jA2)), !Dp.i(this.minHeight, companion.b()) ? Constraints.o(jA2) : j8.o.j(Constraints.o(j6), Constraints.m(jA2)), !Dp.i(this.maxHeight, companion.b()) ? Constraints.m(jA2) : j8.o.e(Constraints.m(j6), Constraints.o(jA2)));
        }
        Placeable placeableB0 = measurable.b0(jA);
        return MeasureScope.CC.b(measure, placeableB0.Q0(), placeableB0.B0(), null, new SizeModifier$measure$1(placeableB0), 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int S(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        long jA = a(intrinsicMeasureScope);
        return Constraints.l(jA) ? Constraints.n(jA) : ConstraintsKt.g(jA, measurable.a0(i10));
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int c0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        long jA = a(intrinsicMeasureScope);
        return Constraints.k(jA) ? Constraints.m(jA) : ConstraintsKt.f(jA, measurable.M(i10));
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SizeModifier)) {
            return false;
        }
        SizeModifier sizeModifier = (SizeModifier) obj;
        return Dp.i(this.minWidth, sizeModifier.minWidth) && Dp.i(this.minHeight, sizeModifier.minHeight) && Dp.i(this.maxWidth, sizeModifier.maxWidth) && Dp.i(this.maxHeight, sizeModifier.maxHeight) && this.enforceIncoming == sizeModifier.enforceIncoming;
    }

    public int hashCode() {
        return ((((((Dp.j(this.minWidth) * 31) + Dp.j(this.minHeight)) * 31) + Dp.j(this.maxWidth)) * 31) + Dp.j(this.maxHeight)) * 31;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int s0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        long jA = a(intrinsicMeasureScope);
        return Constraints.k(jA) ? Constraints.m(jA) : ConstraintsKt.f(jA, measurable.V(i10));
    }

    private SizeModifier(float f, float f6, float f7, float f10, boolean z6, e8.l<? super InspectorInfo, l0> lVar) {
        super(lVar);
        this.minWidth = f;
        this.minHeight = f6;
        this.maxWidth = f7;
        this.maxHeight = f10;
        this.enforceIncoming = z6;
    }
}
