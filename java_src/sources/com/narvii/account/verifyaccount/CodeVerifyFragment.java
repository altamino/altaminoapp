package com.narvii.account.verifyaccount;

import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.autofill.HintConstants;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.NullNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountBaseFragment;
import com.narvii.account.AccountKeychain;
import com.narvii.account.AccountService;
import com.narvii.account.CodeVerifyBaseFragment;
import com.narvii.account.LoginActivity;
import com.narvii.account.SetEmailFragment;
import com.narvii.account.SetPhoneNumberFragment;
import com.narvii.account.SuccessfullyCompletedFragment;
import com.narvii.account.notice.AccountNotice;
import com.narvii.account.resetpassword.EmailResetPasswordFragment;
import com.narvii.account.resetpassword.MobileResetPasswordFragment;
import com.narvii.amino.master.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.widget.CodeEditView;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.text.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;
import w7.s;

/* JADX INFO: loaded from: classes.dex */
public final class CodeVerifyFragment extends CodeVerifyBaseFragment {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_CHECK_LEVEL = "check_level";

    @NotNull
    public static final String KEY_IDENTITY_EMAIL = "email";

    @NotNull
    public static final String KEY_IDENTITY_PHONE = "phone";

    @NotNull
    public static final String KEY_IDENTITY_TO_VERIFY_TYPE = "identity_to_verify_type";

    @NotNull
    public static final String KEY_OLD_CODE = "old_code";

    @NotNull
    public static final String KEY_OLD_IDENTITY = "old_identity";

    @NotNull
    public static final String KEY_OLD_IDENTITY_TYPE = "type";

    @NotNull
    public static final String KEY_OLD_PASSWORD = "old_password";

    @NotNull
    public static final String KEY_SET_IDENTITY_TYPE = "set_identity_type";

    @NotNull
    public static final String KEY_VERIFY_ACCOUNT_TYPE = "verify_type";
    private boolean isVerified;

    @Nullable
    private String lastVerifyCode;
    private Button nextView;

    @Nullable
    private ApiRequest request;

    @Nullable
    private ObjectNode validationContext;

    @NotNull
    private final m verifyAccountType$delegate = o.a(new CodeVerifyFragment$verifyAccountType$2(this));

    @NotNull
    private final m identityToVerifyType$delegate = o.a(new CodeVerifyFragment$identityToVerifyType$2(this));

    @NotNull
    private final m email$delegate = o.a(new CodeVerifyFragment$email$2(this));

    @NotNull
    private final m phone$delegate = o.a(new CodeVerifyFragment$phone$2(this));

    @NotNull
    private final m checkLevel$delegate = o.a(new CodeVerifyFragment$checkLevel$2(this));

    @NotNull
    private final m oldIdentity$delegate = o.a(new CodeVerifyFragment$oldIdentity$2(this));

    @NotNull
    private final m oldIdentityType$delegate = o.a(new CodeVerifyFragment$oldIdentityType$2(this));

    @NotNull
    private final m oldCode$delegate = o.a(new CodeVerifyFragment$oldCode$2(this));

    @NotNull
    private final m oldPassword$delegate = o.a(new CodeVerifyFragment$oldPassword$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkResetPassword(String str) {
        updateIndicatorViewStatus(2);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/check-reset-password").param(a0.a.o, accountService.getDeviceId());
        String email = getEmail();
        if (email == null || !(!t.z(email))) {
            String phone = getPhone();
            if (phone != null && (!t.z(phone))) {
                builderParam.param("type", 8);
                builderParam.param("identity", getPhone());
                builderParam.param("level", 1);
            }
        } else {
            builderParam.param("type", 1);
            builderParam.param("identity", getEmail());
            builderParam.param("level", 2);
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("code", str);
        l0 l0Var = l0.INSTANCE;
        builderParam.param("data", objectNodeCreateObjectNode);
        ApiRequest apiRequestBuild = builderParam.build();
        setIsRequesting(true);
        showProgress();
        apiService.exec(apiRequestBuild, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.CodeVerifyFragment.checkResetPassword.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                CodeVerifyFragment.this.dismissProgress();
                NVToast.makeText(CodeVerifyFragment.this.getContext(), message, 0).show();
                LoggingService loggingService = (LoggingService) CodeVerifyFragment.this.getService("logging");
                Object[] objArr = new Object[6];
                objArr[0] = "code";
                objArr[1] = Integer.valueOf(i10);
                objArr[2] = "reason";
                objArr[3] = i10 == 0 ? "NetworkError" : "InvalidPassword";
                objArr[4] = AccountNotice.LEVEL_MESSAGE;
                objArr[5] = message;
                loggingService.lambda$logEvent$0("AccountError", objArr);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull ApiResponse resp) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(resp, "resp");
                CodeVerifyFragment.this.dismissProgress();
                ObjectNode objectNode = (ObjectNode) JacksonUtils.nodePath(json(), "account");
                if (objectNode != null) {
                    CodeVerifyFragment codeVerifyFragment = CodeVerifyFragment.this;
                    if (objectNode.get(HintConstants.AUTOFILL_HINT_PHONE_NUMBER) == NullNode.getInstance() || objectNode.get("email") == NullNode.getInstance()) {
                        codeVerifyFragment.goToSetPassword();
                        return;
                    }
                    if (codeVerifyFragment.getCheckLevel() != 1) {
                        codeVerifyFragment.goToSetPassword();
                    } else if (codeVerifyFragment.getPhone() != null) {
                        codeVerifyFragment.goToEmailVerify();
                    } else {
                        codeVerifyFragment.goToMobileVerify();
                    }
                }
            }
        });
    }

    private final void requestUpdateIdentity(String str, IdentityType identityType) {
        String str2;
        String phone;
        int i10;
        updateIndicatorViewStatus(2);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        boolean z6 = identityType instanceof EmailIdentity;
        if (z6) {
            str2 = "/auth/update-email";
        } else {
            if (!(identityType instanceof PhoneIdentity)) {
                throw new s();
            }
            str2 = "/auth/update-phone-number";
        }
        if (z6) {
            phone = getEmail();
        } else {
            if (!(identityType instanceof PhoneIdentity)) {
                throw new s();
            }
            phone = getPhone();
        }
        if (z6) {
            i10 = 1;
        } else {
            if (!(identityType instanceof PhoneIdentity)) {
                throw new s();
            }
            i10 = 8;
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().https().global().post().path(str2);
        String str3 = a0.a.o;
        ApiRequest.Builder builderParam = builderPath.param(str3, accountService.getDeviceId());
        builderParam.param("secret", "0 " + getOldPassword());
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("identity", phone);
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode2.put("code", str);
        l0 l0Var = l0.INSTANCE;
        objectNodeCreateObjectNode.put("data", objectNodeCreateObjectNode2);
        objectNodeCreateObjectNode.put("level", 1);
        objectNodeCreateObjectNode.put("type", i10);
        objectNodeCreateObjectNode.put(str3, accountService.getDeviceId());
        builderParam.param("newValidationContext", objectNodeCreateObjectNode);
        ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode3.put("identity", getOldIdentity());
        ObjectNode objectNodeCreateObjectNode4 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode4.put("code", getOldCode());
        objectNodeCreateObjectNode3.put("data", objectNodeCreateObjectNode4);
        objectNodeCreateObjectNode3.put("level", 1);
        objectNodeCreateObjectNode3.put("type", getOldIdentityType());
        objectNodeCreateObjectNode3.put(str3, accountService.getDeviceId());
        builderParam.param("oldValidationContext", objectNodeCreateObjectNode3);
        this.request = builderParam.build();
        showProgress();
        apiService.exec(this.request, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.CodeVerifyFragment.requestUpdateIdentity.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i11, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                CodeVerifyFragment.this.dismissProgress();
                NVToast.makeText(CodeVerifyFragment.this.getContext(), message, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull ApiResponse resp) throws Throwable {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(resp, "resp");
                CodeVerifyFragment.this.dismissProgress();
                CodeVerifyFragment.this.updateSecret(JacksonUtils.nodeString(json(), "secret"));
            }
        });
    }

    private final void verifyEmailCode(final String str) {
        updateIndicatorStatus(2);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (getIdentityToVerifyType() instanceof PhoneIdentity) {
            objectNodeCreateObjectNode.put("type", 8);
            objectNodeCreateObjectNode.put("identity", getPhone());
            if (getVerifyAccountType() instanceof ResetPassVerifyAccount) {
                objectNodeCreateObjectNode.put("level", 1);
            }
        } else {
            objectNodeCreateObjectNode.put("type", 1);
            objectNodeCreateObjectNode.put("identity", getEmail());
            if (getVerifyAccountType() instanceof ResetPassVerifyAccount) {
                objectNodeCreateObjectNode.put("level", 2);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode2.put("code", str);
            objectNodeCreateObjectNode.put("data", objectNodeCreateObjectNode2);
        }
        this.request = ApiRequest.builder().https().global().post().path("/auth/check-security-validation").param("validationContext", objectNodeCreateObjectNode).param(a0.a.o, accountService.getDeviceId()).build();
        setIsRequesting(true);
        showProgress();
        apiService.exec(this.request, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.CodeVerifyFragment.verifyEmailCode.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                super.onFail(req, i10, list, message, apiResponse, t5);
                if (CodeVerifyFragment.this.isAdded()) {
                    CodeVerifyFragment.this.dismissProgress();
                    CodeVerifyFragment.this.request = null;
                    CodeVerifyFragment.this.updateCodeErrorMessage(true);
                    if (i10 == 3102) {
                        ((CodeVerifyBaseFragment) CodeVerifyFragment.this).codeVerificationError.setText(R.string.incorrect_verification_code);
                        ((CodeVerifyBaseFragment) CodeVerifyFragment.this).codeEditView.clearCode();
                    } else {
                        ((CodeVerifyBaseFragment) CodeVerifyFragment.this).codeVerificationError.setText(message);
                    }
                    ((CodeVerifyBaseFragment) CodeVerifyFragment.this).codeVerificationError.setVisibility(0);
                    ((CodeVerifyBaseFragment) CodeVerifyFragment.this).codeEditView.isError(true);
                    LoggingService loggingService = (LoggingService) CodeVerifyFragment.this.getService("logging");
                    Object[] objArr = new Object[8];
                    objArr[0] = "email";
                    objArr[1] = CodeVerifyFragment.this.getEmail();
                    objArr[2] = "code";
                    objArr[3] = Integer.valueOf(i10);
                    objArr[4] = "reason";
                    objArr[5] = i10 == 0 ? "NetworkError" : "InvalidVerificationCode";
                    objArr[6] = AccountNotice.LEVEL_MESSAGE;
                    objArr[7] = message;
                    loggingService.lambda$logEvent$0("AccountError", objArr);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull ApiResponse resp) throws Exception {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(resp, "resp");
                CodeVerifyFragment.this.request = null;
                CodeVerifyFragment.this.lastVerifyCode = str;
                super.onFinish(req, resp);
                if (CodeVerifyFragment.this.isAdded()) {
                    CodeVerifyFragment.this.dismissProgress();
                    CodeVerifyFragment codeVerifyFragment = CodeVerifyFragment.this;
                    JsonNode jsonNodeNodePath = JacksonUtils.nodePath(json(), "validationContext");
                    kotlin.jvm.internal.t.h(jsonNodeNodePath, "null cannot be cast to non-null type com.fasterxml.jackson.databind.node.ObjectNode");
                    codeVerifyFragment.validationContext = (ObjectNode) jsonNodeNodePath;
                    ((CodeVerifyBaseFragment) CodeVerifyFragment.this).codeEditView.isError(false);
                    FragmentActivity activity = CodeVerifyFragment.this.getActivity();
                    LoginActivity loginActivity = activity instanceof LoginActivity ? (LoginActivity) activity : null;
                    if (loginActivity != null) {
                        loginActivity.statEmailVerificationSkipped = Boolean.FALSE;
                    }
                    VerifyAccountType verifyAccountType = CodeVerifyFragment.this.getVerifyAccountType();
                    if (verifyAccountType instanceof ResetPassVerifyAccount) {
                        CodeVerifyFragment.this.checkResetPassword(str);
                        return;
                    }
                    if (verifyAccountType instanceof VerifyNewIdentityVerifyAccount) {
                        CodeVerifyFragment.this.verifyNewEmail(str);
                    } else if ((verifyAccountType instanceof AddIdentityVerifyAccount) || (verifyAccountType instanceof UpdateIdentityVerifyAccount)) {
                        CodeVerifyFragment.this.setIdentity(str);
                    } else {
                        CodeVerifyFragment.this.goToSetPassword();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void verifyNewEmail(String str) {
        updateIndicatorViewStatus(2);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/activate-email").param(a0.a.o, accountService.getDeviceId());
        builderParam.param("level", 1);
        String email = getEmail();
        if (email == null || !(!t.z(email))) {
            String phone = getPhone();
            if (phone != null && (!t.z(phone))) {
                builderParam.param("type", 8);
                builderParam.param("identity", getPhone());
            }
        } else {
            builderParam.param("type", 1);
            builderParam.param("identity", getEmail());
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("code", str);
        l0 l0Var = l0.INSTANCE;
        builderParam.param("data", objectNodeCreateObjectNode);
        ApiRequest apiRequestBuild = builderParam.build();
        setIsRequesting(true);
        showProgress();
        apiService.exec(apiRequestBuild, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.CodeVerifyFragment.verifyNewEmail.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                CodeVerifyFragment.this.dismissProgress();
                NVToast.makeText(CodeVerifyFragment.this.getContext(), message, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull ApiResponse resp) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(resp, "resp");
                CodeVerifyFragment.this.dismissProgress();
                CodeVerifyFragment.this.relogin();
            }
        });
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public int layoutId() {
        return R.layout.fragment_code_verify;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCheckLevel() {
        return ((Number) this.checkLevel$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getEmail() {
        return (String) this.email$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IdentityType getIdentityToVerifyType() {
        return (IdentityType) this.identityToVerifyType$delegate.getValue();
    }

    private final String getOldCode() {
        return (String) this.oldCode$delegate.getValue();
    }

    private final String getOldIdentity() {
        return (String) this.oldIdentity$delegate.getValue();
    }

    private final int getOldIdentityType() {
        return ((Number) this.oldIdentityType$delegate.getValue()).intValue();
    }

    private final String getOldPassword() {
        return (String) this.oldPassword$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getPhone() {
        return (String) this.phone$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VerifyAccountType getVerifyAccountType() {
        return (VerifyAccountType) this.verifyAccountType$delegate.getValue();
    }

    private final void goToSetIdentity(String str, IdentityType identityType) {
        Fragment setPhoneNumberFragment;
        String phone;
        int i10;
        try {
            FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            if (identityType instanceof EmailIdentity) {
                setPhoneNumberFragment = new SetEmailFragment();
            } else {
                if (!(identityType instanceof PhoneIdentity)) {
                    throw new s();
                }
                setPhoneNumberFragment = new SetPhoneNumberFragment();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("verify_type", VerifyAccountTypeKt.getIntValue(getVerifyAccountType()));
            bundle.putInt("set_identity_type", getIntParam("set_identity_type"));
            IdentityType identityType2 = VerifyAccountTypeKt.identityType(getIntParam(KEY_IDENTITY_TO_VERIFY_TYPE));
            if (identityType2 instanceof EmailIdentity) {
                phone = getEmail();
            } else {
                if (!(identityType2 instanceof PhoneIdentity)) {
                    throw new s();
                }
                phone = getPhone();
            }
            bundle.putString("old_identity", phone);
            bundle.putString("old_password", getOldPassword());
            IdentityType identityType3 = VerifyAccountTypeKt.identityType(getIntParam(KEY_IDENTITY_TO_VERIFY_TYPE));
            if (identityType3 instanceof EmailIdentity) {
                i10 = 1;
            } else {
                if (!(identityType3 instanceof PhoneIdentity)) {
                    throw new s();
                }
                i10 = 8;
            }
            bundle.putInt("type", i10);
            bundle.putString("old_code", str);
            setPhoneNumberFragment.setArguments(bundle);
            Integer containerId = getContainerId();
            kotlin.jvm.internal.t.i(containerId, "getContainerId(...)");
            fragmentTransactionQ.v(containerId.intValue(), setPhoneNumberFragment, "set_email").h(null).k();
        } catch (IllegalStateException e) {
            String localizedMessage = e.getLocalizedMessage();
            kotlin.jvm.internal.t.g(localizedMessage);
            Log.e(localizedMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(CodeVerifyFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.pageEnter).area("Next").extraParam("isAuto", Boolean.FALSE).send();
        String str = this$0.lastVerifyCode;
        kotlin.jvm.internal.t.g(str);
        this$0.verifyEmailCode(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void relogin$lambda$28(CodeVerifyFragment this$0, User user) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.goToCompletedScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSecret(String str) throws Throwable {
        AccountService accountService = (AccountService) getService("account");
        AccountKeychain keychain = accountService.getKeychain();
        if (keychain == null || TextUtils.isEmpty(keychain.uid)) {
            return;
        }
        accountService.setKeychain(keychain.uid, keychain.email, str);
        relogin();
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void onCodeFinished(@Nullable String str) {
        Button button = this.nextView;
        if (button == null) {
            kotlin.jvm.internal.t.B("nextView");
            button = null;
        }
        button.setEnabled(true);
        if (this.isVerified || str == null) {
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Next").extraParam("isAuto", Boolean.TRUE).send();
        verifyEmailCode(str);
        this.isVerified = true;
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        if (this.request != null) {
            ((ApiService) getService("api")).abort(this.request);
            this.request = null;
        }
        super.onDestroy();
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        kotlin.jvm.internal.t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        ObjectNode objectNode = this.validationContext;
        if (objectNode != null) {
            outState.putString("validationContext", objectNode.toString());
        }
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.description);
        kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById).setText(getIdentityToVerifyType() instanceof PhoneIdentity ? R.string.code_sent_to_phone : R.string.code_sent_to_email);
        View viewFindViewById2 = view.findViewById(R.id.email);
        kotlin.jvm.internal.t.h(viewFindViewById2, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById2).setText(getIdentityToVerifyType() instanceof PhoneIdentity ? getPhone() : getEmail());
        View viewFindViewById3 = view.findViewById(R.id.next);
        kotlin.jvm.internal.t.i(viewFindViewById3, "findViewById(...)");
        Button button = (Button) viewFindViewById3;
        this.nextView = button;
        Button button2 = null;
        if (button == null) {
            kotlin.jvm.internal.t.B("nextView");
            button = null;
        }
        button.setEnabled(false);
        Button button3 = this.nextView;
        if (button3 == null) {
            kotlin.jvm.internal.t.B("nextView");
            button3 = null;
        }
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.verifyaccount.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CodeVerifyFragment.onViewCreated$lambda$4(this.f1770a, view2);
            }
        });
        Button button4 = this.nextView;
        if (button4 == null) {
            kotlin.jvm.internal.t.B("nextView");
        } else {
            button2 = button4;
        }
        button2.setText(VerifyAccountTypeKt.getNextBtnTitle(getVerifyAccountType()));
        View viewFindViewById4 = view.findViewById(R.id.title);
        kotlin.jvm.internal.t.h(viewFindViewById4, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById4).setText(VerifyAccountTypeKt.getPageTitle(getVerifyAccountType()));
        View viewFindViewById5 = view.findViewById(R.id.code_edit);
        kotlin.jvm.internal.t.h(viewFindViewById5, "null cannot be cast to non-null type com.narvii.widget.CodeEditView");
        ((CodeEditView) viewFindViewById5).setNumericCodeType(!(getVerifyAccountType() instanceof ResetPassVerifyAccount) || (getIdentityToVerifyType() instanceof PhoneIdentity));
    }

    private final void goToCompletedScreen() {
        if (!isAdded()) {
            return;
        }
        SuccessfullyCompletedFragment successfullyCompletedFragment = new SuccessfullyCompletedFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("verify_type", VerifyAccountTypeKt.getIntValue(getVerifyAccountType()));
        bundle.putInt("set_identity_type", getIntParam("set_identity_type"));
        successfullyCompletedFragment.setArguments(bundle);
        goToSuccessPage(successfullyCompletedFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void goToEmailVerify() {
        try {
            FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
            kotlin.jvm.internal.t.i(fragmentTransactionQ, "beginTransaction(...)");
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            EmailResetPasswordFragment emailResetPasswordFragment = new EmailResetPasswordFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(KEY_CHECK_LEVEL, 2);
            bundle.putString("old_identity", getPhone());
            bundle.putInt("type", 8);
            bundle.putString("old_code", this.lastVerifyCode);
            emailResetPasswordFragment.setArguments(bundle);
            Integer containerId = getContainerId();
            if (containerId != null) {
                fragmentTransactionQ.v(containerId.intValue(), emailResetPasswordFragment, "emailVerify").h(null).k();
            } else {
                fragmentTransactionQ.v(R.id.frame, emailResetPasswordFragment, "emailVerify").h(null).k();
            }
        } catch (IllegalStateException e) {
            Log.w(e.getLocalizedMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void goToMobileVerify() {
        try {
            FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
            kotlin.jvm.internal.t.i(fragmentTransactionQ, "beginTransaction(...)");
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            MobileResetPasswordFragment mobileResetPasswordFragment = new MobileResetPasswordFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(KEY_CHECK_LEVEL, 2);
            bundle.putString("old_identity", getEmail());
            bundle.putInt("type", 1);
            bundle.putString("old_code", this.lastVerifyCode);
            mobileResetPasswordFragment.setArguments(bundle);
            Integer containerId = getContainerId();
            if (containerId != null) {
                fragmentTransactionQ.v(containerId.intValue(), mobileResetPasswordFragment, "phoneNumberReset").h(null).k();
            } else {
                fragmentTransactionQ.v(R.id.frame, mobileResetPasswordFragment, "phoneNumberReset").h(null).k();
            }
        } catch (IllegalStateException e) {
            Log.w(e.getLocalizedMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void goToSetPassword() {
        String strValueOf;
        if (!isAdded()) {
            return;
        }
        SetPasswordFragment setPasswordFragment = new SetPasswordFragment();
        Bundle bundle = new Bundle();
        IdentityType identityToVerifyType = getIdentityToVerifyType();
        if (identityToVerifyType instanceof EmailIdentity) {
            bundle.putString("email", getEmail());
        } else if (identityToVerifyType instanceof PhoneIdentity) {
            bundle.putString("phone", getPhone());
        }
        bundle.putInt("verify_type", VerifyAccountTypeKt.getIntValue(getVerifyAccountType()));
        bundle.putInt("set_identity_type", getIntParam("set_identity_type"));
        bundle.putString("old_identity", getOldIdentity());
        bundle.putInt("type", getOldIdentityType());
        bundle.putString("old_code", getOldCode());
        bundle.putString("old_password", getOldPassword());
        bundle.putString(SetPasswordFragment.KEY_LAST_VERIFY_CODE, this.lastVerifyCode);
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
        bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
        bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
        ObjectNode objectNode = this.validationContext;
        if (objectNode == null) {
            strValueOf = null;
        } else {
            strValueOf = String.valueOf(objectNode);
        }
        bundle.putString("validationContext", strValueOf);
        setPasswordFragment.setArguments(bundle);
        goToSetPasswordPage(setPasswordFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void relogin() {
        if (getActivity() != null) {
            new ProgressDialog(getActivity()).show();
        }
        ((AccountService) getService("account")).relogin(new Callback() { // from class: com.narvii.account.verifyaccount.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                CodeVerifyFragment.relogin$lambda$28(this.f1769a, (User) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setIdentity(String str) {
        if (getCheckLevel() == 1) {
            goToSetIdentity(str, VerifyAccountTypeKt.identityType(getIntParam("set_identity_type")));
        } else if (getCheckLevel() == 2) {
            requestUpdateIdentity(str, VerifyAccountTypeKt.identityType(getIntParam("set_identity_type")));
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return VerifyAccountTypeKt.getNvFragmentPageName(getVerifyAccountType()) + "VerifyPage";
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    protected long getVerifyTime() {
        IdentityType identityToVerifyType = getIdentityToVerifyType();
        if (identityToVerifyType instanceof EmailIdentity) {
            String email = getEmail();
            if (email == null) {
                return 0L;
            }
            return this.verifyCodeHelper.getEmailVerifyTime(email);
        }
        if (identityToVerifyType instanceof PhoneIdentity) {
            String phone = getPhone();
            if (phone == null) {
                return 0L;
            }
            return this.verifyCodeHelper.getPhoneVerifyTime(phone);
        }
        throw new s();
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void onCountDownTimeChange(int i10) {
        if (isAdded() && getActivity() != null) {
            this.btnResend.setTextColor(ContextCompat.getColor(getContext(), R.color.account_signup_clickable_text_gray));
            String strValueOf = String.valueOf(i10);
            String string = getString(R.string.get_a_new_code_in, Integer.valueOf(i10));
            kotlin.jvm.internal.t.i(string, "getString(...)");
            if (i10 == 1) {
                string = getString(R.string.get_a_new_code_in_single);
                kotlin.jvm.internal.t.i(string, "getString(...)");
                strValueOf = "1";
            }
            int iC0 = u.c0(string, strValueOf, 0, false, 6, null);
            if (iC0 != -1) {
                SpannableString spannableString = new SpannableString(string);
                spannableString.setSpan(new StyleSpan(1), iC0, strValueOf.length() + iC0, 33);
                this.btnResend.setText(spannableString);
                return;
            }
            this.btnResend.setText(string);
        }
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void onCountDownTimeFinished() {
        super.onCountDownTimeFinished();
        this.btnResend.setText(getString(R.string.get_a_new_code));
        this.btnResend.setTextColor(ContextCompat.getColor(getContext(), R.color.selector_text_create_amino_green));
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment, com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        LoginActivity loginActivity;
        super.onCreate(bundle);
        if (bundle != null) {
            String string = bundle.getString("validationContext");
            if (string != null) {
                this.validationContext = JacksonUtils.createObjectNode(string);
                return;
            }
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof LoginActivity) {
            loginActivity = (LoginActivity) activity;
        } else {
            loginActivity = null;
        }
        if (loginActivity != null) {
            loginActivity.statMaxLoginStep = 0;
            loginActivity.statMaxSignupSetp = 10;
            loginActivity.statEmailVerificationSkipped = Boolean.FALSE;
        }
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void onResendCodeClicked() {
        int i10;
        String email;
        super.onResendCodeClicked();
        if (getIdentityToVerifyType() instanceof PhoneIdentity) {
            i10 = 8;
        } else {
            i10 = 1;
        }
        if (getIdentityToVerifyType() instanceof PhoneIdentity) {
            email = getPhone();
        } else {
            email = getEmail();
        }
        showProgress();
        requestSecurityCode(i10, email, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.CodeVerifyFragment.onResendCodeClicked.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i11, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                super.onFail(req, i11, list, message, apiResponse, t5);
                if (CodeVerifyFragment.this.isAdded()) {
                    CodeVerifyFragment.this.dismissProgress();
                    NVToast.makeText(CodeVerifyFragment.this.getContext(), message, 1).show();
                    ((CodeVerifyBaseFragment) CodeVerifyFragment.this).btnResend.setTextColor(ContextCompat.getColor(CodeVerifyFragment.this.getContext(), R.color.selector_text_create_amino_green));
                    ((CodeVerifyBaseFragment) CodeVerifyFragment.this).btnResend.setClickable(false);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) throws Exception {
                kotlin.jvm.internal.t.j(req, "req");
                super.onFinish(req, apiResponse);
                if (CodeVerifyFragment.this.isAdded()) {
                    CodeVerifyFragment.this.dismissProgress();
                    if (CodeVerifyFragment.this.getIdentityToVerifyType() instanceof PhoneIdentity) {
                        String phone = CodeVerifyFragment.this.getPhone();
                        if (phone != null) {
                            ((CodeVerifyBaseFragment) CodeVerifyFragment.this).verifyCodeHelper.updatePhoneVerifyTime(phone);
                        }
                    } else {
                        String email2 = CodeVerifyFragment.this.getEmail();
                        if (email2 != null) {
                            ((CodeVerifyBaseFragment) CodeVerifyFragment.this).verifyCodeHelper.updateEmailVerifyTime(email2);
                        }
                    }
                    CodeVerifyFragment.this.resetTimerCount();
                    ((CodeVerifyBaseFragment) CodeVerifyFragment.this).codeEditView.clearCode();
                    ((CodeVerifyBaseFragment) CodeVerifyFragment.this).codeEditView.isError(false);
                    ((CodeVerifyBaseFragment) CodeVerifyFragment.this).codeVerificationError.setVisibility(8);
                }
            }
        });
    }

    @Override // com.narvii.account.CodeVerifyBaseFragment
    public void updateCodeErrorMessage(boolean z6) {
        super.updateCodeErrorMessage(z6);
        if (!z6) {
            Button button = this.nextView;
            if (button == null) {
                kotlin.jvm.internal.t.B("nextView");
                button = null;
            }
            button.setEnabled(false);
        }
        this.isVerified = false;
    }
}
