package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class SpacerMeasurePolicy implements MeasurePolicy {

    @NotNull
    public static final SpacerMeasurePolicy INSTANCE = new SpacerMeasurePolicy();

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
    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurables, "measurables");
        return MeasureScope.CC.b(measure, Constraints.l(j6) ? Constraints.n(j6) : 0, Constraints.k(j6) ? Constraints.m(j6) : 0, null, SpacerMeasurePolicy$measure$1$1.INSTANCE, 4, null);
    }

    private SpacerMeasurePolicy() {
    }
}
