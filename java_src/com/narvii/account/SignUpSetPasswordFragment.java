package com.narvii.account;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import java.util.List;

/* loaded from: classes2.dex */
public class SignUpSetPasswordFragment extends AccountBaseFragment implements FragmentOnBackListener {
    View nextView;
    EditText passEdit;
    String password;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "SignUpCreatePassword";
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean logSignUpMethod() {
        return true;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        return true;
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            loginActivity.statMaxLoginStep = 0;
            loginActivity.statMaxSignupSetp = 20;
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("CreatePasswordStarting", new Object[0]);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sign_up_set_password, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.passEdit = (EditText) view.findViewById(R.id.edit);
        this.nextView = view.findViewById(R.id.next);
        this.passEdit.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.SignUpSetPasswordFragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SignUpSetPasswordFragment.this.updateNextView();
            }
        });
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.SignUpSetPasswordFragment.2
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(SignUpSetPasswordFragment.this.passEdit);
            }
        }, 100L);
        this.nextView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$SignUpSetPasswordFragment$PKh5gsMJZ1bIyby6GkWxn4Dv-uY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0$SignUpSetPasswordFragment(view2);
            }
        });
    }

    public /* synthetic */ void lambda$onViewCreated$0$SignUpSetPasswordFragment(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Next").send();
        this.password = this.passEdit.getText().toString();
        updateIndicatorViewStatus(2);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/register-check").param("deviceID", accountService.getDeviceId());
        if (!TextUtils.isEmpty(this.password)) {
            builderParam.param("secret", "0 " + this.password);
        }
        ApiRequest apiRequestBuild = builderParam.build();
        setIsRequesting(true);
        showProgress();
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.SignUpSetPasswordFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                SignUpSetPasswordFragment.this.dismissProgress();
                SignUpSetPasswordFragment.this.goNext();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                SignUpSetPasswordFragment.this.dismissProgress();
                NVToast.makeText(SignUpSetPasswordFragment.this.getContext(), str, 0).show();
                LoggingService loggingService = (LoggingService) SignUpSetPasswordFragment.this.getService("logging");
                Object[] objArr = new Object[6];
                objArr[0] = "code";
                objArr[1] = Integer.valueOf(i);
                objArr[2] = "reason";
                objArr[3] = i == 0 ? "NetworkError" : "InvalidPassword";
                objArr[4] = AccountNotice.LEVEL_MESSAGE;
                objArr[5] = str;
                loggingService.lambda$logEvent$0$LoggingServiceImpl("AccountError", objArr);
            }
        });
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.account.AccountSignUpIndicatorView.IndicatorSuccessFinishedListener
    public void onTotallySuccess() {
        goNext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNextView() {
        String string = this.passEdit.getText().toString();
        this.nextView.setEnabled(!(string == null || string.length() < 6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goNext() {
        if (isAdded()) {
            SignUpAddProfileFragment signUpAddProfileFragment = new SignUpAddProfileFragment();
            Bundle bundle = new Bundle();
            bundle.putString("email", getStringParam("email"));
            bundle.putString("phoneNumber", getStringParam("phoneNumber"));
            bundle.putString("pass", this.password);
            bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
            bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
            bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
            bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
            bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
            bundle.putString("validationContext", getStringParam("validationContext"));
            signUpAddProfileFragment.setArguments(bundle);
            goToAddProfilePage(signUpAddProfileFragment);
        }
    }

    @Override // com.narvii.account.AccountBaseFragment
    public void goToAddProfilePage(Fragment fragment) {
        fragment.getArguments().putBoolean("autoSignup", getArguments().getBoolean("autoSignup"));
        super.goToAddProfilePage(fragment);
    }
}
