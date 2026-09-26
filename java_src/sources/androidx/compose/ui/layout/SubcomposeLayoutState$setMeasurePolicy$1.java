package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class SubcomposeLayoutState$setMeasurePolicy$1 extends v implements p<LayoutNode, p<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, l0> {
    final /* synthetic */ SubcomposeLayoutState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubcomposeLayoutState$setMeasurePolicy$1(SubcomposeLayoutState subcomposeLayoutState) {
        super(2);
        this.this$0 = subcomposeLayoutState;
    }

    public final void a(@NotNull LayoutNode layoutNode, @NotNull p<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> it) {
        t.j(layoutNode, "$this$null");
        t.j(it, "it");
        layoutNode.c(this.this$0.i().k(it));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNode layoutNode, p<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> pVar) {
        a(layoutNode, pVar);
        return l0.INSTANCE;
    }
}
