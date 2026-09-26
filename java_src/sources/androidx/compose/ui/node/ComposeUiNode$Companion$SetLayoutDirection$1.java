package androidx.compose.ui.node;

import androidx.compose.ui.unit.LayoutDirection;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ComposeUiNode$Companion$SetLayoutDirection$1 extends v implements p<ComposeUiNode, LayoutDirection, l0> {
    public static final ComposeUiNode$Companion$SetLayoutDirection$1 INSTANCE = new ComposeUiNode$Companion$SetLayoutDirection$1();

    ComposeUiNode$Companion$SetLayoutDirection$1() {
        super(2);
    }

    public final void a(@NotNull ComposeUiNode composeUiNode, @NotNull LayoutDirection it) {
        t.j(composeUiNode, "$this$null");
        t.j(it, "it");
        composeUiNode.b(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(ComposeUiNode composeUiNode, LayoutDirection layoutDirection) {
        a(composeUiNode, layoutDirection);
        return l0.INSTANCE;
    }
}
