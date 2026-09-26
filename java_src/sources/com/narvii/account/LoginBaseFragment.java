package com.narvii.account;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.narvii.account.liveramp.LiveRampHelper;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.incubator.IncubatorApplication;
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

/* JADX INFO: loaded from: classes5.dex */
public abstract class LoginBaseFragment extends AccountBaseFragment implements TextWatcher, View.OnClickListener {
    protected AccountUtils accountUtils;
    protected final AccountResponseListener listener = new AccountResponseListener(this) { // from class: com.narvii.account.LoginBaseFragment.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            String str2;
            String str3;
            LoginBaseFragment.this.finishWithResult(false, i10, str, apiRequest);
            String str4 = null;
            if (i10 == 200) {
                str2 = "WrongPassword";
            } else if (i10 == 216) {
                str2 = "AccountNotExist";
            } else {
                str2 = i10 == 0 ? "NetworkError" : null;
            }
            if (apiRequest.tag("email") != null) {
                str4 = (String) apiRequest.tag("email");
                str3 = null;
            } else {
                str3 = apiRequest.tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER) != null ? (String) apiRequest.tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER) : null;
            }
            ((LoggingService) LoginBaseFragment.this.getService("logging")).lambda$logEvent$0("AccountError", "email", str4, "phone", str3, "code", Integer.valueOf(i10), "reason", str2, AccountNotice.LEVEL_MESSAGE, str);
        }

        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            Log.i("login success with " + ((String) apiRequest.tag("email")));
            LiveRampHelper.setLRUserEmail(apiRequest.tag("emal").toString());
            accountResponse.sid.charAt(0);
            super.onFinish(apiRequest, accountResponse);
            LoginBaseFragment.this.finishWithResult(true, 0, null);
        }
    };
    protected Button loginBtn;
    protected TextInputLayout passInputLayout;
    protected ApiRequest request;
    SharedPreferences sharedPreferences;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    protected void forgetPassword() {
    }

    protected boolean isContentVerified() {
        return true;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    protected abstract void setupRequestBuilder(ApiRequest.Builder builder);

    protected void loginBtnClick() {
        this.loginBtn.callOnClick();
    }

    private void sendLoginRequest() {
        if (!isContentVerified()) {
            return;
        }
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        String editContent = this.passInputLayout.getEditContent();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/login");
        setupRequestBuilder(builder);
        builder.param("secret", "0 " + editContent);
        builder.param(a0.a.o, accountService.getDeviceId());
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        builder.param("action", NotificationChannelHelper.CHANNEL_NORMAL);
        builder.tag("pass", editContent);
        ApiRequest apiRequestBuild = builder.build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, this.listener);
        startSubmit();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (isContentVerified()) {
            this.loginBtn.setEnabled(true);
        } else {
            this.loginBtn.setEnabled(false);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.sharedPreferences = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.forget_password) {
            if (id == R.id.login) {
                sendLoginRequest();
                return;
            }
            return;
        }
        forgetPassword();
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountUtils = new AccountUtils(getContext());
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.title)).setText(getString(R.string.account_login));
        TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(R.id.pass_input_layout);
        this.passInputLayout = textInputLayout;
        textInputLayout.addTextChangedListener(this);
        Button button = (Button) view.findViewById(R.id.login);
        this.loginBtn = button;
        button.setOnClickListener(this);
        this.loginBtn.setTextColor(new AccountUtils(getContext()).getAccountForegroundColor());
        view.findViewById(R.id.forget_password).setOnClickListener(this);
    }
}
