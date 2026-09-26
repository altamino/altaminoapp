package androidx.compose.ui.viewinterop;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Density;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidViewHolder$layoutNode$1$2 extends v implements l<Density, l0> {
    final /* synthetic */ LayoutNode $layoutNode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidViewHolder$layoutNode$1$2(LayoutNode layoutNode) {
        super(1);
        this.$layoutNode = layoutNode;
    }

    public final void a(@NotNull Density it) {
        t.j(it, "it");
        this.$layoutNode.g(it);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Density density) {
        a(density);
        return l0.INSTANCE;
    }
}
