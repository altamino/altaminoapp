package com.narvii.account;

import androidx.lifecycle.ViewModelStoreOwner;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SignUpFragment$special$$inlined$viewModels$default$2 extends kotlin.jvm.internal.v implements e8.a<ViewModelStoreOwner> {
    final /* synthetic */ e8.a $ownerProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignUpFragment$special$$inlined$viewModels$default$2(e8.a aVar) {
        super(0);
        this.$ownerProducer = aVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ViewModelStoreOwner invoke() {
        return (ViewModelStoreOwner) this.$ownerProducer.invoke();
    }
}
