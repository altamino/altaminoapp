package androidx.compose.ui.graphics.vector;

import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Path$2$2 extends v implements p<PathComponent, List<? extends PathNode>, l0> {
    public static final VectorComposeKt$Path$2$2 INSTANCE = new VectorComposeKt$Path$2$2();

    VectorComposeKt$Path$2$2() {
        super(2);
    }

    public final void a(@NotNull PathComponent set, @NotNull List<? extends PathNode> it) {
        t.j(set, "$this$set");
        t.j(it, "it");
        set.i(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PathComponent pathComponent, List<? extends PathNode> list) {
        a(pathComponent, list);
        return l0.INSTANCE;
    }
}
