package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class AlignmentLineKt$alignmentLineOffsetMeasure$1 extends v implements e8.l<Placeable.PlacementScope, l0> {
    final /* synthetic */ AlignmentLine $alignmentLine;
    final /* synthetic */ float $before;
    final /* synthetic */ int $height;
    final /* synthetic */ int $paddingAfter;
    final /* synthetic */ int $paddingBefore;
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ int $width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AlignmentLineKt$alignmentLineOffsetMeasure$1(AlignmentLine alignmentLine, float f, int i10, int i11, int i12, Placeable placeable, int i13) {
        super(1);
        this.$alignmentLine = alignmentLine;
        this.$before = f;
        this.$paddingBefore = i10;
        this.$width = i11;
        this.$paddingAfter = i12;
        this.$placeable = placeable;
        this.$height = i13;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        int iQ0;
        t.j(layout, "$this$layout");
        int iB0 = 0;
        if (AlignmentLineKt.d(this.$alignmentLine)) {
            iQ0 = 0;
        } else {
            iQ0 = !Dp.i(this.$before, Dp.Companion.b()) ? this.$paddingBefore : (this.$width - this.$paddingAfter) - this.$placeable.Q0();
        }
        if (AlignmentLineKt.d(this.$alignmentLine)) {
            iB0 = !Dp.i(this.$before, Dp.Companion.b()) ? this.$paddingBefore : (this.$height - this.$paddingAfter) - this.$placeable.B0();
        }
        Placeable.PlacementScope.n(layout, this.$placeable, iQ0, iB0, 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
