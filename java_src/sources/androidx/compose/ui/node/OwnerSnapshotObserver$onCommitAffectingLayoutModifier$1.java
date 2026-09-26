package androidx.compose.ui.node;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1 extends v implements l<LayoutNode, l0> {
    public static final OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1 INSTANCE = new OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1();

    OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1() {
        super(1);
    }

    public final void a(@NotNull LayoutNode layoutNode) {
        t.j(layoutNode, "layoutNode");
        if (layoutNode.isValid()) {
            LayoutNode.h1(layoutNode, false, 1, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNode layoutNode) {
        a(layoutNode);
        return l0.INSTANCE;
    }
}
