package androidx.compose.ui.node;

import androidx.compose.ui.unit.Density;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ComposeUiNode$Companion$SetDensity$1 extends v implements p<ComposeUiNode, Density, l0> {
    public static final ComposeUiNode$Companion$SetDensity$1 INSTANCE = new ComposeUiNode$Companion$SetDensity$1();

    ComposeUiNode$Companion$SetDensity$1() {
        super(2);
    }

    public final void a(@NotNull ComposeUiNode composeUiNode, @NotNull Density it) {
        t.j(composeUiNode, "$this$null");
        t.j(it, "it");
        composeUiNode.g(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(ComposeUiNode composeUiNode, Density density) {
        a(composeUiNode, density);
        return l0.INSTANCE;
    }
}
