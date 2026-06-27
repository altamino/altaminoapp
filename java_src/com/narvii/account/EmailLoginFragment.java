package com.narvii.account;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.util.AccountWebUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.TextInputLayout;

/* loaded from: classes2.dex */
public class EmailLoginFragment extends LoginBaseFragment {
    TextInputLayout emailInputLayout;

    @Override // com.narvii.account.LoginBaseFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            loginActivity.statMaxLoginStep = 4;
            loginActivity.statMaxSignupSetp = 0;
            loginActivity.statType = 2;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_email_login, viewGroup, false);
    }

    @Override // com.narvii.account.LoginBaseFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        SharedPreferences sharedPreferences;
        super.onViewCreated(view, bundle);
        this.emailInputLayout = (TextInputLayout) view.findViewById(R.id.email_input_layout);
        this.emailInputLayout.addTextChangedListener(this);
        this.emailInputLayout.setInputText(getStringParam("email"));
        this.passInputLayout.setInputText(getStringParam("pass"));
        if (TextUtils.isEmpty(getStringParam("email")) && (sharedPreferences = this.sharedPreferences) != null) {
            this.emailInputLayout.setInputText(sharedPreferences.getString("last_email", null));
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.EmailLoginFragment.1
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(EmailLoginFragment.this.emailInputLayout.getEditText());
            }
        }, 0L);
    }

    @Override // com.narvii.account.LoginBaseFragment
    protected void setupRequestBuilder(ApiRequest.Builder builder) {
        String editContent = this.emailInputLayout.getEditContent();
        builder.param("email", editContent);
        builder.param("v", 2);
        builder.tag("email", editContent);
    }

    @Override // com.narvii.account.LoginBaseFragment
    protected boolean isContentVerified() {
        return this.accountUtils.isEmailAndPassVerifed(this.emailInputLayout.getEditText(), this.passInputLayout.getEditText());
    }

    @Override // com.narvii.account.LoginBaseFragment
    protected void forgetPassword() {
        AccountWebUtils.openForgetPasswordPage(this, null, this.emailInputLayout.getEditContent());
    }

    @Override // com.narvii.account.LoginBaseFragment, android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        super.afterTextChanged(editable);
        boolean z = this.emailInputLayout.getEditText() == null || !this.accountUtils.isValidEmail(this.emailInputLayout.getEditText().toString());
        if (isContentVerified() || !z) {
            return;
        }
        this.loginBtn.setEnabled(true);
    }

    @Override // com.narvii.account.LoginBaseFragment, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.login) {
            if (this.accountUtils.validateEmail(this.emailInputLayout.getEditText()) && isContentVerified()) {
                super.onClick(view);
                return;
            }
            return;
        }
        super.onClick(view);
    }
}
