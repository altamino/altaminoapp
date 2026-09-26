package androidx.compose.ui.layout;

import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.node.LayoutNode;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class SubcomposeLayoutState$setCompositionContext$1 extends v implements p<LayoutNode, CompositionContext, l0> {
    final /* synthetic */ SubcomposeLayoutState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubcomposeLayoutState$setCompositionContext$1(SubcomposeLayoutState subcomposeLayoutState) {
        super(2);
        this.this$0 = subcomposeLayoutState;
    }

    public final void a(@NotNull LayoutNode layoutNode, @NotNull CompositionContext it) {
        t.j(layoutNode, "$this$null");
        t.j(it, "it");
        this.this$0.i().u(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNode layoutNode, CompositionContext compositionContext) {
        a(layoutNode, compositionContext);
        return l0.INSTANCE;
    }
}
