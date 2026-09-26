package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class RequiredMinIntrinsicHeightModifier implements IntrinsicSizeModifier {

    @NotNull
    public static final RequiredMinIntrinsicHeightModifier INSTANCE = new RequiredMinIntrinsicHeightModifier();
    private static final boolean enforceIncoming = false;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int K(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return IntrinsicSizeModifier.CC.f(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier
    public boolean M0() {
        return enforceIncoming;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ MeasureResult N0(MeasureScope measureScope, Measurable measurable, long j6) {
        return IntrinsicSizeModifier.CC.d(this, measureScope, measurable, j6);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int S(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return IntrinsicSizeModifier.CC.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
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

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return IntrinsicSizeModifier.CC.e(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier
    public long C0(@NotNull MeasureScope calculateContentConstraints, @NotNull Measurable measurable, long j6) {
        t.j(calculateContentConstraints, "$this$calculateContentConstraints");
        t.j(measurable, "measurable");
        return Constraints.Companion.d(measurable.V(Constraints.n(j6)));
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int c0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return measurable.V(i10);
    }

    private RequiredMinIntrinsicHeightModifier() {
    }
}
