package androidx.compose.ui.graphics.vector;

import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Group$2$9 extends v implements p<GroupComponent, List<? extends PathNode>, l0> {
    public static final VectorComposeKt$Group$2$9 INSTANCE = new VectorComposeKt$Group$2$9();

    VectorComposeKt$Group$2$9() {
        super(2);
    }

    public final void a(@NotNull GroupComponent set, @NotNull List<? extends PathNode> it) {
        t.j(set, "$this$set");
        t.j(it, "it");
        set.k(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(GroupComponent groupComponent, List<? extends PathNode> list) {
        a(groupComponent, list);
        return l0.INSTANCE;
    }
}
