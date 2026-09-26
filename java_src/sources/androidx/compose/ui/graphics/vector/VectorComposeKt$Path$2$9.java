package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.StrokeJoin;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Path$2$9 extends v implements p<PathComponent, StrokeJoin, l0> {
    public static final VectorComposeKt$Path$2$9 INSTANCE = new VectorComposeKt$Path$2$9();

    VectorComposeKt$Path$2$9() {
        super(2);
    }

    public final void a(@NotNull PathComponent set, int i10) {
        t.j(set, "$this$set");
        set.n(i10);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PathComponent pathComponent, StrokeJoin strokeJoin) {
        a(pathComponent, strokeJoin.j());
        return l0.INSTANCE;
    }
}
