package com.narvii.account;

import com.narvii.account.verifyaccount.VerifyAccountType;
import com.narvii.account.verifyaccount.VerifyAccountTypeKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SetIdentityFragment$verifyAccountType$2 extends kotlin.jvm.internal.v implements e8.a<VerifyAccountType> {
    final /* synthetic */ SetIdentityFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetIdentityFragment$verifyAccountType$2(SetIdentityFragment setIdentityFragment) {
        super(0);
        this.this$0 = setIdentityFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final VerifyAccountType invoke() {
        return VerifyAccountTypeKt.verifyAccountType(this.this$0.getIntParam("verify_type"), this.this$0.getIntParam("set_identity_type"));
    }
}
