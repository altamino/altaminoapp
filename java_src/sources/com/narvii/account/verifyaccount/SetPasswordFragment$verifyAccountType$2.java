package com.narvii.account.verifyaccount;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SetPasswordFragment$verifyAccountType$2 extends v implements e8.a<VerifyAccountType> {
    final /* synthetic */ SetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetPasswordFragment$verifyAccountType$2(SetPasswordFragment setPasswordFragment) {
        super(0);
        this.this$0 = setPasswordFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final VerifyAccountType invoke() {
        return VerifyAccountTypeKt.verifyAccountType(this.this$0.getIntParam("verify_type"), this.this$0.getIntParam("set_identity_type"));
    }
}
