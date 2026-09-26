package com.narvii.master.home.profile;

import com.narvii.account.AccountService;

/* JADX INFO: loaded from: classes.dex */
final class EditAminoIdFragment$account$2 extends kotlin.jvm.internal.v implements e8.a<AccountService> {
    final /* synthetic */ EditAminoIdFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EditAminoIdFragment$account$2(EditAminoIdFragment editAminoIdFragment) {
        super(0);
        this.this$0 = editAminoIdFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final AccountService invoke() {
        return (AccountService) this.this$0.getService("account");
    }
}
