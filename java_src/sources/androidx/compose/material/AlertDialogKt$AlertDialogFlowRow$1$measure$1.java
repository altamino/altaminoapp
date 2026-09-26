package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AlertDialogKt$AlertDialogFlowRow$1$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ List<Integer> $crossAxisPositions;
    final /* synthetic */ int $mainAxisLayoutSize;
    final /* synthetic */ float $mainAxisSpacing;
    final /* synthetic */ List<List<Placeable>> $sequences;
    final /* synthetic */ MeasureScope $this_Layout;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AlertDialogKt$AlertDialogFlowRow$1$measure$1(List<List<Placeable>> list, MeasureScope measureScope, float f, int i10, List<Integer> list2) {
        super(1);
        this.$sequences = list;
        this.$this_Layout = measureScope;
        this.$mainAxisSpacing = f;
        this.$mainAxisLayoutSize = i10;
        this.$crossAxisPositions = list2;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        List<List<Placeable>> list = this.$sequences;
        MeasureScope measureScope = this.$this_Layout;
        float f = this.$mainAxisSpacing;
        int i10 = this.$mainAxisLayoutSize;
        List<Integer> list2 = this.$crossAxisPositions;
        int size = list.size();
        int i11 = 0;
        while (i11 < size) {
            List<Placeable> list3 = list.get(i11);
            int size2 = list3.size();
            int[] iArr = new int[size2];
            int i12 = 0;
            while (i12 < size2) {
                iArr[i12] = list3.get(i12).Q0() + (i12 < kotlin.collections.v.o(list3) ? measureScope.j0(f) : 0);
                i12++;
            }
            Arrangement.Vertical verticalA = Arrangement.INSTANCE.a();
            int[] iArr2 = new int[size2];
            for (int i13 = 0; i13 < size2; i13++) {
                iArr2[i13] = 0;
            }
            verticalA.c(measureScope, i10, iArr, iArr2);
            int size3 = list3.size();
            int i14 = 0;
            while (i14 < size3) {
                Placeable.PlacementScope.j(layout, list3.get(i14), iArr2[i14], list2.get(i11).intValue(), 0.0f, 4, null);
                i14++;
                size3 = size3;
                iArr2 = iArr2;
                list3 = list3;
                i11 = i11;
            }
            i11++;
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
