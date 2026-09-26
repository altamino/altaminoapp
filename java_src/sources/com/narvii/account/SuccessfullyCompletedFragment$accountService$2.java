package com.narvii.account;

/* JADX INFO: loaded from: classes4.dex */
final class SuccessfullyCompletedFragment$accountService$2 extends kotlin.jvm.internal.v implements e8.a<AccountService> {
    final /* synthetic */ SuccessfullyCompletedFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuccessfullyCompletedFragment$accountService$2(SuccessfullyCompletedFragment successfullyCompletedFragment) {
        super(0);
        this.this$0 = successfullyCompletedFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final AccountService invoke() {
        return (AccountService) this.this$0.getService("account");
    }
}
