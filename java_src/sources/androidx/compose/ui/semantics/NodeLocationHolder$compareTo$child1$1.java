package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class NodeLocationHolder$compareTo$child1$1 extends v implements l<LayoutNode, Boolean> {
    final /* synthetic */ Rect $view1Bounds;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NodeLocationHolder$compareTo$child1$1(Rect rect) {
        super(1);
        this.$view1Bounds = rect;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull LayoutNode it) {
        t.j(it, "it");
        LayoutNodeWrapper layoutNodeWrapperE = SemanticsSortKt.e(it);
        return Boolean.valueOf(layoutNodeWrapperE.Q() && !t.e(this.$view1Bounds, LayoutCoordinatesKt.b(layoutNodeWrapperE)));
    }
}
