package com.narvii.account;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.notice.AccountNotice;
import com.narvii.account.verifyaccount.CodeVerifyFragment;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes6.dex */
public class EmailSignupFragment extends AccountBaseFragment implements TextWatcher, TextView.OnEditorActionListener {
    private AutoCompleteEmailView edtEmail;
    private TextInputLayout emailInputLayout;
    private String lastRequsetEmail;
    private ApiRequest request;
    protected VerifyCodeSharedPrefsHelper verifyCodeHelper;
    private View verifyView;

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "sign_up_enter_your_email";
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    private boolean isEmailValid() {
        if (new AccountUtils(getContext()).isValidEmail(this.edtEmail.getText().toString())) {
            return true;
        }
        this.emailInputLayout.updateStatus(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleAlreadyRegistered$2(ACMAlertDialog aCMAlertDialog, View view) {
        LogEvent.clickWildcardBuilder(aCMAlertDialog, "Edit").send();
        this.edtEmail.setText((CharSequence) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleAlreadyRegistered$3(ACMAlertDialog aCMAlertDialog, String str, View view) {
        LogEvent.clickWildcardBuilder(aCMAlertDialog, "Login").send();
        Intent intent = new Intent();
        intent.putExtra("email", str);
        switchLogin(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("VerifyEmail").send();
        checkLegality(this.edtEmail.getText().toString(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1() {
        SoftKeyboard.showSoftKeyboard(this.edtEmail);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEmailConfirmDialog$4(View view) {
        requestEmailCode(this.edtEmail.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEmailConfirmDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setTitle(R.string.is_this_correct);
        aCMAlertDialog.setMessage(this.edtEmail.getText().toString());
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.setCanceledOnTouchOutside(false);
        aCMAlertDialog.addButton(R.string.edit, null);
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.account.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1718a.lambda$showEmailConfirmDialog$4(view);
            }
        });
        aCMAlertDialog.show();
    }

    private void updateVerifyView() {
        this.verifyView.setEnabled(new AccountUtils(getContext()).isValidEmail(this.edtEmail.getText().toString()));
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected void handleAlreadyRegistered(String str, final String str2) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this, "SignUpEmailTaken");
        aCMAlertDialog.setTitle(R.string.email_taken);
        aCMAlertDialog.setMessage(str);
        aCMAlertDialog.addButton(R.string.edit, new View.OnClickListener() { // from class: com.narvii.account.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1720a.lambda$handleAlreadyRegistered$2(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.account_login, new View.OnClickListener() { // from class: com.narvii.account.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1726a.lambda$handleAlreadyRegistered$3(aCMAlertDialog, str2, view);
            }
        });
        aCMAlertDialog.show();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        if (this.request != null) {
            ((ApiService) getService("api")).abort(this.request);
            this.request = null;
        }
        super.onDestroy();
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        if (this.request != null || i10 != 6) {
            return false;
        }
        checkLegality(this.edtEmail.getText().toString(), null);
        return true;
    }

    private void checkLegality(final String str, String str2) {
        if (!isEmailValid()) {
            ((LoggingService) getService("logging")).lambda$logEvent$0("AccountError", "email", str, "reason", "InvalidEmail");
            return;
        }
        if (Utils.isEqualsNotNull(str, this.lastRequsetEmail)) {
            goNext();
            return;
        }
        showProgress();
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/register-check").param(a0.a.o, accountService.getDeviceId());
        if (!TextUtils.isEmpty(str2)) {
            builderParam.param("secret", "0 " + str2);
        }
        if (!TextUtils.isEmpty(str)) {
            builderParam.param("email", str);
            builderParam.tag("email", str);
        }
        this.request = builderParam.build();
        setIsRequesting(true);
        apiService.exec(this.request, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.EmailSignupFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                EmailSignupFragment.this.dismissProgress();
                EmailSignupFragment.this.finishWithResult(false, i10, str3, apiRequest);
                EmailSignupFragment.this.edtEmail.requestFocus();
                String str4 = null;
                EmailSignupFragment.this.request = null;
                if (i10 == 215) {
                    str4 = "EmailExisted";
                } else if (i10 == 0) {
                    str4 = "NetworkError";
                }
                ((LoggingService) EmailSignupFragment.this.getService("logging")).lambda$logEvent$0("AccountError", "email", str, "code", Integer.valueOf(i10), "reason", str4, AccountNotice.LEVEL_MESSAGE, str3);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
                EmailSignupFragment.this.dismissProgress();
                EmailSignupFragment.this.showEmailConfirmDialog();
                EmailSignupFragment.this.request = null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goNext() {
        if (!isAdded()) {
            return;
        }
        this.lastRequsetEmail = this.edtEmail.getText().toString();
        FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        CodeVerifyFragment codeVerifyFragment = new CodeVerifyFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(CodeVerifyFragment.KEY_IDENTITY_TO_VERIFY_TYPE, 2);
        bundle.putString("email", this.lastRequsetEmail);
        bundle.putInt("verify_type", 4);
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
        bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
        bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
        codeVerifyFragment.setArguments(bundle);
        if (getContainerId() != null) {
            fragmentTransactionQ.u(getContainerId().intValue(), codeVerifyFragment).h(null).k();
        } else {
            fragmentTransactionQ.u(R.id.frame, codeVerifyFragment).h(null).k();
        }
        ((LoggingService) getService("logging")).lambda$logEvent$0("EmailVerificationStarting", "email", this.lastRequsetEmail);
    }

    private void requestEmailCode(final String str) {
        showProgress();
        requestSecurityCode(1, str, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.EmailSignupFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                String str3;
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
                EmailSignupFragment.this.dismissProgress();
                NVToast.makeText(EmailSignupFragment.this.getContext(), str2, 1).show();
                LoggingService loggingService = (LoggingService) EmailSignupFragment.this.getService("logging");
                Object[] objArr = new Object[8];
                objArr[0] = "email";
                objArr[1] = str;
                objArr[2] = "reason";
                if (i10 == 0) {
                    str3 = "NetworkError";
                } else {
                    str3 = null;
                }
                objArr[3] = str3;
                objArr[4] = "code";
                objArr[5] = Integer.valueOf(i10);
                objArr[6] = AccountNotice.LEVEL_MESSAGE;
                objArr[7] = str2;
                loggingService.lambda$logEvent$0("AccountError", objArr);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                EmailSignupFragment.this.verifyCodeHelper.updateEmailVerifyTime(str);
                EmailSignupFragment.this.dismissProgress();
                EmailSignupFragment.this.goNext();
            }
        });
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        updateVerifyView();
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_signup_email, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        AutoCompleteEmailView autoCompleteEmailView = (AutoCompleteEmailView) view.findViewById(R.id.edit);
        this.edtEmail = autoCompleteEmailView;
        autoCompleteEmailView.dismissDropDown();
        this.edtEmail.addTextChangedListener(this);
        this.edtEmail.setOnEditorActionListener(this);
        View viewFindViewById = view.findViewById(R.id.verify_email);
        this.verifyView = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f1712a.lambda$onViewCreated$0(view2);
            }
        });
        this.emailInputLayout = (TextInputLayout) view.findViewById(R.id.input_layout);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f1716a.lambda$onViewCreated$1();
            }
        }, 0L);
    }
}
