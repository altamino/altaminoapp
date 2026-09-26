package androidx.fragment.app;

import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.m;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentViewModelLazyKt$viewModels$2 extends v implements e8.a<ViewModelStore> {
    final /* synthetic */ m<ViewModelStoreOwner> $owner$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentViewModelLazyKt$viewModels$2(m<? extends ViewModelStoreOwner> mVar) {
        super(0);
        this.$owner$delegate = mVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = FragmentViewModelLazyKt.d(this.$owner$delegate).getViewModelStore();
        t.i(viewModelStore, "owner.viewModelStore");
        return viewModelStore;
    }
}
