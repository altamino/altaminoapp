package androidx.fragment.app;

import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.m;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentViewModelLazyKt$viewModels$4 extends v implements e8.a<ViewModelProvider.Factory> {
    final /* synthetic */ m<ViewModelStoreOwner> $owner$delegate;
    final /* synthetic */ Fragment $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentViewModelLazyKt$viewModels$4(Fragment fragment, m<? extends ViewModelStoreOwner> mVar) {
        super(0);
        this.$this_viewModels = fragment;
        this.$owner$delegate = mVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ViewModelProvider.Factory invoke() {
        ViewModelProvider.Factory defaultViewModelProviderFactory;
        ViewModelStoreOwner viewModelStoreOwnerD = FragmentViewModelLazyKt.d(this.$owner$delegate);
        HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerD instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerD : null;
        if (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) {
            defaultViewModelProviderFactory = this.$this_viewModels.getDefaultViewModelProviderFactory();
        }
        t.i(defaultViewModelProviderFactory, "(owner as? HasDefaultVie…tViewModelProviderFactory");
        return defaultViewModelProviderFactory;
    }
}
