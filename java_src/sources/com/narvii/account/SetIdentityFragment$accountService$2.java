package com.narvii.account;

/* JADX INFO: loaded from: classes2.dex */
final class SetIdentityFragment$accountService$2 extends kotlin.jvm.internal.v implements e8.a<AccountService> {
    final /* synthetic */ SetIdentityFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetIdentityFragment$accountService$2(SetIdentityFragment setIdentityFragment) {
        super(0);
        this.this$0 = setIdentityFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final AccountService invoke() {
        return (AccountService) this.this$0.getService("account");
    }
}
