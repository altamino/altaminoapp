package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.List;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class BoxKt$boxMeasurePolicy$1$measure$5 extends v implements e8.l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Alignment $alignment;
    final /* synthetic */ n0 $boxHeight;
    final /* synthetic */ n0 $boxWidth;
    final /* synthetic */ List<Measurable> $measurables;
    final /* synthetic */ Placeable[] $placeables;
    final /* synthetic */ MeasureScope $this_MeasurePolicy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BoxKt$boxMeasurePolicy$1$measure$5(Placeable[] placeableArr, List<? extends Measurable> list, MeasureScope measureScope, n0 n0Var, n0 n0Var2, Alignment alignment) {
        super(1);
        this.$placeables = placeableArr;
        this.$measurables = list;
        this.$this_MeasurePolicy = measureScope;
        this.$boxWidth = n0Var;
        this.$boxHeight = n0Var2;
        this.$alignment = alignment;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable[] placeableArr = this.$placeables;
        List<Measurable> list = this.$measurables;
        MeasureScope measureScope = this.$this_MeasurePolicy;
        n0 n0Var = this.$boxWidth;
        n0 n0Var2 = this.$boxHeight;
        Alignment alignment = this.$alignment;
        int length = placeableArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i11 < length) {
            Placeable placeable = placeableArr[i11];
            int i12 = i10 + 1;
            if (placeable == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.layout.Placeable");
            }
            BoxKt.g(layout, placeable, list.get(i10), measureScope.getLayoutDirection(), n0Var.element, n0Var2.element, alignment);
            i11++;
            i10 = i12;
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
