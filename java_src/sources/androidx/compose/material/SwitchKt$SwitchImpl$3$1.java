package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import e8.l;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class SwitchKt$SwitchImpl$3$1 extends v implements l<Density, IntOffset> {
    final /* synthetic */ State<Float> $thumbValue;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwitchKt$SwitchImpl$3$1(State<Float> state) {
        super(1);
        this.$thumbValue = state;
    }

    public final long a(@NotNull Density offset) {
        t.j(offset, "$this$offset");
        return IntOffsetKt.a(c.c(this.$thumbValue.getValue().floatValue()), 0);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntOffset invoke(Density density) {
        return IntOffset.b(a(density));
    }
}
