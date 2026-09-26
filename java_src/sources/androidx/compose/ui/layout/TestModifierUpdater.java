package androidx.compose.ui.layout;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.node.LayoutNode;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class TestModifierUpdater {
    public static final int $stable = 8;

    @NotNull
    private final LayoutNode node;

    public TestModifierUpdater(@NotNull LayoutNode node) {
        t.j(node, "node");
        this.node = node;
    }
}
