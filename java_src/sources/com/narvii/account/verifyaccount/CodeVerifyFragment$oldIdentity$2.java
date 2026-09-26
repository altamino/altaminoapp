package com.narvii.account.verifyaccount;

import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class CodeVerifyFragment$oldIdentity$2 extends v implements e8.a<String> {
    final /* synthetic */ CodeVerifyFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CodeVerifyFragment$oldIdentity$2(CodeVerifyFragment codeVerifyFragment) {
        super(0);
        this.this$0 = codeVerifyFragment;
    }

    @Override // e8.a
    public final String invoke() {
        return this.this$0.getStringParam("old_identity");
    }
}
