package com.narvii.account;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SetIdentityFragment$accountUtils$2 extends kotlin.jvm.internal.v implements e8.a<AccountUtils> {
    final /* synthetic */ SetIdentityFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetIdentityFragment$accountUtils$2(SetIdentityFragment setIdentityFragment) {
        super(0);
        this.this$0 = setIdentityFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final AccountUtils invoke() {
        return new AccountUtils(this.this$0.getContext());
    }
}
