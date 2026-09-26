package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class SubcomposeLayoutState$setRoot$1 extends v implements p<LayoutNode, SubcomposeLayoutState, l0> {
    final /* synthetic */ SubcomposeLayoutState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubcomposeLayoutState$setRoot$1(SubcomposeLayoutState subcomposeLayoutState) {
        super(2);
        this.this$0 = subcomposeLayoutState;
    }

    public final void a(@NotNull LayoutNode layoutNode, @NotNull SubcomposeLayoutState it) {
        t.j(layoutNode, "$this$null");
        t.j(it, "it");
        SubcomposeLayoutState subcomposeLayoutState = this.this$0;
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsStateV0 = layoutNode.v0();
        if (layoutNodeSubcompositionsStateV0 == null) {
            layoutNodeSubcompositionsStateV0 = new LayoutNodeSubcompositionsState(layoutNode, this.this$0.slotReusePolicy);
            layoutNode.v1(layoutNodeSubcompositionsStateV0);
        }
        subcomposeLayoutState._state = layoutNodeSubcompositionsStateV0;
        this.this$0.i().q();
        this.this$0.i().v(this.this$0.slotReusePolicy);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNode layoutNode, SubcomposeLayoutState subcomposeLayoutState) {
        a(layoutNode, subcomposeLayoutState);
        return l0.INSTANCE;
    }
}
