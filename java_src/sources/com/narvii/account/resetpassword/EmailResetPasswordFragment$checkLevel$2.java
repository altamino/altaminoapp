package com.narvii.account.resetpassword;

import com.narvii.account.verifyaccount.CodeVerifyFragment;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class EmailResetPasswordFragment$checkLevel$2 extends v implements e8.a<Integer> {
    final /* synthetic */ EmailResetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EmailResetPasswordFragment$checkLevel$2(EmailResetPasswordFragment emailResetPasswordFragment) {
        super(0);
        this.this$0 = emailResetPasswordFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final Integer invoke() {
        return Integer.valueOf(this.this$0.getIntParam(CodeVerifyFragment.KEY_CHECK_LEVEL, 1));
    }
}
