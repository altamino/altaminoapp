package androidx.compose.animation;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class AnimatedEnterExitMeasurePolicy implements MeasurePolicy {

    @NotNull
    private final AnimatedVisibilityScopeImpl scope;

    public AnimatedEnterExitMeasurePolicy(@NotNull AnimatedVisibilityScopeImpl scope) {
        t.j(scope, "scope");
        this.scope = scope;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
        Object obj;
        t.j(measure, "$this$measure");
        t.j(measurables, "measurables");
        List<? extends Measurable> list = measurables;
        ArrayList arrayList = new ArrayList(w.x(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Measurable) it.next()).b0(j6));
        }
        Object obj2 = null;
        int i10 = 1;
        if (!arrayList.isEmpty()) {
            obj = arrayList.get(0);
            int iQ0 = ((Placeable) obj).Q0();
            int iO = v.o(arrayList);
            if (1 <= iO) {
                int i11 = 1;
                while (true) {
                    Object obj3 = arrayList.get(i11);
                    int iQ1 = ((Placeable) obj3).Q0();
                    if (iQ0 < iQ1) {
                        obj = obj3;
                        iQ0 = iQ1;
                    }
                    if (i11 == iO) {
                        break;
                    }
                    i11++;
                }
            }
        } else {
            obj = null;
        }
        Placeable placeable = (Placeable) obj;
        int iQ2 = placeable != null ? placeable.Q0() : 0;
        if (!arrayList.isEmpty()) {
            Object obj4 = arrayList.get(0);
            int iB0 = ((Placeable) obj4).B0();
            int iO2 = v.o(arrayList);
            if (1 <= iO2) {
                while (true) {
                    Object obj5 = arrayList.get(i10);
                    int iB1 = ((Placeable) obj5).B0();
                    if (iB0 < iB1) {
                        obj4 = obj5;
                        iB0 = iB1;
                    }
                    if (i10 == iO2) {
                        break;
                    }
                    i10++;
                }
            }
            obj2 = obj4;
        }
        Placeable placeable2 = (Placeable) obj2;
        int iB2 = placeable2 != null ? placeable2.B0() : 0;
        this.scope.b().setValue(IntSize.b(IntSizeKt.a(iQ2, iB2)));
        return MeasureScope.CC.b(measure, iQ2, iB2, null, new AnimatedEnterExitMeasurePolicy$measure$1(arrayList), 4, null);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        Integer num = (Integer) o.w(o.u(d0.Y(measurables), new AnimatedEnterExitMeasurePolicy$minIntrinsicHeight$1(i10)));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        Integer num = (Integer) o.w(o.u(d0.Y(measurables), new AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1(i10)));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        Integer num = (Integer) o.w(o.u(d0.Y(measurables), new AnimatedEnterExitMeasurePolicy$maxIntrinsicHeight$1(i10)));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        Integer num = (Integer) o.w(o.u(d0.Y(measurables), new AnimatedEnterExitMeasurePolicy$maxIntrinsicWidth$1(i10)));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }
}
