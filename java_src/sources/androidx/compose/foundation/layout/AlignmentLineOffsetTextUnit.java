package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class AlignmentLineOffsetTextUnit extends InspectorValueInfo implements LayoutModifier {
    private final long after;

    @NotNull
    private final AlignmentLine alignmentLine;
    private final long before;

    public /* synthetic */ AlignmentLineOffsetTextUnit(AlignmentLine alignmentLine, long j6, long j10, e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(alignmentLine, j6, j10, lVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int K(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.d(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
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

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        AlignmentLineOffsetTextUnit alignmentLineOffsetTextUnit = obj instanceof AlignmentLineOffsetTextUnit ? (AlignmentLineOffsetTextUnit) obj : null;
        if (alignmentLineOffsetTextUnit == null) {
            return false;
        }
        return t.e(this.alignmentLine, alignmentLineOffsetTextUnit.alignmentLine) && TextUnit.e(this.before, alignmentLineOffsetTextUnit.before) && TextUnit.e(this.after, alignmentLineOffsetTextUnit.after);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    private AlignmentLineOffsetTextUnit(AlignmentLine alignmentLine, long j6, long j10, e8.l<? super InspectorInfo, l0> lVar) {
        super(lVar);
        this.alignmentLine = alignmentLine;
        this.before = j6;
        this.after = j10;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        return AlignmentLineKt.c(measure, this.alignmentLine, !TextUnitKt.f(this.before) ? measure.s(this.before) : Dp.Companion.b(), !TextUnitKt.f(this.after) ? measure.s(this.after) : Dp.Companion.b(), measurable, j6);
    }

    public int hashCode() {
        return (((this.alignmentLine.hashCode() * 31) + TextUnit.i(this.before)) * 31) + TextUnit.i(this.after);
    }

    @NotNull
    public String toString() {
        return "AlignmentLineOffset(alignmentLine=" + this.alignmentLine + ", before=" + ((Object) TextUnit.j(this.before)) + ", after=" + ((Object) TextUnit.j(this.after)) + ')';
    }
}
