package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class RootMeasurePolicy extends LayoutNode.NoIntrinsicsMeasurePolicy {

    @NotNull
    public static final RootMeasurePolicy INSTANCE = new RootMeasurePolicy();

    private RootMeasurePolicy() {
        super("Undefined intrinsics block and it is required");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurables, "measurables");
        if (measurables.isEmpty()) {
            return MeasureScope.CC.b(measure, Constraints.p(j6), Constraints.o(j6), null, RootMeasurePolicy$measure$1.INSTANCE, 4, null);
        }
        if (measurables.size() == 1) {
            Placeable placeableB0 = measurables.get(0).b0(j6);
            return MeasureScope.CC.b(measure, ConstraintsKt.g(j6, placeableB0.Q0()), ConstraintsKt.f(j6, placeableB0.B0()), null, new RootMeasurePolicy$measure$2(placeableB0), 4, null);
        }
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(measurables.get(i10).b0(j6));
        }
        int size2 = arrayList.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i11 = 0; i11 < size2; i11++) {
            Placeable placeable = (Placeable) arrayList.get(i11);
            iMax = Math.max(placeable.Q0(), iMax);
            iMax2 = Math.max(placeable.B0(), iMax2);
        }
        return MeasureScope.CC.b(measure, ConstraintsKt.g(j6, iMax), ConstraintsKt.f(j6, iMax2), null, new RootMeasurePolicy$measure$4(arrayList), 4, null);
    }
}
