package com.narvii.account;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.AccountWebUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.TextInputLayout;
import java.util.List;

/* loaded from: classes2.dex */
public class LeaderThirdPartyLoginFragment extends ThirdPartyAccountBaseFragment implements TextWatcher, View.OnClickListener {
    protected AccountUtils accountUtils;
    protected final AccountResponseListener listener = new AccountResponseListener(this) { // from class: com.narvii.account.LeaderThirdPartyLoginFragment.2
        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            accountResponse.sid.charAt(0);
            super.onFinish(apiRequest, accountResponse);
            LeaderThirdPartyLoginFragment.this.finishWithResult(true, 0, null);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            LeaderThirdPartyLoginFragment leaderThirdPartyLoginFragment = LeaderThirdPartyLoginFragment.this;
            leaderThirdPartyLoginFragment.finishThirdPartLoginWithResult(leaderThirdPartyLoginFragment.getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET), false, i, str, apiRequest);
        }
    };
    protected Button loginBtn;
    protected TextInputLayout passInputLayout;
    protected ApiRequest request;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountUtils = new AccountUtils(getContext());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_leader_thirdpart_fill_pass, viewGroup, false);
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
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.LeaderThirdPartyLoginFragment.1
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(LeaderThirdPartyLoginFragment.this.passInputLayout.getEditText());
            }
        }, 0L);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.loginBtn.setEnabled(isContentVerified());
    }

    @Override // android.view.View.OnClickListener
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

    private boolean isContentVerified() {
        return this.accountUtils.isValidPassword(this.passInputLayout.getEditContent());
    }

    private void sendLoginRequest() {
        if (isContentVerified()) {
            AccountService accountService = (AccountService) getService("account");
            ApiService apiService = (ApiService) getService("api");
            String editContent = this.passInputLayout.getEditContent();
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.https().post().global();
            builder.path("/auth/login");
            builder.param("secret", getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
            builder.param("secret2", "0 " + editContent);
            builder.param("deviceID", accountService.getDeviceId());
            builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
            builder.param("action", NotificationChannelHelper.CHANNEL_NORMAL);
            builder.tag("thirdPart", Boolean.TRUE);
            this.request = builder.build();
            apiService.exec(this.request, this.listener);
            startSubmit();
        }
    }

    private void forgetPassword() {
        AccountWebUtils.openForgetPasswordPage(this);
    }
}
