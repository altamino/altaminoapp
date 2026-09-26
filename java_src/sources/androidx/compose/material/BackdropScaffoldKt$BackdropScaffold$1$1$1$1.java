package androidx.compose.material;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import e8.l;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class BackdropScaffoldKt$BackdropScaffold$1$1$1$1 extends v implements l<Density, IntOffset> {
    final /* synthetic */ BackdropScaffoldState $scaffoldState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BackdropScaffoldKt$BackdropScaffold$1$1$1$1(BackdropScaffoldState backdropScaffoldState) {
        super(1);
        this.$scaffoldState = backdropScaffoldState;
    }

    public final long a(@NotNull Density offset) {
        t.j(offset, "$this$offset");
        return IntOffsetKt.a(0, c.c(this.$scaffoldState.t().getValue().floatValue()));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntOffset invoke(Density density) {
        return IntOffset.b(a(density));
    }
}
