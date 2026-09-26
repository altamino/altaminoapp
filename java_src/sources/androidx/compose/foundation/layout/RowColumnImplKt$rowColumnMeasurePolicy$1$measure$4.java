package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.s;
import java.util.List;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4 extends v implements e8.l<Placeable.PlacementScope, l0> {
    final /* synthetic */ s<Integer, int[], LayoutDirection, Density, int[], l0> $arrangement;
    final /* synthetic */ n0 $beforeCrossAxisAlignmentLine;
    final /* synthetic */ CrossAxisAlignment $crossAxisAlignment;
    final /* synthetic */ int $crossAxisLayoutSize;
    final /* synthetic */ int $mainAxisLayoutSize;
    final /* synthetic */ int[] $mainAxisPositions;
    final /* synthetic */ List<Measurable> $measurables;
    final /* synthetic */ LayoutOrientation $orientation;
    final /* synthetic */ Placeable[] $placeables;
    final /* synthetic */ RowColumnParentData[] $rowColumnParentData;
    final /* synthetic */ MeasureScope $this_measure;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4(List<? extends Measurable> list, Placeable[] placeableArr, s<? super Integer, ? super int[], ? super LayoutDirection, ? super Density, ? super int[], l0> sVar, int i10, MeasureScope measureScope, int[] iArr, LayoutOrientation layoutOrientation, RowColumnParentData[] rowColumnParentDataArr, CrossAxisAlignment crossAxisAlignment, int i11, n0 n0Var) {
        super(1);
        this.$measurables = list;
        this.$placeables = placeableArr;
        this.$arrangement = sVar;
        this.$mainAxisLayoutSize = i10;
        this.$this_measure = measureScope;
        this.$mainAxisPositions = iArr;
        this.$orientation = layoutOrientation;
        this.$rowColumnParentData = rowColumnParentDataArr;
        this.$crossAxisAlignment = crossAxisAlignment;
        this.$crossAxisLayoutSize = i11;
        this.$beforeCrossAxisAlignmentLine = n0Var;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        int[] iArr;
        t.j(layout, "$this$layout");
        int size = this.$measurables.size();
        int[] iArr2 = new int[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            Placeable placeable = this.$placeables[i11];
            t.g(placeable);
            iArr2[i11] = RowColumnImplKt.A(placeable, this.$orientation);
        }
        this.$arrangement.invoke(Integer.valueOf(this.$mainAxisLayoutSize), iArr2, this.$this_measure.getLayoutDirection(), this.$this_measure, this.$mainAxisPositions);
        Placeable[] placeableArr = this.$placeables;
        RowColumnParentData[] rowColumnParentDataArr = this.$rowColumnParentData;
        CrossAxisAlignment crossAxisAlignment = this.$crossAxisAlignment;
        int i12 = this.$crossAxisLayoutSize;
        LayoutOrientation layoutOrientation = this.$orientation;
        MeasureScope measureScope = this.$this_measure;
        n0 n0Var = this.$beforeCrossAxisAlignmentLine;
        int[] iArr3 = this.$mainAxisPositions;
        int length = placeableArr.length;
        int i13 = 0;
        while (i10 < length) {
            Placeable placeable2 = placeableArr[i10];
            int i14 = i13 + 1;
            t.g(placeable2);
            CrossAxisAlignment crossAxisAlignmentQ = RowColumnImplKt.q(rowColumnParentDataArr[i13]);
            if (crossAxisAlignmentQ == null) {
                crossAxisAlignmentQ = crossAxisAlignment;
            }
            int iZ = i12 - RowColumnImplKt.z(placeable2, layoutOrientation);
            LayoutOrientation layoutOrientation2 = LayoutOrientation.Horizontal;
            Placeable[] placeableArr2 = placeableArr;
            int i15 = length;
            int iA = crossAxisAlignmentQ.a(iZ, layoutOrientation == layoutOrientation2 ? LayoutDirection.Ltr : measureScope.getLayoutDirection(), placeable2, n0Var.element);
            if (layoutOrientation == layoutOrientation2) {
                iArr = iArr3;
                Placeable.PlacementScope.j(layout, placeable2, iArr3[i13], iA, 0.0f, 4, null);
            } else {
                iArr = iArr3;
                Placeable.PlacementScope.j(layout, placeable2, iA, iArr[i13], 0.0f, 4, null);
            }
            i10++;
            i13 = i14;
            length = i15;
            placeableArr = placeableArr2;
            iArr3 = iArr;
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
