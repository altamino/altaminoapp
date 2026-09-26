package androidx.compose.ui.node;

import androidx.compose.ui.layout.MeasurePolicy;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ComposeUiNode$Companion$SetMeasurePolicy$1 extends v implements p<ComposeUiNode, MeasurePolicy, l0> {
    public static final ComposeUiNode$Companion$SetMeasurePolicy$1 INSTANCE = new ComposeUiNode$Companion$SetMeasurePolicy$1();

    ComposeUiNode$Companion$SetMeasurePolicy$1() {
        super(2);
    }

    public final void a(@NotNull ComposeUiNode composeUiNode, @NotNull MeasurePolicy it) {
        t.j(composeUiNode, "$this$null");
        t.j(it, "it");
        composeUiNode.c(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(ComposeUiNode composeUiNode, MeasurePolicy measurePolicy) {
        a(composeUiNode, measurePolicy);
        return l0.INSTANCE;
    }
}
