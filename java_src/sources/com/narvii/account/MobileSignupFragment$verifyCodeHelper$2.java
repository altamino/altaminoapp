package com.narvii.account;

import android.content.Context;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class MobileSignupFragment$verifyCodeHelper$2 extends kotlin.jvm.internal.v implements e8.a<VerifyCodeSharedPrefsHelper> {
    final /* synthetic */ MobileSignupFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MobileSignupFragment$verifyCodeHelper$2(MobileSignupFragment mobileSignupFragment) {
        super(0);
        this.this$0 = mobileSignupFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final VerifyCodeSharedPrefsHelper invoke() {
        Context context = this.this$0.getContext();
        kotlin.jvm.internal.t.i(context, "getContext(...)");
        return new VerifyCodeSharedPrefsHelper(context);
    }
}
