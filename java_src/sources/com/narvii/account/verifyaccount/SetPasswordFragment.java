package com.narvii.account.verifyaccount;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.autofill.HintConstants;
import androidx.fragment.app.FragmentActivity;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountBaseFragment;
import com.narvii.account.AccountKeychain;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.account.SignUpAddProfileFragment;
import com.narvii.account.SuccessfullyCompletedFragment;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.text.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes5.dex */
public final class SetPasswordFragment extends AccountBaseFragment implements FragmentOnBackListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_IDENTITY_EMAIL = "email";

    @NotNull
    public static final String KEY_IDENTITY_PHONE = "phone";

    @NotNull
    public static final String KEY_LAST_VERIFY_CODE = "last_verify_code";

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
    private EditText confirmPassEdit;
    private Button nextView;
    private EditText passEdit;

    @Nullable
    private String password;

    @NotNull
    private final m verifyAccountType$delegate = o.a(new SetPasswordFragment$verifyAccountType$2(this));

    @NotNull
    private final m email$delegate = o.a(new SetPasswordFragment$email$2(this));

    @NotNull
    private final m phone$delegate = o.a(new SetPasswordFragment$phone$2(this));

    @NotNull
    private final m oldIdentity$delegate = o.a(new SetPasswordFragment$oldIdentity$2(this));

    @NotNull
    private final m oldIdentityType$delegate = o.a(new SetPasswordFragment$oldIdentityType$2(this));

    @NotNull
    private final m oldCode$delegate = o.a(new SetPasswordFragment$oldCode$2(this));

    @NotNull
    private final m oldPassword$delegate = o.a(new SetPasswordFragment$oldPassword$2(this));

    @NotNull
    private final m emailValidationNode$delegate = o.a(new SetPasswordFragment$emailValidationNode$2(this));

    @NotNull
    private final m phoneValidationNode$delegate = o.a(new SetPasswordFragment$phoneValidationNode$2(this));

    @NotNull
    private final m oldIdentityValidationNode$delegate = o.a(new SetPasswordFragment$oldIdentityValidationNode$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private final void changePassword() {
        updateIndicatorViewStatus(2);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/change-password").param(a0.a.o, accountService.getDeviceId());
        String str = this.password;
        if (str != null && (!t.z(str))) {
            builderParam.param("updateSecret", "0 " + this.password);
        }
        String oldPassword = getOldPassword();
        if (oldPassword != null && (!t.z(oldPassword))) {
            builderParam.param("secret", "0 " + getOldPassword());
        }
        builderParam.param("validationContext", JacksonUtils.createObjectNode(getStringParam("validationContext")));
        ApiRequest apiRequestBuild = builderParam.build();
        setIsRequesting(true);
        showProgress();
        apiService.exec(apiRequestBuild, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.SetPasswordFragment.changePassword.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                SetPasswordFragment.this.dismissProgress();
                NVToast.makeText(SetPasswordFragment.this.getContext(), message, 0).show();
                LoggingService loggingService = (LoggingService) SetPasswordFragment.this.getService("logging");
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
            public void onFinish(@NotNull ApiRequest req, @NotNull ApiResponse resp) throws Exception {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(resp, "resp");
                SetPasswordFragment.this.dismissProgress();
                SetPasswordFragment.this.updateSecret(JacksonUtils.nodeString(json(), "secret"));
            }
        });
    }

    private final void registerCheck() {
        updateIndicatorViewStatus(2);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/register-check").param(a0.a.o, accountService.getDeviceId());
        if (!TextUtils.isEmpty(this.password)) {
            builderParam.param("secret", "0 " + this.password);
        }
        ApiRequest apiRequestBuild = builderParam.build();
        setIsRequesting(true);
        showProgress();
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.SetPasswordFragment.registerCheck.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                SetPasswordFragment.this.dismissProgress();
                NVToast.makeText(SetPasswordFragment.this.getContext(), message, 0).show();
                LoggingService loggingService = (LoggingService) SetPasswordFragment.this.getService("logging");
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
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) {
                kotlin.jvm.internal.t.j(req, "req");
                SetPasswordFragment.this.dismissProgress();
                SetPasswordFragment.this.goToNextSignupStep();
            }
        });
    }

    private final void resetPassword() {
        updateIndicatorViewStatus(2);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/reset-password").param(a0.a.o, accountService.getDeviceId());
        String str = this.password;
        if (str != null && (!t.z(str))) {
            builderParam.param("updateSecret", "0 " + this.password);
        }
        String email = getEmail();
        if (email == null || !(!t.z(email))) {
            String phone = getPhone();
            if (phone != null && (!t.z(phone))) {
                builderParam.param("phoneNumberValidationContext", getPhoneValidationNode());
                builderParam.param("emailValidationContext", getOldIdentityValidationNode());
            }
        } else {
            builderParam.param("emailValidationContext", getEmailValidationNode());
            builderParam.param("phoneNumberValidationContext", getOldIdentityValidationNode());
        }
        ApiRequest apiRequestBuild = builderParam.build();
        setIsRequesting(true);
        showProgress();
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.SetPasswordFragment.resetPassword.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                SetPasswordFragment.this.dismissProgress();
                NVToast.makeText(SetPasswordFragment.this.getContext(), message, 0).show();
                LoggingService loggingService = (LoggingService) SetPasswordFragment.this.getService("logging");
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
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) {
                kotlin.jvm.internal.t.j(req, "req");
                SetPasswordFragment.this.dismissProgress();
                SetPasswordFragment.this.goToCompletedScreen();
            }
        });
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getEmail() {
        return (String) this.email$delegate.getValue();
    }

    private final ObjectNode getEmailValidationNode() {
        return (ObjectNode) this.emailValidationNode$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getOldCode() {
        return (String) this.oldCode$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getOldIdentity() {
        return (String) this.oldIdentity$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getOldIdentityType() {
        return ((Number) this.oldIdentityType$delegate.getValue()).intValue();
    }

    private final ObjectNode getOldIdentityValidationNode() {
        return (ObjectNode) this.oldIdentityValidationNode$delegate.getValue();
    }

    private final String getOldPassword() {
        return (String) this.oldPassword$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getPhone() {
        return (String) this.phone$delegate.getValue();
    }

    private final ObjectNode getPhoneValidationNode() {
        return (ObjectNode) this.phoneValidationNode$delegate.getValue();
    }

    private final VerifyAccountType getVerifyAccountType() {
        return (VerifyAccountType) this.verifyAccountType$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(SetPasswordFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        EditText editText = this$0.passEdit;
        if (editText == null) {
            kotlin.jvm.internal.t.B("passEdit");
            editText = null;
        }
        SoftKeyboard.showSoftKeyboard(editText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(SetPasswordFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.pageEnter).area("Next").send();
        EditText editText = this$0.passEdit;
        if (editText == null) {
            kotlin.jvm.internal.t.B("passEdit");
            editText = null;
        }
        this$0.password = editText.getText().toString();
        VerifyAccountType verifyAccountType = this$0.getVerifyAccountType();
        if (verifyAccountType instanceof SignupVerifyAccount) {
            this$0.registerCheck();
        } else if (verifyAccountType instanceof ChangePassVerifyAccount) {
            this$0.changePassword();
        } else {
            this$0.resetPassword();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void relogin$lambda$4(SetPasswordFragment this$0, User user) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.goToCompletedScreen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateNextView() {
        EditText editText = this.passEdit;
        Button button = null;
        if (editText == null) {
            kotlin.jvm.internal.t.B("passEdit");
            editText = null;
        }
        String string = editText.getText().toString();
        EditText editText2 = this.confirmPassEdit;
        if (editText2 == null) {
            kotlin.jvm.internal.t.B("confirmPassEdit");
            editText2 = null;
        }
        String string2 = editText2.getText().toString();
        Button button2 = this.nextView;
        if (button2 == null) {
            kotlin.jvm.internal.t.B("nextView");
        } else {
            button = button2;
        }
        button.setEnabled(string.length() >= 6 && kotlin.jvm.internal.t.e(string, string2));
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_set_password, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Boolean bool;
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        FragmentActivity activity = getActivity();
        Button button = null;
        LoginActivity loginActivity = activity instanceof LoginActivity ? (LoginActivity) activity : null;
        boolean z6 = (loginActivity == null || (bool = loginActivity.statEmailVerificationSkipped) == null || bool.booleanValue()) ? false : true;
        View viewFindViewById = view.findViewById(R.id.title);
        kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById).setText(VerifyAccountTypeKt.getPageTitle(getVerifyAccountType()));
        View viewFindViewById2 = view.findViewById(R.id.title_identified);
        kotlin.jvm.internal.t.h(viewFindViewById2, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById2).setVisibility(z6 ? 0 : 8);
        View viewFindViewById3 = view.findViewById(R.id.confirm_password_layout).findViewById(R.id.password_hint);
        kotlin.jvm.internal.t.h(viewFindViewById3, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById3).setText(R.string.account_password_confirm);
        View viewFindViewById4 = view.findViewById(R.id.password_layout).findViewById(R.id.edit);
        kotlin.jvm.internal.t.i(viewFindViewById4, "findViewById(...)");
        this.passEdit = (EditText) viewFindViewById4;
        View viewFindViewById5 = view.findViewById(R.id.confirm_password_layout).findViewById(R.id.edit);
        kotlin.jvm.internal.t.i(viewFindViewById5, "findViewById(...)");
        this.confirmPassEdit = (EditText) viewFindViewById5;
        View viewFindViewById6 = view.findViewById(R.id.next);
        kotlin.jvm.internal.t.i(viewFindViewById6, "findViewById(...)");
        this.nextView = (Button) viewFindViewById6;
        ((TextView) view.findViewById(R.id.subtitle)).setText(getVerifyAccountType() instanceof ChangePassVerifyAccount ? R.string.choose_new_password : R.string.set_a_password);
        EditText editText = this.passEdit;
        if (editText == null) {
            kotlin.jvm.internal.t.B("passEdit");
            editText = null;
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.verifyaccount.SetPasswordFragment.onViewCreated.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                SetPasswordFragment.this.updateNextView();
            }
        });
        EditText editText2 = this.confirmPassEdit;
        if (editText2 == null) {
            kotlin.jvm.internal.t.B("confirmPassEdit");
            editText2 = null;
        }
        editText2.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.verifyaccount.SetPasswordFragment.onViewCreated.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                SetPasswordFragment.this.updateNextView();
            }
        });
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.verifyaccount.g
            @Override // java.lang.Runnable
            public final void run() {
                SetPasswordFragment.onViewCreated$lambda$2(this.f1775a);
            }
        }, 100L);
        Button button2 = this.nextView;
        if (button2 == null) {
            kotlin.jvm.internal.t.B("nextView");
            button2 = null;
        }
        button2.setText(VerifyAccountTypeKt.getNextBtnTitle(getVerifyAccountType()));
        Button button3 = this.nextView;
        if (button3 == null) {
            kotlin.jvm.internal.t.B("nextView");
        } else {
            button = button3;
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.verifyaccount.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SetPasswordFragment.onViewCreated$lambda$3(this.f1776a, view2);
            }
        });
    }

    public final void updateSecret(@Nullable String str) throws Throwable {
        AccountService accountService = (AccountService) getService("account");
        AccountKeychain keychain = accountService.getKeychain();
        if (keychain == null || TextUtils.isEmpty(keychain.uid)) {
            return;
        }
        accountService.setKeychain(keychain.uid, keychain.email, str);
        relogin();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void goToCompletedScreen() {
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
    public final void goToNextSignupStep() {
        if (!isAdded()) {
            return;
        }
        SignUpAddProfileFragment signUpAddProfileFragment = new SignUpAddProfileFragment();
        Bundle bundle = new Bundle();
        bundle.putString("email", getStringParam("email"));
        bundle.putString(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, getStringParam(HintConstants.AUTOFILL_HINT_PHONE_NUMBER));
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

    private final void relogin() {
        if (getActivity() != null) {
            new ProgressDialog(getActivity()).show();
        }
        ((AccountService) getService("account")).relogin(new Callback() { // from class: com.narvii.account.verifyaccount.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                SetPasswordFragment.relogin$lambda$4(this.f1774a, (User) obj);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return VerifyAccountTypeKt.getNvFragmentPageName(getVerifyAccountType()) + "set_password";
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean logSignUpMethod() {
        return getVerifyAccountType() instanceof SignupVerifyAccount;
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        LoginActivity loginActivity;
        super.onCreate(bundle);
        if (bundle == null) {
            FragmentActivity activity = getActivity();
            if (activity instanceof LoginActivity) {
                loginActivity = (LoginActivity) activity;
            } else {
                loginActivity = null;
            }
            if (loginActivity != null) {
                loginActivity.statMaxLoginStep = 0;
                loginActivity.statMaxSignupSetp = 20;
            }
        }
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.account.AccountSignUpIndicatorView.IndicatorSuccessFinishedListener
    public void onTotallySuccess() {
        goToNextSignupStep();
    }
}
