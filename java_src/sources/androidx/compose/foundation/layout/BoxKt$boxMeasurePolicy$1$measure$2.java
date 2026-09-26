package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class BoxKt$boxMeasurePolicy$1$measure$2 extends v implements e8.l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Alignment $alignment;
    final /* synthetic */ int $boxHeight;
    final /* synthetic */ int $boxWidth;
    final /* synthetic */ Measurable $measurable;
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ MeasureScope $this_MeasurePolicy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BoxKt$boxMeasurePolicy$1$measure$2(Placeable placeable, Measurable measurable, MeasureScope measureScope, int i10, int i11, Alignment alignment) {
        super(1);
        this.$placeable = placeable;
        this.$measurable = measurable;
        this.$this_MeasurePolicy = measureScope;
        this.$boxWidth = i10;
        this.$boxHeight = i11;
        this.$alignment = alignment;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        BoxKt.g(layout, this.$placeable, this.$measurable, this.$this_MeasurePolicy.getLayoutDirection(), this.$boxWidth, this.$boxHeight, this.$alignment);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
