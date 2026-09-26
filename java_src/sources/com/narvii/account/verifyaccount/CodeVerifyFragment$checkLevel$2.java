package com.narvii.account.verifyaccount;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class CodeVerifyFragment$checkLevel$2 extends v implements e8.a<Integer> {
    final /* synthetic */ CodeVerifyFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CodeVerifyFragment$checkLevel$2(CodeVerifyFragment codeVerifyFragment) {
        super(0);
        this.this$0 = codeVerifyFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final Integer invoke() {
        return Integer.valueOf(this.this$0.getIntParam(CodeVerifyFragment.KEY_CHECK_LEVEL, 1));
    }
}
