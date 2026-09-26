package androidx.compose.ui.node;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNode$Companion$Constructor$1 extends v implements e8.a<LayoutNode> {
    public static final LayoutNode$Companion$Constructor$1 INSTANCE = new LayoutNode$Companion$Constructor$1();

    LayoutNode$Companion$Constructor$1() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LayoutNode invoke() {
        return new LayoutNode(false, 1, null);
    }
}
