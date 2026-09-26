package androidx.compose.material;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import e8.l;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class SwipeToDismissKt$SwipeToDismiss$2$1$1$1 extends v implements l<Density, IntOffset> {
    final /* synthetic */ DismissState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwipeToDismissKt$SwipeToDismiss$2$1$1$1(DismissState dismissState) {
        super(1);
        this.$state = dismissState;
    }

    public final long a(@NotNull Density offset) {
        t.j(offset, "$this$offset");
        return IntOffsetKt.a(c.c(this.$state.t().getValue().floatValue()), 0);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntOffset invoke(Density density) {
        return IntOffset.b(a(density));
    }
}
