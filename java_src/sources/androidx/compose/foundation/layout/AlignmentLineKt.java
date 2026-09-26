package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class AlignmentLineKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult c(MeasureScope measureScope, AlignmentLine alignmentLine, float f, float f6, Measurable measurable, long j6) {
        Placeable placeableB0 = measurable.b0(d(alignmentLine) ? Constraints.e(j6, 0, 0, 0, 0, 11, null) : Constraints.e(j6, 0, 0, 0, 0, 14, null));
        int iC0 = placeableB0.c0(alignmentLine);
        if (iC0 == Integer.MIN_VALUE) {
            iC0 = 0;
        }
        int iB0 = d(alignmentLine) ? placeableB0.B0() : placeableB0.Q0();
        int iM = d(alignmentLine) ? Constraints.m(j6) : Constraints.n(j6);
        Dp.Companion companion = Dp.Companion;
        int i10 = iM - iB0;
        int iN = j8.o.n((!Dp.i(f, companion.b()) ? measureScope.j0(f) : 0) - iC0, 0, i10);
        int iN2 = j8.o.n(((!Dp.i(f6, companion.b()) ? measureScope.j0(f6) : 0) - iB0) + iC0, 0, i10 - iN);
        int iQ0 = d(alignmentLine) ? placeableB0.Q0() : Math.max(placeableB0.Q0() + iN + iN2, Constraints.p(j6));
        int iMax = d(alignmentLine) ? Math.max(placeableB0.B0() + iN + iN2, Constraints.o(j6)) : placeableB0.B0();
        return MeasureScope.CC.b(measureScope, iQ0, iMax, null, new AlignmentLineKt$alignmentLineOffsetMeasure$1(alignmentLine, f, iN, iQ0, iN2, placeableB0, iMax), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(AlignmentLine alignmentLine) {
        return alignmentLine instanceof HorizontalAlignmentLine;
    }

    @Stable
    @NotNull
    public static final Modifier e(@NotNull Modifier paddingFrom, @NotNull AlignmentLine alignmentLine, float f, float f6) {
        t.j(paddingFrom, "$this$paddingFrom");
        t.j(alignmentLine, "alignmentLine");
        return paddingFrom.B(new AlignmentLineOffsetDp(alignmentLine, f, f6, InspectableValueKt.c() ? new AlignmentLineKt$paddingFrom4j6BHR0$$inlined$debugInspectorInfo$1(alignmentLine, f, f6) : InspectableValueKt.a(), null));
    }

    public static /* synthetic */ Modifier f(Modifier modifier, AlignmentLine alignmentLine, float f, float f6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f = Dp.Companion.b();
        }
        if ((i10 & 4) != 0) {
            f6 = Dp.Companion.b();
        }
        return e(modifier, alignmentLine, f, f6);
    }

    @Stable
    @NotNull
    public static final Modifier g(@NotNull Modifier paddingFromBaseline, float f, float f6) {
        t.j(paddingFromBaseline, "$this$paddingFromBaseline");
        Dp.Companion companion = Dp.Companion;
        return paddingFromBaseline.B(!Dp.i(f6, companion.b()) ? f(paddingFromBaseline, androidx.compose.ui.layout.AlignmentLineKt.b(), 0.0f, f6, 2, null) : Modifier.Companion).B(!Dp.i(f, companion.b()) ? f(paddingFromBaseline, androidx.compose.ui.layout.AlignmentLineKt.a(), f, 0.0f, 4, null) : Modifier.Companion);
    }
}
