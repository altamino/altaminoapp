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
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class WrapContentModifier extends InspectorValueInfo implements LayoutModifier {

    @NotNull
    private final Object align;

    @NotNull
    private final e8.p<IntSize, LayoutDirection, IntOffset> alignmentCallback;

    @NotNull
    private final Direction direction;
    private final boolean unbounded;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int K(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.d(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        Direction direction = this.direction;
        Direction direction2 = Direction.Vertical;
        int iP = direction != direction2 ? 0 : Constraints.p(j6);
        Direction direction3 = this.direction;
        Direction direction4 = Direction.Horizontal;
        Placeable placeableB0 = measurable.b0(ConstraintsKt.a(iP, (this.direction == direction2 || !this.unbounded) ? Constraints.n(j6) : Integer.MAX_VALUE, direction3 == direction4 ? Constraints.o(j6) : 0, (this.direction == direction4 || !this.unbounded) ? Constraints.m(j6) : Integer.MAX_VALUE));
        int iN = j8.o.n(placeableB0.Q0(), Constraints.p(j6), Constraints.n(j6));
        int iN2 = j8.o.n(placeableB0.B0(), Constraints.o(j6), Constraints.m(j6));
        return MeasureScope.CC.b(measure, iN, iN2, null, new WrapContentModifier$measure$1(this, iN, placeableB0, iN2, measure), 4, null);
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

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WrapContentModifier(@NotNull Direction direction, boolean z6, @NotNull e8.p<? super IntSize, ? super LayoutDirection, IntOffset> alignmentCallback, @NotNull Object align, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(direction, "direction");
        t.j(alignmentCallback, "alignmentCallback");
        t.j(align, "align");
        t.j(inspectorInfo, "inspectorInfo");
        this.direction = direction;
        this.unbounded = z6;
        this.alignmentCallback = alignmentCallback;
        this.align = align;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof WrapContentModifier)) {
            return false;
        }
        WrapContentModifier wrapContentModifier = (WrapContentModifier) obj;
        return this.direction == wrapContentModifier.direction && this.unbounded == wrapContentModifier.unbounded && t.e(this.align, wrapContentModifier.align);
    }

    public int hashCode() {
        return (((this.direction.hashCode() * 31) + androidx.compose.foundation.c.a(this.unbounded)) * 31) + this.align.hashCode();
    }
}
