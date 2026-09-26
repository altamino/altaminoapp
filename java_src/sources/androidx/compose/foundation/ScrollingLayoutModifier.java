package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import e8.l;
import e8.p;
import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class ScrollingLayoutModifier implements LayoutModifier {
    private final boolean isReversed;
    private final boolean isVertical;

    @NotNull
    private final OverscrollEffect overscrollEffect;

    @NotNull
    private final ScrollState scrollerState;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @NotNull
    public final ScrollState a() {
        return this.scrollerState;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    public final boolean b() {
        return this.isReversed;
    }

    public final boolean c() {
        return this.isVertical;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScrollingLayoutModifier)) {
            return false;
        }
        ScrollingLayoutModifier scrollingLayoutModifier = (ScrollingLayoutModifier) obj;
        return t.e(this.scrollerState, scrollingLayoutModifier.scrollerState) && this.isReversed == scrollingLayoutModifier.isReversed && this.isVertical == scrollingLayoutModifier.isVertical && t.e(this.overscrollEffect, scrollingLayoutModifier.overscrollEffect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = this.scrollerState.hashCode() * 31;
        boolean z6 = this.isReversed;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        int i10 = (iHashCode + r1) * 31;
        boolean z10 = this.isVertical;
        return ((i10 + (z10 ? 1 : z10)) * 31) + this.overscrollEffect.hashCode();
    }

    @NotNull
    public String toString() {
        return "ScrollingLayoutModifier(scrollerState=" + this.scrollerState + ", isReversed=" + this.isReversed + ", isVertical=" + this.isVertical + ", overscrollEffect=" + this.overscrollEffect + ')';
    }

    public ScrollingLayoutModifier(@NotNull ScrollState scrollerState, boolean z6, boolean z10, @NotNull OverscrollEffect overscrollEffect) {
        t.j(scrollerState, "scrollerState");
        t.j(overscrollEffect, "overscrollEffect");
        this.scrollerState = scrollerState;
        this.isReversed = z6;
        this.isVertical = z10;
        this.overscrollEffect = overscrollEffect;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int K(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return measurable.Y(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        CheckScrollableContainerConstraintsKt.a(j6, this.isVertical ? Orientation.Vertical : Orientation.Horizontal);
        Placeable placeableB0 = measurable.b0(Constraints.e(j6, 0, this.isVertical ? Constraints.n(j6) : Integer.MAX_VALUE, 0, this.isVertical ? Integer.MAX_VALUE : Constraints.m(j6), 5, null));
        int iJ = o.j(placeableB0.Q0(), Constraints.n(j6));
        int iJ2 = o.j(placeableB0.B0(), Constraints.m(j6));
        int iB0 = placeableB0.B0() - iJ2;
        int iQ0 = placeableB0.Q0() - iJ;
        if (!this.isVertical) {
            iB0 = iQ0;
        }
        this.overscrollEffect.setEnabled(iB0 != 0);
        return MeasureScope.CC.b(measure, iJ, iJ2, null, new ScrollingLayoutModifier$measure$1(this, iB0, placeableB0), 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int S(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return measurable.a0(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int c0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return measurable.M(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int s0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return measurable.V(i10);
    }
}
