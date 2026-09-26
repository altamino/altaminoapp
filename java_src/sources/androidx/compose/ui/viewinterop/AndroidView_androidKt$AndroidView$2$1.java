package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Ref;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidView_androidKt$AndroidView$2$1 extends v implements p<LayoutNode, Modifier, l0> {
    final /* synthetic */ Ref<ViewFactoryHolder<T>> $viewFactoryHolderRef;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidView_androidKt$AndroidView$2$1(Ref<ViewFactoryHolder<T>> ref) {
        super(2);
        this.$viewFactoryHolderRef = ref;
    }

    public final void a(@NotNull LayoutNode set, @NotNull Modifier it) {
        t.j(set, "$this$set");
        t.j(it, "it");
        Object objA = this.$viewFactoryHolderRef.a();
        t.g(objA);
        ((ViewFactoryHolder) objA).setModifier(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNode layoutNode, Modifier modifier) {
        a(layoutNode, modifier);
        return l0.INSTANCE;
    }
}
