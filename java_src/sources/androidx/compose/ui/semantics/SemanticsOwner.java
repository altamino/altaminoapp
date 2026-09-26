package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.node.LayoutNode;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class SemanticsOwner {
    public static final int $stable = 8;

    @NotNull
    private final LayoutNode rootNode;

    public SemanticsOwner(@NotNull LayoutNode rootNode) {
        t.j(rootNode, "rootNode");
        this.rootNode = rootNode;
    }

    @NotNull
    public final SemanticsNode a() {
        SemanticsEntity semanticsEntityJ = SemanticsNodeKt.j(this.rootNode);
        t.g(semanticsEntityJ);
        return new SemanticsNode(semanticsEntityJ, false);
    }
}
