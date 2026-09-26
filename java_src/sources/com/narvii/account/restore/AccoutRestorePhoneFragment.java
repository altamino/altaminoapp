package com.narvii.account.restore;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.master.R;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.TextInputLayout;
import org.slf4j.c;

/* JADX INFO: loaded from: classes6.dex */
public class AccoutRestorePhoneFragment extends AccountRestoreBaseFragment {
    MyPhoneCountryCodePicker countryCodePicker;
    TextInputLayout phoneInputLayout;

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected int layoutId() {
        return R.layout.fragment_account_restore_mobile_layout;
    }

    private String getCurrentPhoneNumber() {
        return c.ANY_NON_NULL_MARKER + this.countryCodePicker.getCountryCode() + " " + PhoneNumberUtils.stripSeparators(this.phoneInputLayout.getEditContent());
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected boolean isContentVerified() {
        TextInputLayout textInputLayout = this.phoneInputLayout;
        return (textInputLayout == null || this.passInputLayout == null || !this.accountUtils.isPhoneAndPassVerified(textInputLayout.getEditText(), this.passInputLayout.getEditText())) ? false : true;
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void setupResultIntent(Intent intent) {
        intent.putExtra(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, getCurrentPhoneNumber());
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.countryCodePicker = (MyPhoneCountryCodePicker) view.findViewById(R.id.country_picker);
        TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(R.id.phone_input_layout);
        this.phoneInputLayout = textInputLayout;
        textInputLayout.addTextChangedListener(this);
        String stringParam = getStringParam(HintConstants.AUTOFILL_HINT_PHONE_NUMBER);
        String countryCode = this.accountUtils.getCountryCode(stringParam);
        String nationalNumber = this.accountUtils.getNationalNumber(stringParam);
        if (countryCode != null) {
            this.countryCodePicker.setPhoneNumber(c.ANY_NON_NULL_MARKER + countryCode);
        }
        if (nationalNumber != null) {
            EditText editText = (EditText) this.phoneInputLayout.findViewById(R.id.edit);
            editText.setText(nationalNumber);
            editText.setSelection(editText.getText().length());
        }
        if (!TextUtils.isEmpty(getStringParam(HintConstants.AUTOFILL_HINT_PHONE_NUMBER))) {
            this.phoneInputLayout.getEditText().setFocusable(false);
            this.phoneInputLayout.getEditText().setEnabled(false);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.restore.AccoutRestorePhoneFragment.1
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(!TextUtils.isEmpty(AccoutRestorePhoneFragment.this.getStringParam(HintConstants.AUTOFILL_HINT_PHONE_NUMBER)) ? AccoutRestorePhoneFragment.this.passInputLayout.getEditText() : AccoutRestorePhoneFragment.this.phoneInputLayout.getEditText());
            }
        }, 0L);
    }

    @Override // com.narvii.account.restore.AccountRestoreBaseFragment
    protected void setupRequestBuilder(ApiRequest.Builder builder) {
        String currentPhoneNumber = getCurrentPhoneNumber();
        builder.param(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, currentPhoneNumber);
        builder.tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, currentPhoneNumber);
    }
}
