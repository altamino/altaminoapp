package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
interface IntrinsicSizeModifier extends LayoutModifier {

    /* JADX INFO: renamed from: androidx.compose.foundation.layout.IntrinsicSizeModifier$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    public final /* synthetic */ class CC {
        public static boolean a(IntrinsicSizeModifier intrinsicSizeModifier) {
            return true;
        }

        public static int b(IntrinsicSizeModifier intrinsicSizeModifier, @NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
            t.j(intrinsicMeasureScope, "<this>");
            t.j(measurable, "measurable");
            return measurable.M(i10);
        }

        public static int c(IntrinsicSizeModifier intrinsicSizeModifier, @NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
            t.j(intrinsicMeasureScope, "<this>");
            t.j(measurable, "measurable");
            return measurable.a0(i10);
        }

        @NotNull
        public static MeasureResult d(IntrinsicSizeModifier intrinsicSizeModifier, @NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
            t.j(measure, "$this$measure");
            t.j(measurable, "measurable");
            long jC0 = intrinsicSizeModifier.C0(measure, measurable, j6);
            if (intrinsicSizeModifier.M0()) {
                jC0 = ConstraintsKt.e(j6, jC0);
            }
            Placeable placeableB0 = measurable.b0(jC0);
            return MeasureScope.CC.b(measure, placeableB0.Q0(), placeableB0.B0(), null, new IntrinsicSizeModifier$measure$1(placeableB0), 4, null);
        }

        public static int e(IntrinsicSizeModifier intrinsicSizeModifier, @NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
            t.j(intrinsicMeasureScope, "<this>");
            t.j(measurable, "measurable");
            return measurable.V(i10);
        }

        public static int f(IntrinsicSizeModifier intrinsicSizeModifier, @NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
            t.j(intrinsicMeasureScope, "<this>");
            t.j(measurable, "measurable");
            return measurable.Y(i10);
        }
    }

    long C0(@NotNull MeasureScope measureScope, @NotNull Measurable measurable, long j6);

    boolean M0();
}
