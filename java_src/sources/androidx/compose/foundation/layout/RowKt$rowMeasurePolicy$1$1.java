package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.s;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class RowKt$rowMeasurePolicy$1$1 extends v implements s<Integer, int[], LayoutDirection, Density, int[], l0> {
    final /* synthetic */ Arrangement.Horizontal $horizontalArrangement;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RowKt$rowMeasurePolicy$1$1(Arrangement.Horizontal horizontal) {
        super(5);
        this.$horizontalArrangement = horizontal;
    }

    public final void a(int i10, @NotNull int[] size, @NotNull LayoutDirection layoutDirection, @NotNull Density density, @NotNull int[] outPosition) {
        t.j(size, "size");
        t.j(layoutDirection, "layoutDirection");
        t.j(density, "density");
        t.j(outPosition, "outPosition");
        this.$horizontalArrangement.b(density, i10, size, layoutDirection, outPosition);
    }

    @Override // e8.s
    public /* bridge */ /* synthetic */ l0 invoke(Integer num, int[] iArr, LayoutDirection layoutDirection, Density density, int[] iArr2) {
        a(num.intValue(), iArr, layoutDirection, density, iArr2);
        return l0.INSTANCE;
    }
}
