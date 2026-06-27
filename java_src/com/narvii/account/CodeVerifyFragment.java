package com.narvii.account;

import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import java.util.List;

/* loaded from: classes2.dex */
public class CodeVerifyFragment extends CodeVerifyBaseFragment {
    public static final String KEY_EMAIL = "email";
    public static final String KEY_PHONE = "phone";
    public static final String KEY_TYPE = "type";
    public static final int TYPE_EMAIL = 2;
    public static final int TYPE_PHONE = 1;
    private View btnSkip;
    private Button nextView;
    private ApiRequest request;
    private TextView tvEmailInfo;
    private ObjectNode validationContext;
    private String lastVerifyCode = null;
    private boolean isVerified = false;
    private final Runnable showSkip = new Runnable() { // from class: com.narvii.account.CodeVerifyFragment.1
        @Override // java.lang.Runnable
        public void run() {
            CodeVerifyFragment.this.btnSkip.setVisibility(0);
        }
    };

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public int layoutId() {
        return R.layout.fragment_signup_email_code_verify;
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            loginActivity.statMaxLoginStep = 0;
            loginActivity.statMaxSignupSetp = 10;
            loginActivity.statEmailVerificationSkipped = false;
            return;
        }
        String string = bundle.getString("validationContext");
        this.validationContext = string == null ? null : JacksonUtils.createObjectNode(string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPhone() {
        return getIntParam("type", 1) == 1;
    }

    private boolean isEmail() {
        return getIntParam("type", 2) == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPhone() {
        return getStringParam(KEY_PHONE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getEmail() {
        return getStringParam("email");
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    protected long getVerifyTime() {
        if (isPhone()) {
            return this.verifyCodeHelper.getPhoneVerifyTime(getPhone());
        }
        return this.verifyCodeHelper.getEmailVerifyTime(getEmail());
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ObjectNode objectNode = this.validationContext;
        if (objectNode != null) {
            bundle.putString("validationContext", objectNode.toString());
        }
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.btnSkip = view.findViewById(R.id.skip);
        this.btnSkip.setOnClickListener(this);
        this.btnSkip.setVisibility(4);
        if (isEmail()) {
            Utils.postDelayed(this.showSkip, 3600L);
        }
        this.tvEmailInfo = (TextView) view.findViewById(R.id.email_info);
        String phone = isPhone() ? getPhone() : getEmail();
        String string = getString(isPhone() ? R.string.code_sent_to_mobile : R.string.code_sent_to_email, "\n" + phone);
        int iIndexOf = string.indexOf(phone);
        if (iIndexOf != -1) {
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new StyleSpan(1), iIndexOf, string.length(), 33);
            this.tvEmailInfo.setText(spannableString);
        } else {
            this.tvEmailInfo.setText(string);
        }
        this.nextView = (Button) view.findViewById(R.id.next);
        this.nextView.setEnabled(false);
        this.nextView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.-$$Lambda$CodeVerifyFragment$Gl3xHGxV3Pp2suTKp5AXx8gZXAA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0$CodeVerifyFragment(view2);
            }
        });
    }

    public /* synthetic */ void lambda$onViewCreated$0$CodeVerifyFragment(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Next").extraParam("isAuto", false).send();
        verifyEmailCode(this.lastVerifyCode);
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        if (this.request != null) {
            ((ApiService) getService("api")).abort(this.request);
            this.request = null;
        }
        if (isEmail()) {
            Utils.handler.removeCallbacks(this.showSkip);
        }
        super.onDestroy();
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    protected void onItemClicked(View view) {
        if (view.getId() == R.id.skip) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Skip").send();
            skip();
        }
        super.onItemClicked(view);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return isPhone() ? "SignUpPhoneVerificationCode" : isEmail() ? "SignUpEmailVerificationCode" : super.getPageName();
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void onCodeFinished(String str) {
        this.nextView.setEnabled(true);
        if (this.isVerified) {
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Next").extraParam("isAuto", true).send();
        verifyEmailCode(str);
        this.isVerified = true;
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void updateCodeErrorMessage(boolean z) {
        super.updateCodeErrorMessage(z);
        if (!z) {
            this.nextView.setEnabled(false);
        }
        this.isVerified = false;
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void onResendCodeClicked() {
        super.onResendCodeClicked();
        int i = isPhone() ? 8 : 1;
        String phone = isPhone() ? getPhone() : getEmail();
        showProgress();
        requestSecurityCode(i, phone, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.CodeVerifyFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                if (CodeVerifyFragment.this.isAdded()) {
                    CodeVerifyFragment.this.dismissProgress();
                    if (CodeVerifyFragment.this.isPhone()) {
                        CodeVerifyFragment codeVerifyFragment = CodeVerifyFragment.this;
                        codeVerifyFragment.verifyCodeHelper.updatePhoneVerifyTime(codeVerifyFragment.getPhone());
                    } else {
                        CodeVerifyFragment codeVerifyFragment2 = CodeVerifyFragment.this;
                        codeVerifyFragment2.verifyCodeHelper.updateEmailVerifyTime(codeVerifyFragment2.getEmail());
                    }
                    CodeVerifyFragment.this.resetTimerCount();
                    CodeVerifyFragment.this.codeEditView.clearCode();
                    CodeVerifyFragment.this.codeEditView.isError(false);
                    CodeVerifyFragment.this.codeVerificationError.setVisibility(8);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str, apiResponse, th);
                if (CodeVerifyFragment.this.isAdded()) {
                    CodeVerifyFragment.this.dismissProgress();
                    NVToast.makeText(CodeVerifyFragment.this.getContext(), str, 1).show();
                    CodeVerifyFragment codeVerifyFragment = CodeVerifyFragment.this;
                    codeVerifyFragment.btnResend.setTextColor(ContextCompat.getColor(codeVerifyFragment.getContext(), R.color.selector_text_create_amino_green));
                    CodeVerifyFragment.this.btnResend.setClickable(false);
                }
            }
        });
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void onCountDownTimeChange(int i) {
        if (!isAdded() || getActivity() == null) {
            return;
        }
        this.btnResend.setTextColor(ContextCompat.getColor(getContext(), R.color.account_signup_clickable_text_gray));
        String strValueOf = String.valueOf(i);
        String string = getString(R.string.get_a_new_code_in, Integer.valueOf(i));
        if (i == 1) {
            string = getString(R.string.get_a_new_code_in_signle);
            strValueOf = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
        }
        int iIndexOf = string.indexOf(strValueOf);
        if (iIndexOf != -1) {
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new StyleSpan(1), iIndexOf, strValueOf.length() + iIndexOf, 33);
            this.btnResend.setText(spannableString);
            return;
        }
        this.btnResend.setText(string);
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void onCountDownTimeFinished() {
        super.onCountDownTimeFinished();
        this.btnResend.setText(getString(R.string.get_a_new_code));
        this.btnResend.setTextColor(ContextCompat.getColor(getContext(), R.color.selector_text_create_amino_green));
    }

    private void verifyEmailCode(final String str) {
        updateIndicatorStatus(2);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (isPhone()) {
            objectNodeCreateObjectNode.put("type", 8);
            objectNodeCreateObjectNode.put("identity", getPhone());
        } else {
            objectNodeCreateObjectNode.put("type", 1);
            objectNodeCreateObjectNode.put("identity", getEmail());
        }
        if (!TextUtils.isEmpty(str)) {
            ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode2.put("code", str);
            objectNodeCreateObjectNode.put("data", objectNodeCreateObjectNode2);
        }
        this.request = ApiRequest.builder().https().global().post().path("/auth/check-security-validation").param("validationContext", objectNodeCreateObjectNode).param("deviceID", accountService.getDeviceId()).build();
        setIsRequesting(true);
        showProgress();
        apiService.exec(this.request, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.CodeVerifyFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                CodeVerifyFragment.this.request = null;
                CodeVerifyFragment.this.lastVerifyCode = str;
                super.onFinish(apiRequest, apiResponse);
                if (CodeVerifyFragment.this.isAdded()) {
                    CodeVerifyFragment.this.dismissProgress();
                    CodeVerifyFragment.this.validationContext = (ObjectNode) JacksonUtils.nodePath(json(), "validationContext");
                    CodeVerifyFragment.this.codeEditView.isError(false);
                    CodeVerifyFragment.this.goNext();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                if (CodeVerifyFragment.this.isAdded()) {
                    CodeVerifyFragment.this.dismissProgress();
                    CodeVerifyFragment.this.request = null;
                    CodeVerifyFragment.this.updateCodeErrorMessage(true);
                    if (i == 3102) {
                        CodeVerifyFragment.this.codeVerificationError.setText(R.string.incorrect_verification_code);
                        CodeVerifyFragment.this.codeEditView.clearCode();
                    } else {
                        CodeVerifyFragment.this.codeVerificationError.setText(str2);
                    }
                    CodeVerifyFragment.this.codeVerificationError.setVisibility(0);
                    CodeVerifyFragment.this.codeEditView.isError(true);
                    LoggingService loggingService = (LoggingService) CodeVerifyFragment.this.getService("logging");
                    Object[] objArr = new Object[8];
                    objArr[0] = "email";
                    objArr[1] = CodeVerifyFragment.this.getStringParam("email");
                    objArr[2] = "code";
                    objArr[3] = Integer.valueOf(i);
                    objArr[4] = "reason";
                    objArr[5] = i == 0 ? "NetworkError" : "InvalidVerificationCode";
                    objArr[6] = AccountNotice.LEVEL_MESSAGE;
                    objArr[7] = str2;
                    loggingService.lambda$logEvent$0$LoggingServiceImpl("AccountError", objArr);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goNext() {
        if (isAdded()) {
            SignUpSetPasswordFragment signUpSetPasswordFragment = new SignUpSetPasswordFragment();
            Bundle bundle = new Bundle();
            if (isEmail()) {
                bundle.putString("email", getEmail());
            }
            bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
            bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
            bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
            bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
            bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
            ObjectNode objectNode = this.validationContext;
            bundle.putString("validationContext", objectNode == null ? null : objectNode.toString());
            signUpSetPasswordFragment.setArguments(bundle);
            goToSetPasswordPage(signUpSetPasswordFragment);
        }
    }

    private void skip() {
        this.codeEditView.clearCode();
        goNext();
        ((LoginActivity) getActivity()).statEmailVerificationSkipped = true;
    }
}
