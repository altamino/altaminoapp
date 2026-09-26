package androidx.compose.ui.node;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class LayoutNodeKt {
    private static final boolean DebugChanges = false;

    @NotNull
    public static final Owner a(@NotNull LayoutNode layoutNode) {
        t.j(layoutNode, "<this>");
        Owner ownerS0 = layoutNode.s0();
        if (ownerS0 != null) {
            return ownerS0;
        }
        throw new IllegalStateException("LayoutNode should be attached to an owner".toString());
    }
}
