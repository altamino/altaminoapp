package com.narvii.account;

import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelStore;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SignUpFragment$special$$inlined$viewModels$default$3 extends kotlin.jvm.internal.v implements e8.a<ViewModelStore> {
    final /* synthetic */ w7.m $owner$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignUpFragment$special$$inlined$viewModels$default$3(w7.m mVar) {
        super(0);
        this.$owner$delegate = mVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = FragmentViewModelLazyKt.e(this.$owner$delegate).getViewModelStore();
        kotlin.jvm.internal.t.i(viewModelStore, "owner.viewModelStore");
        return viewModelStore;
    }
}
