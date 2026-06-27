package com.narvii.account;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.mastes.R;
import com.narvii.util.AccountWebUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.TextInputLayout;

/* loaded from: classes2.dex */
public class MobileLoginFragment extends LoginBaseFragment {
    MyPhoneCountryCodePicker countryCodePicker;
    TextInputLayout phoneInputLayout;

    @Override // com.narvii.account.LoginBaseFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            loginActivity.statMaxLoginStep = 3;
            loginActivity.statMaxSignupSetp = 0;
            loginActivity.statType = 1;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_login_mobile, viewGroup, false);
    }

    @Override // com.narvii.account.LoginBaseFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        SharedPreferences sharedPreferences;
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.title)).setText(getString(R.string.account_login));
        this.phoneInputLayout = (TextInputLayout) view.findViewById(R.id.phone_input_layout);
        this.phoneInputLayout.getEditText().addTextChangedListener(this);
        String stringParam = getStringParam("phoneNumber");
        if (TextUtils.isEmpty(stringParam) && (sharedPreferences = this.sharedPreferences) != null) {
            stringParam = sharedPreferences.getString("last_phoneNumber", null);
        }
        if (!TextUtils.isEmpty(stringParam)) {
            String[] strArrSplit = stringParam.split(" ");
            if (strArrSplit.length == 2) {
                ((MyPhoneCountryCodePicker) this.phoneInputLayout.findViewById(R.id.country_picker)).setPhoneNumber(strArrSplit[0]);
                EditText editText = (EditText) this.phoneInputLayout.findViewById(R.id.edit);
                editText.setText(strArrSplit[1]);
                editText.setSelection(editText.getText().length());
            }
        }
        this.passInputLayout.setInputText(getStringParam("pass"));
        this.countryCodePicker = (MyPhoneCountryCodePicker) view.findViewById(R.id.country_picker);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.MobileLoginFragment.1
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(MobileLoginFragment.this.phoneInputLayout.getEditText());
            }
        }, 0L);
    }

    @Override // com.narvii.account.LoginBaseFragment
    protected void setupRequestBuilder(ApiRequest.Builder builder) {
        String currentPhoneNumber = getCurrentPhoneNumber();
        builder.param("phoneNumber", currentPhoneNumber);
        builder.param("v", 2);
        builder.tag("phoneNumber", currentPhoneNumber);
    }

    private String getCurrentPhoneNumber() {
        return "+" + this.countryCodePicker.getCountryCode() + " " + PhoneNumberUtils.stripSeparators(this.phoneInputLayout.getEditContent().toString());
    }

    @Override // com.narvii.account.LoginBaseFragment
    protected boolean isContentVerified() {
        return this.accountUtils.isPhoneAndPassVerifed(this.phoneInputLayout.getEditText(), this.passInputLayout.getEditText());
    }

    @Override // com.narvii.account.LoginBaseFragment
    protected void forgetPassword() {
        AccountWebUtils.openForgetPasswordPage(this, getCurrentPhoneNumber(), null);
    }
}
