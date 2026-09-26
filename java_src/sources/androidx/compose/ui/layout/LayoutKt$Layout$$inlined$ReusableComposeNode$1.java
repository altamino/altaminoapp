package androidx.compose.ui.layout;

import androidx.compose.ui.node.ComposeUiNode;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class LayoutKt$Layout$$inlined$ReusableComposeNode$1 extends v implements e8.a<ComposeUiNode> {
    final /* synthetic */ e8.a $factory;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayoutKt$Layout$$inlined$ReusableComposeNode$1(e8.a aVar) {
        super(0);
        this.$factory = aVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.ComposeUiNode, java.lang.Object] */
    @Override // e8.a
    @NotNull
    public final ComposeUiNode invoke() {
        return this.$factory.invoke();
    }
}
