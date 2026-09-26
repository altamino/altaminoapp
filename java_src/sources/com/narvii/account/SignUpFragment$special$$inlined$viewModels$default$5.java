package com.narvii.account;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SignUpFragment$special$$inlined$viewModels$default$5 extends kotlin.jvm.internal.v implements e8.a<ViewModelProvider.Factory> {
    final /* synthetic */ w7.m $owner$delegate;
    final /* synthetic */ Fragment $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignUpFragment$special$$inlined$viewModels$default$5(Fragment fragment, w7.m mVar) {
        super(0);
        this.$this_viewModels = fragment;
        this.$owner$delegate = mVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ViewModelProvider.Factory invoke() {
        ViewModelProvider.Factory defaultViewModelProviderFactory;
        ViewModelStoreOwner viewModelStoreOwnerE = FragmentViewModelLazyKt.e(this.$owner$delegate);
        HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerE instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerE : null;
        if (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) {
            defaultViewModelProviderFactory = this.$this_viewModels.getDefaultViewModelProviderFactory();
        }
        kotlin.jvm.internal.t.i(defaultViewModelProviderFactory, "(owner as? HasDefaultVie…tViewModelProviderFactory");
        return defaultViewModelProviderFactory;
    }
}
