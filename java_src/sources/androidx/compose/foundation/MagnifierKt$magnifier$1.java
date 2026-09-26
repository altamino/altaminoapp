package androidx.compose.foundation;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Density;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
public final class MagnifierKt$magnifier$1 extends v implements l<Density, Offset> {
    public static final MagnifierKt$magnifier$1 INSTANCE = new MagnifierKt$magnifier$1();

    MagnifierKt$magnifier$1() {
        super(1);
    }

    public final long a(@NotNull Density density) {
        t.j(density, "$this$null");
        return Offset.Companion.b();
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Offset invoke(Density density) {
        return Offset.d(a(density));
    }
}
