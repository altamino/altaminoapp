package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class SimpleEntity<M extends Modifier> extends LayoutNodeEntity<SimpleEntity<M>, M> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleEntity(@NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull M modifier) {
        super(layoutNodeWrapper, modifier);
        t.j(layoutNodeWrapper, "layoutNodeWrapper");
        t.j(modifier, "modifier");
    }
}
