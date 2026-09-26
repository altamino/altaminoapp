package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ComposeUiNode$Companion$SetModifier$1 extends v implements p<ComposeUiNode, Modifier, l0> {
    public static final ComposeUiNode$Companion$SetModifier$1 INSTANCE = new ComposeUiNode$Companion$SetModifier$1();

    ComposeUiNode$Companion$SetModifier$1() {
        super(2);
    }

    public final void a(@NotNull ComposeUiNode composeUiNode, @NotNull Modifier it) {
        t.j(composeUiNode, "$this$null");
        t.j(it, "it");
        composeUiNode.d(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(ComposeUiNode composeUiNode, Modifier modifier) {
        a(composeUiNode, modifier);
        return l0.INSTANCE;
    }
}
