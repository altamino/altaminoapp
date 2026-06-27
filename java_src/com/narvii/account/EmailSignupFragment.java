package com.narvii.account;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
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
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.AutoCompleteEmailView;
import com.narvii.widget.TextInputLayout;
import java.util.List;

/* loaded from: classes2.dex */
public class EmailSignupFragment extends AccountBaseFragment implements TextView.OnEditorActionListener, TextWatcher {
    private AutoCompleteEmailView edtEmail;
    private EditText edtFake;
    private TextInputLayout emailInputLayout;
    private String lastRequsetEmail;
    private ApiRequest request;
    private boolean stopAnimation;
    protected VerifyCodeSharedPrefsHelper verifyCodeHelper;
    private View verifyView;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "SignUpEnterYourEmail";
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            if (getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART)) {
                loginActivity.statMaxLoginStep = 0;
                loginActivity.statMaxSignupSetp = 20;
            } else {
                loginActivity.statMaxLoginStep = 0;
                loginActivity.statMaxSignupSetp = 4;
                loginActivity.statType = 2;
            }
        }
        this.verifyCodeHelper = new VerifyCodeSharedPrefsHelper(getContext());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_signup_email, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.edtEmail = (AutoCompleteEmailView) view.findViewById(R.id.edit);
        this.edtEmail.dismissDropDown();
        this.edtEmail.addTextChangedListener(this);
        this.edtEmail.setOnEditorActionListener(this);
        this.verifyView = view.findViewById(R.id.verify_email);
        this.verifyView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$EmailSignupFragment$td_NObjXRR04YZjiuobukK_nqqE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0$EmailSignupFragment(view2);
            }
        });
        this.emailInputLayout = (TextInputLayout) view.findViewById(R.id.input_layout);
        this.edtFake = (EditText) view.findViewById(R.id.fake_edit);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.EmailSignupFragment.1
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard(EmailSignupFragment.this.edtEmail);
            }
        }, 0L);
    }

    public /* synthetic */ void lambda$onViewCreated$0$EmailSignupFragment(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("VerifyEmail").send();
        checkLegality(this.edtEmail.getText().toString(), null);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        if (this.request != null) {
            ((ApiService) getService("api")).abort(this.request);
            this.request = null;
        }
        super.onDestroy();
    }

    private void checkLegality(final String str, String str2) {
        if (!ieEmailValid()) {
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AccountError", "email", str, "reason", "InvalidEmail");
            return;
        }
        if (Utils.isEqualsNotNull(str, this.lastRequsetEmail)) {
            goNext();
            return;
        }
        showProgress();
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/register-check").param("deviceID", accountService.getDeviceId());
        if (!TextUtils.isEmpty(str2)) {
            builderParam.param("secret", "0 " + str2);
        }
        if (!TextUtils.isEmpty(str)) {
            builderParam.param("email", str);
            builderParam.tag("email", str);
        }
        this.request = builderParam.build();
        setIsRequesting(true);
        apiService.exec(this.request, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.EmailSignupFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                EmailSignupFragment.this.dismissProgress();
                EmailSignupFragment.this.showEmailConfirmDialog();
                EmailSignupFragment.this.request = null;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                EmailSignupFragment.this.dismissProgress();
                EmailSignupFragment.this.finishWithResult(false, i, str3, apiRequest);
                EmailSignupFragment.this.edtEmail.requestFocus();
                String str4 = null;
                EmailSignupFragment.this.request = null;
                if (i == 215) {
                    str4 = "EmailExisted";
                } else if (i == 0) {
                    str4 = "NetworkError";
                }
                ((LoggingService) EmailSignupFragment.this.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AccountError", "email", str, "code", Integer.valueOf(i), "reason", str4, AccountNotice.LEVEL_MESSAGE, str3);
            }
        });
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected void handleAlreadyRegistered(String str, final String str2) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this, "SignUpEmailTaken");
        aCMAlertDialog.setTitle(R.string.email_taken);
        aCMAlertDialog.setMessage(str);
        aCMAlertDialog.addButton(R.string.edit, new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$EmailSignupFragment$-09YqnzYXfVmQz2lSHcEll4kjrE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$handleAlreadyRegistered$1$EmailSignupFragment(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.account_login, new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$handleAlreadyRegistered$2$EmailSignupFragment(aCMAlertDialog, str2, view);
            }
        });
        aCMAlertDialog.show();
    }

    public /* synthetic */ void lambda$handleAlreadyRegistered$1$EmailSignupFragment(ACMAlertDialog aCMAlertDialog, View view) {
        LogEvent.clickWildcardBuilder(aCMAlertDialog, "Edit").send();
        this.edtEmail.setText((CharSequence) null);
    }

    public /* synthetic */ void lambda$handleAlreadyRegistered$2$EmailSignupFragment(ACMAlertDialog aCMAlertDialog, String str, View view) {
        LogEvent.clickWildcardBuilder(aCMAlertDialog, "Login").send();
        Intent intent = new Intent();
        intent.putExtra("email", str);
        switchLogin(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goNext() {
        if (isAdded()) {
            this.lastRequsetEmail = this.edtEmail.getText().toString();
            FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            CodeVerifyFragment codeVerifyFragment = new CodeVerifyFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("type", 2);
            bundle.putString("email", this.lastRequsetEmail);
            bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
            bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
            bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
            bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
            bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
            codeVerifyFragment.setArguments(bundle);
            fragmentTransactionBeginTransaction.replace(R.id.frame, codeVerifyFragment).addToBackStack(null).commitAllowingStateLoss();
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("EmailVerificationStarting", "email", this.lastRequsetEmail);
        }
    }

    @Override // android.support.v4.app.Fragment
    public Animation onCreateAnimation(int i, boolean z, int i2) {
        if (this.stopAnimation) {
            Animation animation = new Animation() { // from class: com.narvii.account.EmailSignupFragment.3
            };
            animation.setDuration(0L);
            return animation;
        }
        return super.onCreateAnimation(i, z, i2);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (this.request != null || i != 6) {
            return false;
        }
        checkLegality(this.edtEmail.getText().toString(), null);
        return true;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        updateVerifyView();
    }

    private void updateVerifyView() {
        this.verifyView.setEnabled(new AccountUtils(getContext()).isValidEmail(this.edtEmail.getText().toString()));
    }

    private boolean ieEmailValid() {
        if (new AccountUtils(getContext()).isValidEmail(this.edtEmail.getText().toString())) {
            return true;
        }
        this.emailInputLayout.updateStatus(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEmailConfirmDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setTitle(R.string.is_this_correct);
        aCMAlertDialog.setMessage(this.edtEmail.getText().toString());
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.setCanceledOnTouchOutside(false);
        aCMAlertDialog.addButton(R.string.edit, null);
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$EmailSignupFragment$CZmKp4l2Jq6RDkFZn4QtrqraYjo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showEmailConfirmDialog$3$EmailSignupFragment(view);
            }
        });
        aCMAlertDialog.show();
    }

    public /* synthetic */ void lambda$showEmailConfirmDialog$3$EmailSignupFragment(View view) {
        requestEmailCode(this.edtEmail.getText().toString());
    }

    private void requestEmailCode(final String str) {
        showProgress();
        requestSecurityCode(1, str, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.EmailSignupFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                EmailSignupFragment.this.verifyCodeHelper.updateEmailVerifyTime(str);
                EmailSignupFragment.this.dismissProgress();
                EmailSignupFragment.this.goNext();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                EmailSignupFragment.this.dismissProgress();
                NVToast.makeText(EmailSignupFragment.this.getContext(), str2, 1).show();
                LoggingService loggingService = (LoggingService) EmailSignupFragment.this.getService("logging");
                Object[] objArr = new Object[8];
                objArr[0] = "email";
                objArr[1] = str;
                objArr[2] = "reason";
                objArr[3] = i == 0 ? "NetworkError" : null;
                objArr[4] = "code";
                objArr[5] = Integer.valueOf(i);
                objArr[6] = AccountNotice.LEVEL_MESSAGE;
                objArr[7] = str2;
                loggingService.lambda$logEvent$0$LoggingServiceImpl("AccountError", objArr);
            }
        });
    }
}
