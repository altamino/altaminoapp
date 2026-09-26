package androidx.compose.ui.layout;

import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class c {
    public static int a(MeasurePolicy measurePolicy, @NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) measurables.get(i11), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height));
        }
        return measurePolicy.a(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.b(0, i10, 0, 0, 13, null)).getHeight();
    }

    public static int b(MeasurePolicy measurePolicy, @NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) measurables.get(i11), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width));
        }
        return measurePolicy.a(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.b(0, 0, 0, i10, 7, null)).getWidth();
    }

    public static int c(MeasurePolicy measurePolicy, @NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) measurables.get(i11), IntrinsicMinMax.Min, IntrinsicWidthHeight.Height));
        }
        return measurePolicy.a(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.b(0, i10, 0, 0, 13, null)).getHeight();
    }

    public static int d(MeasurePolicy measurePolicy, @NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) measurables.get(i11), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width));
        }
        return measurePolicy.a(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.b(0, 0, 0, i10, 7, null)).getWidth();
    }
}
