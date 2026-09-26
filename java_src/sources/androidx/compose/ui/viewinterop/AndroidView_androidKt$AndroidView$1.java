package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Ref;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidView_androidKt$AndroidView$1 extends v implements e8.a<LayoutNode> {
    final /* synthetic */ Context $context;
    final /* synthetic */ NestedScrollDispatcher $dispatcher;
    final /* synthetic */ l<Context, T> $factory;
    final /* synthetic */ CompositionContext $parentReference;
    final /* synthetic */ String $stateKey;
    final /* synthetic */ SaveableStateRegistry $stateRegistry;
    final /* synthetic */ Ref<ViewFactoryHolder<T>> $viewFactoryHolderRef;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidView_androidKt$AndroidView$1(Context context, CompositionContext compositionContext, NestedScrollDispatcher nestedScrollDispatcher, l<? super Context, ? extends T> lVar, SaveableStateRegistry saveableStateRegistry, String str, Ref<ViewFactoryHolder<T>> ref) {
        super(0);
        this.$context = context;
        this.$parentReference = compositionContext;
        this.$dispatcher = nestedScrollDispatcher;
        this.$factory = lVar;
        this.$stateRegistry = saveableStateRegistry;
        this.$stateKey = str;
        this.$viewFactoryHolderRef = ref;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LayoutNode invoke() {
        View typedView$ui_release;
        ViewFactoryHolder viewFactoryHolder = new ViewFactoryHolder(this.$context, this.$parentReference, this.$dispatcher);
        viewFactoryHolder.setFactory(this.$factory);
        SaveableStateRegistry saveableStateRegistry = this.$stateRegistry;
        Object objC = saveableStateRegistry != null ? saveableStateRegistry.c(this.$stateKey) : null;
        SparseArray<Parcelable> sparseArray = objC instanceof SparseArray ? (SparseArray) objC : null;
        if (sparseArray != null && (typedView$ui_release = viewFactoryHolder.getTypedView$ui_release()) != null) {
            typedView$ui_release.restoreHierarchyState(sparseArray);
        }
        this.$viewFactoryHolderRef.b((ViewFactoryHolder<T>) viewFactoryHolder);
        return viewFactoryHolder.getLayoutNode();
    }
}
