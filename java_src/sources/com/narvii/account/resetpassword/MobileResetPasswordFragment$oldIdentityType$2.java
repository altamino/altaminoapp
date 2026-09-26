package com.narvii.account.resetpassword;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class MobileResetPasswordFragment$oldIdentityType$2 extends v implements e8.a<Integer> {
    final /* synthetic */ MobileResetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MobileResetPasswordFragment$oldIdentityType$2(MobileResetPasswordFragment mobileResetPasswordFragment) {
        super(0);
        this.this$0 = mobileResetPasswordFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final Integer invoke() {
        return Integer.valueOf(this.this$0.getIntParam("type"));
    }
}
