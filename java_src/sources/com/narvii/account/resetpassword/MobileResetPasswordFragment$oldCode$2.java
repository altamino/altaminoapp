package com.narvii.account.resetpassword;

import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes2.dex */
final class MobileResetPasswordFragment$oldCode$2 extends v implements e8.a<String> {
    final /* synthetic */ MobileResetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MobileResetPasswordFragment$oldCode$2(MobileResetPasswordFragment mobileResetPasswordFragment) {
        super(0);
        this.this$0 = mobileResetPasswordFragment;
    }

    @Override // e8.a
    public final String invoke() {
        return this.this$0.getStringParam("old_code");
    }
}
