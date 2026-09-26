package androidx.compose.animation;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class AnimatedContentMeasurePolicy implements MeasurePolicy {

    @NotNull
    private final AnimatedContentScope<?> rootScope;

    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
        Placeable placeable;
        int i10;
        Placeable placeable2;
        t.j(measure, "$this$measure");
        t.j(measurables, "measurables");
        int size = measurables.size();
        Placeable[] placeableArr = new Placeable[size];
        int size2 = measurables.size();
        int i11 = 0;
        while (true) {
            placeable = null;
            i10 = 1;
            if (i11 >= size2) {
                break;
            }
            Measurable measurable = measurables.get(i11);
            Object objE = measurable.e();
            AnimatedContentScope.ChildData childData = objE instanceof AnimatedContentScope.ChildData ? (AnimatedContentScope.ChildData) objE : null;
            if (childData != null && childData.a()) {
                placeableArr[i11] = measurable.b0(j6);
            }
            i11++;
        }
        int size3 = measurables.size();
        for (int i12 = 0; i12 < size3; i12++) {
            Measurable measurable2 = measurables.get(i12);
            if (placeableArr[i12] == null) {
                placeableArr[i12] = measurable2.b0(j6);
            }
        }
        if (size != 0) {
            placeable2 = placeableArr[0];
            int iR = p.R(placeableArr);
            if (iR != 0) {
                int iQ0 = placeable2 != null ? placeable2.Q0() : 0;
                if (1 <= iR) {
                    int i13 = 1;
                    while (true) {
                        Placeable placeable3 = placeableArr[i13];
                        int iQ1 = placeable3 != null ? placeable3.Q0() : 0;
                        if (iQ0 < iQ1) {
                            placeable2 = placeable3;
                            iQ0 = iQ1;
                        }
                        if (i13 == iR) {
                            break;
                        }
                        i13++;
                    }
                }
            }
        } else {
            placeable2 = null;
        }
        int iQ2 = placeable2 != null ? placeable2.Q0() : 0;
        if (size != 0) {
            placeable = placeableArr[0];
            int iR2 = p.R(placeableArr);
            if (iR2 != 0) {
                int iB0 = placeable != null ? placeable.B0() : 0;
                if (1 <= iR2) {
                    while (true) {
                        Placeable placeable4 = placeableArr[i10];
                        int iB1 = placeable4 != null ? placeable4.B0() : 0;
                        if (iB0 < iB1) {
                            placeable = placeable4;
                            iB0 = iB1;
                        }
                        if (i10 == iR2) {
                            break;
                        }
                        i10++;
                    }
                }
            }
        }
        int iB2 = placeable != null ? placeable.B0() : 0;
        this.rootScope.r(IntSizeKt.a(iQ2, iB2));
        return MeasureScope.CC.b(measure, iQ2, iB2, null, new AnimatedContentMeasurePolicy$measure$3(placeableArr, this, iQ2, iB2), 4, null);
    }

    @NotNull
    public final AnimatedContentScope<?> f() {
        return this.rootScope;
    }

    public AnimatedContentMeasurePolicy(@NotNull AnimatedContentScope<?> rootScope) {
        t.j(rootScope, "rootScope");
        this.rootScope = rootScope;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        Integer num = (Integer) o.w(o.u(d0.Y(measurables), new AnimatedContentMeasurePolicy$minIntrinsicHeight$1(i10)));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        Integer num = (Integer) o.w(o.u(d0.Y(measurables), new AnimatedContentMeasurePolicy$minIntrinsicWidth$1(i10)));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        Integer num = (Integer) o.w(o.u(d0.Y(measurables), new AnimatedContentMeasurePolicy$maxIntrinsicHeight$1(i10)));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        Integer num = (Integer) o.w(o.u(d0.Y(measurables), new AnimatedContentMeasurePolicy$maxIntrinsicWidth$1(i10)));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }
}
