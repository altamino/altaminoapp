package com.narvii.account.restore;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.TextInputLayout;

/* JADX INFO: loaded from: classes7.dex */
public class AccountRestoreEmailFragment extends AccountRestoreBaseFragment {
    TextInputLayout emailInputLayout;

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected int layoutId() {
        return R.layout.fragment_account_restore_email;
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected boolean isContentVerified() {
        TextInputLayout textInputLayout = this.emailInputLayout;
        return (textInputLayout == null || this.passInputLayout == null || !this.accountUtils.isEmailAndPassVerifed(textInputLayout.getEditText(), this.passInputLayout.getEditText())) ? false : true;
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void setupRequestBuilder(ApiRequest.Builder builder) {
        builder.param("email", this.emailInputLayout.getEditContent());
        builder.tag("email", this.emailInputLayout.getEditContent());
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void setupResultIntent(Intent intent) {
        intent.putExtra("email", this.emailInputLayout.getEditContent());
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(R.id.email_input_layout);
        this.emailInputLayout = textInputLayout;
        textInputLayout.addTextChangedListener(this);
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
}
