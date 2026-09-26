package com.narvii.account.resetpassword;

import android.content.Context;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class MobileResetPasswordFragment$verifyCodeHelper$2 extends v implements e8.a<VerifyCodeSharedPrefsHelper> {
    final /* synthetic */ MobileResetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MobileResetPasswordFragment$verifyCodeHelper$2(MobileResetPasswordFragment mobileResetPasswordFragment) {
        super(0);
        this.this$0 = mobileResetPasswordFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final VerifyCodeSharedPrefsHelper invoke() {
        Context context = this.this$0.getContext();
        t.i(context, "getContext(...)");
        return new VerifyCodeSharedPrefsHelper(context);
    }
}
