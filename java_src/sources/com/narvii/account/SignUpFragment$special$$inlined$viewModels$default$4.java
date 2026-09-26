package com.narvii.account;

import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SignUpFragment$special$$inlined$viewModels$default$4 extends kotlin.jvm.internal.v implements e8.a<CreationExtras> {
    final /* synthetic */ e8.a $extrasProducer;
    final /* synthetic */ w7.m $owner$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignUpFragment$special$$inlined$viewModels$default$4(e8.a aVar, w7.m mVar) {
        super(0);
        this.$extrasProducer = aVar;
        this.$owner$delegate = mVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final CreationExtras invoke() {
        CreationExtras creationExtras;
        e8.a aVar = this.$extrasProducer;
        if (aVar != null && (creationExtras = (CreationExtras) aVar.invoke()) != null) {
            return creationExtras;
        }
        ViewModelStoreOwner viewModelStoreOwnerE = FragmentViewModelLazyKt.e(this.$owner$delegate);
        HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerE instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerE : null;
        CreationExtras defaultViewModelCreationExtras = hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : null;
        return defaultViewModelCreationExtras == null ? CreationExtras.Empty.INSTANCE : defaultViewModelCreationExtras;
    }
}
