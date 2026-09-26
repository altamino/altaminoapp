package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class Arrangement$spacedBy$1 extends v implements e8.p<Integer, LayoutDirection, Integer> {
    public static final Arrangement$spacedBy$1 INSTANCE = new Arrangement$spacedBy$1();

    Arrangement$spacedBy$1() {
        super(2);
    }

    @NotNull
    public final Integer a(int i10, @NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        return Integer.valueOf(Alignment.Companion.k().a(0, i10, layoutDirection));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
        return a(num.intValue(), layoutDirection);
    }
}
