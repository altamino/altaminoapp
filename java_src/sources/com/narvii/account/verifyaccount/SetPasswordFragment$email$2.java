package com.narvii.account.verifyaccount;

import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes5.dex */
final class SetPasswordFragment$email$2 extends v implements e8.a<String> {
    final /* synthetic */ SetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetPasswordFragment$email$2(SetPasswordFragment setPasswordFragment) {
        super(0);
        this.this$0 = setPasswordFragment;
    }

    @Override // e8.a
    public final String invoke() {
        return this.this$0.getStringParam("email");
    }
}
