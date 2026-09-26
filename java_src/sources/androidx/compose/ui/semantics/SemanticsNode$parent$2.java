package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SemanticsNode$parent$2 extends v implements l<LayoutNode, Boolean> {
    public static final SemanticsNode$parent$2 INSTANCE = new SemanticsNode$parent$2();

    SemanticsNode$parent$2() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull LayoutNode it) {
        t.j(it, "it");
        return Boolean.valueOf(SemanticsNodeKt.j(it) != null);
    }
}
