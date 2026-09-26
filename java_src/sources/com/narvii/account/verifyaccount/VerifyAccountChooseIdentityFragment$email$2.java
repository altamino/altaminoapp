package com.narvii.account.verifyaccount;

import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class VerifyAccountChooseIdentityFragment$email$2 extends v implements e8.a<String> {
    final /* synthetic */ VerifyAccountChooseIdentityFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VerifyAccountChooseIdentityFragment$email$2(VerifyAccountChooseIdentityFragment verifyAccountChooseIdentityFragment) {
        super(0);
        this.this$0 = verifyAccountChooseIdentityFragment;
    }

    @Override // e8.a
    public final String invoke() {
        return this.this$0.getStringParam("email");
    }
}
