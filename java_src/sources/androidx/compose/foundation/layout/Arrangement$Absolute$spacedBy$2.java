package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class Arrangement$Absolute$spacedBy$2 extends v implements e8.p<Integer, LayoutDirection, Integer> {
    final /* synthetic */ Alignment.Vertical $alignment;

    @NotNull
    public final Integer a(int i10, @NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "<anonymous parameter 1>");
        return Integer.valueOf(this.$alignment.a(0, i10));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
        return a(num.intValue(), layoutDirection);
    }
}
