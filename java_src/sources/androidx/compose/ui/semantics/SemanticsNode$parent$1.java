package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SemanticsNode$parent$1 extends v implements l<LayoutNode, Boolean> {
    public static final SemanticsNode$parent$1 INSTANCE = new SemanticsNode$parent$1();

    SemanticsNode$parent$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull LayoutNode it) {
        SemanticsConfiguration semanticsConfigurationJ;
        t.j(it, "it");
        SemanticsEntity semanticsEntityJ = SemanticsNodeKt.j(it);
        boolean z6 = false;
        if (semanticsEntityJ != null && (semanticsConfigurationJ = semanticsEntityJ.j()) != null && semanticsConfigurationJ.p()) {
            z6 = true;
        }
        return Boolean.valueOf(z6);
    }
}
