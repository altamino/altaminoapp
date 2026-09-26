package androidx.compose.ui.viewinterop;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.LayoutNode;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidViewHolder$layoutNode$1$coreModifier$2 extends v implements l<LayoutCoordinates, l0> {
    final /* synthetic */ LayoutNode $layoutNode;
    final /* synthetic */ AndroidViewHolder $this_run;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidViewHolder$layoutNode$1$coreModifier$2(AndroidViewHolder androidViewHolder, LayoutNode layoutNode) {
        super(1);
        this.$this_run = androidViewHolder;
        this.$layoutNode = layoutNode;
    }

    public final void a(@NotNull LayoutCoordinates it) {
        t.j(it, "it");
        AndroidViewHolder_androidKt.e(this.$this_run, this.$layoutNode);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        a(layoutCoordinates);
        return l0.INSTANCE;
    }
}
