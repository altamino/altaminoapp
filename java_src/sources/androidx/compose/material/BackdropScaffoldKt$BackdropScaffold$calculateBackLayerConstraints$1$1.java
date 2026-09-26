package androidx.compose.material;

import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import e8.l;
import g8.c;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1 extends v implements l<Constraints, Constraints> {
    final /* synthetic */ float $headerHeightPx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1(float f) {
        super(1);
        this.$headerHeightPx = f;
    }

    public final long a(long j6) {
        return ConstraintsKt.j(Constraints.e(j6, 0, 0, 0, 0, 10, null), 0, -c.c(this.$headerHeightPx), 1, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Constraints invoke(Constraints constraints) {
        return Constraints.b(a(constraints.t()));
    }
}
