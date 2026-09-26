package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.s;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class ColumnKt$DefaultColumnMeasurePolicy$1 extends v implements s<Integer, int[], LayoutDirection, Density, int[], l0> {
    public static final ColumnKt$DefaultColumnMeasurePolicy$1 INSTANCE = new ColumnKt$DefaultColumnMeasurePolicy$1();

    ColumnKt$DefaultColumnMeasurePolicy$1() {
        super(5);
    }

    public final void a(int i10, @NotNull int[] size, @NotNull LayoutDirection layoutDirection, @NotNull Density density, @NotNull int[] outPosition) {
        t.j(size, "size");
        t.j(layoutDirection, "<anonymous parameter 2>");
        t.j(density, "density");
        t.j(outPosition, "outPosition");
        Arrangement.INSTANCE.f().c(density, i10, size, outPosition);
    }

    @Override // e8.s
    public /* bridge */ /* synthetic */ l0 invoke(Integer num, int[] iArr, LayoutDirection layoutDirection, Density density, int[] iArr2) {
        a(num.intValue(), iArr, layoutDirection, density, iArr2);
        return l0.INSTANCE;
    }
}
