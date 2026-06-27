package com.narvii.account.restore;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.util.AccountWebUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.TextInputLayout;

/* loaded from: classes2.dex */
public class AccountRestoreEmailFragment extends AccountRestoreBaseFragment {
    TextInputLayout emailInputLayout;

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected int layoutId() {
        return R.layout.fragment_account_restore_email;
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.emailInputLayout = (TextInputLayout) view.findViewById(R.id.email_input_layout);
        this.emailInputLayout.addTextChangedListener(this);
        this.emailInputLayout.setInputText(getStringParam("email"));
        if (!TextUtils.isEmpty(getStringParam("email"))) {
            this.emailInputLayout.getEditText().setFocusable(false);
            this.emailInputLayout.getEditText().setEnabled(false);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.restore.AccountRestoreEmailFragment.1
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(!TextUtils.isEmpty(AccountRestoreEmailFragment.this.getStringParam("email")) ? AccountRestoreEmailFragment.this.passInputLayout.getEditText() : AccountRestoreEmailFragment.this.emailInputLayout.getEditText());
            }
        }, 0L);
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void setupRequestBuilder(ApiRequest.Builder builder) {
        builder.param("email", this.emailInputLayout.getEditContent());
        builder.tag("email", this.emailInputLayout.getEditContent());
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected boolean isContentVerified() {
        TextInputLayout textInputLayout = this.emailInputLayout;
        return (textInputLayout == null || this.passInputLayout == null || !this.accountUtils.isEmailAndPassVerifed(textInputLayout.getEditText(), this.passInputLayout.getEditText())) ? false : true;
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void setupResultIntent(Intent intent) {
        intent.putExtra("email", this.emailInputLayout.getEditContent());
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void forgetPassword() {
        AccountWebUtils.openForgetPasswordPage(this, null, this.emailInputLayout.getEditContent());
    }
}
