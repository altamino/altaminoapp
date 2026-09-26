package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidViewHolder$layoutNode$1$1 extends v implements l<Modifier, l0> {
    final /* synthetic */ Modifier $coreModifier;
    final /* synthetic */ LayoutNode $layoutNode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidViewHolder$layoutNode$1$1(LayoutNode layoutNode, Modifier modifier) {
        super(1);
        this.$layoutNode = layoutNode;
        this.$coreModifier = modifier;
    }

    public final void a(@NotNull Modifier it) {
        t.j(it, "it");
        this.$layoutNode.d(it.B(this.$coreModifier));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Modifier modifier) {
        a(modifier);
        return l0.INSTANCE;
    }
}
