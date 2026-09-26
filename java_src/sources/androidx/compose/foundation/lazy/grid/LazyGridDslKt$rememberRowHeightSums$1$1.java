package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import e8.p;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class LazyGridDslKt$rememberRowHeightSums$1$1 extends v implements p<Density, Constraints, List<Integer>> {
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ GridCells $rows;
    final /* synthetic */ Arrangement.Vertical $verticalArrangement;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridDslKt$rememberRowHeightSums$1$1(PaddingValues paddingValues, GridCells gridCells, Arrangement.Vertical vertical) {
        super(2);
        this.$contentPadding = paddingValues;
        this.$rows = gridCells;
        this.$verticalArrangement = vertical;
    }

    @NotNull
    public final List<Integer> a(@NotNull Density density, long j6) {
        t.j(density, "$this$null");
        if (Constraints.m(j6) == Integer.MAX_VALUE) {
            throw new IllegalArgumentException("LazyHorizontalGrid's height should be bound by parent.".toString());
        }
        List<Integer> listW0 = d0.W0(this.$rows.a(density, Constraints.m(j6) - density.j0(Dp.f(this.$contentPadding.d() + this.$contentPadding.a())), density.j0(this.$verticalArrangement.a())));
        int size = listW0.size();
        for (int i10 = 1; i10 < size; i10++) {
            listW0.set(i10, Integer.valueOf(listW0.get(i10).intValue() + listW0.get(i10 - 1).intValue()));
        }
        return listW0;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ List<Integer> invoke(Density density, Constraints constraints) {
        return a(density, constraints.t());
    }
}
