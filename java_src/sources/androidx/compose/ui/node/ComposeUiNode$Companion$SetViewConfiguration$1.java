package androidx.compose.ui.node;

import androidx.compose.ui.platform.ViewConfiguration;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ComposeUiNode$Companion$SetViewConfiguration$1 extends v implements p<ComposeUiNode, ViewConfiguration, l0> {
    public static final ComposeUiNode$Companion$SetViewConfiguration$1 INSTANCE = new ComposeUiNode$Companion$SetViewConfiguration$1();

    ComposeUiNode$Companion$SetViewConfiguration$1() {
        super(2);
    }

    public final void a(@NotNull ComposeUiNode composeUiNode, @NotNull ViewConfiguration it) {
        t.j(composeUiNode, "$this$null");
        t.j(it, "it");
        composeUiNode.h(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(ComposeUiNode composeUiNode, ViewConfiguration viewConfiguration) {
        a(composeUiNode, viewConfiguration);
        return l0.INSTANCE;
    }
}
