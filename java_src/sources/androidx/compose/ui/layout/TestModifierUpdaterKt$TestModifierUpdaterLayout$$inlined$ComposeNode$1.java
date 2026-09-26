package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class TestModifierUpdaterKt$TestModifierUpdaterLayout$$inlined$ComposeNode$1 extends v implements e8.a<LayoutNode> {
    final /* synthetic */ e8.a $factory;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestModifierUpdaterKt$TestModifierUpdaterLayout$$inlined$ComposeNode$1(e8.a aVar) {
        super(0);
        this.$factory = aVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.LayoutNode, java.lang.Object] */
    @Override // e8.a
    @NotNull
    public final LayoutNode invoke() {
        return this.$factory.invoke();
    }
}
