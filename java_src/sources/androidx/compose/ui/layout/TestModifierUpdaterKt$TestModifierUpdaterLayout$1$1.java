package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TestModifierUpdaterKt$TestModifierUpdaterLayout$1$1 extends v implements l<LayoutNode, l0> {
    final /* synthetic */ l<TestModifierUpdater, l0> $onAttached;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TestModifierUpdaterKt$TestModifierUpdaterLayout$1$1(l<? super TestModifierUpdater, l0> lVar) {
        super(1);
        this.$onAttached = lVar;
    }

    public final void a(@NotNull LayoutNode init) {
        t.j(init, "$this$init");
        this.$onAttached.invoke(new TestModifierUpdater(init));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNode layoutNode) {
        a(layoutNode);
        return l0.INSTANCE;
    }
}
