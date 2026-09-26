package com.narvii.account;

import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
final class LoginFragment$onViewCreated$1$7 extends kotlin.jvm.internal.v implements e8.a<w7.l0> {
    final /* synthetic */ LoginFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginFragment$onViewCreated$1$7(LoginFragment loginFragment) {
        super(0);
        this.this$0 = loginFragment;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ w7.l0 invoke() {
        invoke2();
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        FragmentTransaction fragmentTransactionV;
        FragmentTransaction fragmentTransactionH;
        FragmentManager fragmentManager = this.this$0.getFragmentManager();
        FragmentTransaction fragmentTransactionQ = fragmentManager != null ? fragmentManager.q() : null;
        if (fragmentTransactionQ != null) {
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        }
        SignUpFragment signUpFragment = new SignUpFragment();
        if (fragmentTransactionQ == null || (fragmentTransactionV = fragmentTransactionQ.v(R.id.frame, signUpFragment, "signup")) == null || (fragmentTransactionH = fragmentTransactionV.h(null)) == null) {
            return;
        }
        fragmentTransactionH.k();
    }
}
