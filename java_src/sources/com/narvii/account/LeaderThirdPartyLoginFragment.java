package com.narvii.account;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.verifyaccount.VerifyAccountChooseIdentityFragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.TextInputLayout;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class LeaderThirdPartyLoginFragment extends ThirdPartyAccountBaseFragment implements TextWatcher, View.OnClickListener {
    protected AccountUtils accountUtils;
    protected final AccountResponseListener listener = new AccountResponseListener(this) { // from class: com.narvii.account.LeaderThirdPartyLoginFragment.2
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            LeaderThirdPartyLoginFragment leaderThirdPartyLoginFragment = LeaderThirdPartyLoginFragment.this;
            leaderThirdPartyLoginFragment.finishThirdPartLoginWithResult(leaderThirdPartyLoginFragment.getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET), false, i10, str, apiRequest);
        }

        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            accountResponse.sid.charAt(0);
            super.onFinish(apiRequest, accountResponse);
            LeaderThirdPartyLoginFragment.this.finishWithResult(true, 0, null);
        }
    };
    protected Button loginBtn;
    protected TextInputLayout passInputLayout;
    protected ApiRequest request;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    private boolean isContentVerified() {
        return this.accountUtils.isValidPassword(this.passInputLayout.getEditContent());
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.loginBtn.setEnabled(isContentVerified());
    }

    private void forgetPassword() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            FragmentTransaction fragmentTransactionQ = fragmentManager.q();
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            VerifyAccountChooseIdentityFragment verifyAccountChooseIdentityFragment = new VerifyAccountChooseIdentityFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("verify_type", 1);
            verifyAccountChooseIdentityFragment.setArguments(bundle);
            if (getContainerId() != null) {
                fragmentTransactionQ.v(getContainerId().intValue(), verifyAccountChooseIdentityFragment, "reset").h(null).k();
            } else {
                fragmentTransactionQ.v(R.id.frame, verifyAccountChooseIdentityFragment, "reset").h(null).k();
            }
        }
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
        builder.param("secret", getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
        builder.param("secret2", "0 " + editContent);
        builder.param(a0.a.o, accountService.getDeviceId());
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        builder.param("action", NotificationChannelHelper.CHANNEL_NORMAL);
        builder.tag("thirdPart", Boolean.TRUE);
        ApiRequest apiRequestBuild = builder.build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, this.listener);
        startSubmit();
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

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_leader_thirdpart_fill_pass, viewGroup, false);
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
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.LeaderThirdPartyLoginFragment.1
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(LeaderThirdPartyLoginFragment.this.passInputLayout.getEditText());
            }
        }, 0L);
    }
}
