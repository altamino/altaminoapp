package com.narvii.account.resetpassword;

import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes5.dex */
final class EmailResetPasswordFragment$oldIdentity$2 extends v implements e8.a<String> {
    final /* synthetic */ EmailResetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EmailResetPasswordFragment$oldIdentity$2(EmailResetPasswordFragment emailResetPasswordFragment) {
        super(0);
        this.this$0 = emailResetPasswordFragment;
    }

    @Override // e8.a
    public final String invoke() {
        return this.this$0.getStringParam("old_identity");
    }
}
