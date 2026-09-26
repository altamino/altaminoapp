package androidx.compose.ui.viewinterop;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Ref;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes5.dex */
final class AndroidView_androidKt$AndroidView$2$5<T> extends v implements p<LayoutNode, l<? super T, ? extends l0>, l0> {
    final /* synthetic */ Ref<ViewFactoryHolder<T>> $viewFactoryHolderRef;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidView_androidKt$AndroidView$2$5(Ref<ViewFactoryHolder<T>> ref) {
        super(2);
        this.$viewFactoryHolderRef = ref;
    }

    public final void a(@NotNull LayoutNode set, @NotNull l<? super T, l0> it) {
        t.j(set, "$this$set");
        t.j(it, "it");
        ViewFactoryHolder<T> viewFactoryHolderA = this.$viewFactoryHolderRef.a();
        t.g(viewFactoryHolderA);
        viewFactoryHolderA.setUpdateBlock(it);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNode layoutNode, Object obj) {
        a(layoutNode, (l) obj);
        return l0.INSTANCE;
    }
}
