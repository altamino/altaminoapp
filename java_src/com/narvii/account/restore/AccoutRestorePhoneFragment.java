package com.narvii.account.restore;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.mastes.R;
import com.narvii.util.AccountWebUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.TextInputLayout;

/* loaded from: classes2.dex */
public class AccoutRestorePhoneFragment extends AccountRestoreBaseFragment {
    MyPhoneCountryCodePicker countryCodePicker;
    TextInputLayout phoneInputLayout;

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected int layoutId() {
        return R.layout.fragment_account_restore_mobile_layout;
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.countryCodePicker = (MyPhoneCountryCodePicker) view.findViewById(R.id.country_picker);
        this.phoneInputLayout = (TextInputLayout) view.findViewById(R.id.phone_input_layout);
        this.phoneInputLayout.addTextChangedListener(this);
        String stringParam = getStringParam("phoneNumber");
        if (!TextUtils.isEmpty(stringParam)) {
            String[] strArrSplit = stringParam.split(" ");
            if (strArrSplit.length == 2) {
                this.countryCodePicker.setPhoneNumber(strArrSplit[0]);
                EditText editText = (EditText) this.phoneInputLayout.findViewById(R.id.edit);
                editText.setText(strArrSplit[1]);
                editText.setSelection(editText.getText().length());
            }
        }
        if (!TextUtils.isEmpty(getStringParam("phoneNumber"))) {
            this.phoneInputLayout.getEditText().setFocusable(false);
            this.phoneInputLayout.getEditText().setEnabled(false);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.restore.AccoutRestorePhoneFragment.1
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(!TextUtils.isEmpty(AccoutRestorePhoneFragment.this.getStringParam("phoneNumber")) ? AccoutRestorePhoneFragment.this.passInputLayout.getEditText() : AccoutRestorePhoneFragment.this.phoneInputLayout.getEditText());
            }
        }, 0L);
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void setupRequestBuilder(ApiRequest.Builder builder) {
        String currentPhoneNumber = getCurrentPhoneNumber();
        builder.param("phoneNumber", currentPhoneNumber);
        builder.tag("phoneNumber", currentPhoneNumber);
    }

    private String getCurrentPhoneNumber() {
        return "+" + this.countryCodePicker.getCountryCode() + " " + PhoneNumberUtils.stripSeparators(this.phoneInputLayout.getEditContent());
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected boolean isContentVerified() {
        TextInputLayout textInputLayout = this.phoneInputLayout;
        return (textInputLayout == null || this.passInputLayout == null || !this.accountUtils.isPhoneAndPassVerifed(textInputLayout.getEditText(), this.passInputLayout.getEditText())) ? false : true;
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void forgetPassword() {
        AccountWebUtils.openForgetPasswordPage(this, getCurrentPhoneNumber(), null);
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void setupResultIntent(Intent intent) {
        intent.putExtra("phoneNumber", getCurrentPhoneNumber());
    }
}
