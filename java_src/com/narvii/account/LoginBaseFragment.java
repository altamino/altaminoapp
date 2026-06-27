package com.narvii.account;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.widget.TextInputLayout;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class LoginBaseFragment extends AccountBaseFragment implements TextWatcher, View.OnClickListener {
    protected AccountUtils accountUtils;
    protected final AccountResponseListener listener = new AccountResponseListener(this) { // from class: com.narvii.account.LoginBaseFragment.1
        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            Log.i("login success with " + ((String) apiRequest.tag("email")));
            accountResponse.sid.charAt(0);
            super.onFinish(apiRequest, accountResponse);
            LoginBaseFragment.this.finishWithResult(true, 0, null);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            String str2;
            LoginBaseFragment.this.finishWithResult(false, i, str, apiRequest);
            String str3 = null;
            String str4 = i == 200 ? "WrongPassword" : i == 216 ? "AccountNotExist" : i == 0 ? "NetworkError" : null;
            if (apiRequest.tag("email") != null) {
                str3 = (String) apiRequest.tag("email");
                str2 = null;
            } else {
                str2 = apiRequest.tag("phoneNumber") != null ? (String) apiRequest.tag("phoneNumber") : null;
            }
            ((LoggingService) LoginBaseFragment.this.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AccountError", "email", str3, CodeVerifyFragment.KEY_PHONE, str2, "code", Integer.valueOf(i), "reason", str4, AccountNotice.LEVEL_MESSAGE, str);
        }
    };
    protected Button loginBtn;
    protected TextInputLayout passInputLayout;
    protected ApiRequest request;
    SharedPreferences sharedPreferences;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    protected void forgetPassword() {
    }

    protected boolean isContentVerified() {
        return true;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    protected abstract void setupRequestBuilder(ApiRequest.Builder builder);

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.sharedPreferences = (SharedPreferences) getService("prefs");
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountUtils = new AccountUtils(getContext());
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.title)).setText(getString(R.string.account_login));
        this.passInputLayout = (TextInputLayout) view.findViewById(R.id.pass_input_layout);
        this.passInputLayout.addTextChangedListener(this);
        this.loginBtn = (Button) view.findViewById(R.id.login);
        this.loginBtn.setOnClickListener(this);
        this.loginBtn.setTextColor(new AccountUtils(getContext()).getAccountForegroundColor());
        view.findViewById(R.id.forget_password).setOnClickListener(this);
    }

    public void afterTextChanged(Editable editable) {
        if (isContentVerified()) {
            this.loginBtn.setEnabled(true);
        } else {
            this.loginBtn.setEnabled(false);
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.forget_password) {
            forgetPassword();
        } else {
            if (id != R.id.login) {
                return;
            }
            sendLoginRequest();
        }
    }

    private void sendLoginRequest() {
        if (isContentVerified()) {
            AccountService accountService = (AccountService) getService("account");
            ApiService apiService = (ApiService) getService("api");
            String editContent = this.passInputLayout.getEditContent();
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.https().post().global();
            builder.path("/auth/login");
            setupRequestBuilder(builder);
            builder.param("secret", "0 " + editContent);
            builder.param("deviceID", accountService.getDeviceId());
            builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
            builder.param("action", NotificationChannelHelper.CHANNEL_NORMAL);
            builder.tag("pass", editContent);
            this.request = builder.build();
            apiService.exec(this.request, this.listener);
            startSubmit();
        }
    }

    protected void loginBtnClick() {
        this.loginBtn.callOnClick();
    }
}
