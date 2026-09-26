package com.narvii.account.resetpassword;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.AccountBaseFragment;
import com.narvii.account.AccountService;
import com.narvii.account.AccountUtils;
import com.narvii.account.verifyaccount.CodeVerifyFragment;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import com.narvii.amino.master.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Log;
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
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes5.dex */
public final class EmailResetPasswordFragment extends AccountBaseFragment implements TextWatcher, TextView.OnEditorActionListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_OLD_CODE = "old_code";

    @NotNull
    public static final String KEY_OLD_IDENTITY = "old_identity";

    @NotNull
    public static final String KEY_OLD_IDENTITY_TYPE = "type";

    @NotNull
    public static final String KEY_OLD_PASSWORD = "old_password";

    @Nullable
    private AutoCompleteEmailView edtEmail;

    @Nullable
    private TextInputLayout emailInputLayout;

    @Nullable
    private String lastRequsetEmail;

    @Nullable
    private ApiRequest request;
    public VerifyCodeSharedPrefsHelper verifyCodeHelper;

    @Nullable
    private View verifyView;

    @NotNull
    private final m checkLevel$delegate = o.a(new EmailResetPasswordFragment$checkLevel$2(this));

    @NotNull
    private final m oldIdentity$delegate = o.a(new EmailResetPasswordFragment$oldIdentity$2(this));

    @NotNull
    private final m oldIdentityType$delegate = o.a(new EmailResetPasswordFragment$oldIdentityType$2(this));

    @NotNull
    private final m oldCode$delegate = o.a(new EmailResetPasswordFragment$oldCode$2(this));

    @NotNull
    private final m oldPassword$delegate = o.a(new EmailResetPasswordFragment$oldPassword$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "ResetPasswordEnterYourEmail";
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    public final void setVerifyCodeHelper(@NotNull VerifyCodeSharedPrefsHelper verifyCodeSharedPrefsHelper) {
        t.j(verifyCodeSharedPrefsHelper, "<set-?>");
        this.verifyCodeHelper = verifyCodeSharedPrefsHelper;
    }

    private final int getCheckLevel() {
        return ((Number) this.checkLevel$delegate.getValue()).intValue();
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
    public final void goNext() {
        if (isAdded()) {
            AutoCompleteEmailView autoCompleteEmailView = this.edtEmail;
            this.lastRequsetEmail = String.valueOf(autoCompleteEmailView != null ? autoCompleteEmailView.getText() : null);
            try {
                FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
                fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                CodeVerifyFragment codeVerifyFragment = new CodeVerifyFragment();
                Bundle bundle = new Bundle();
                bundle.putInt(CodeVerifyFragment.KEY_IDENTITY_TO_VERIFY_TYPE, 2);
                bundle.putString("email", this.lastRequsetEmail);
                bundle.putInt("verify_type", 1);
                bundle.putInt(CodeVerifyFragment.KEY_CHECK_LEVEL, getCheckLevel());
                bundle.putString("old_identity", getOldIdentity());
                bundle.putInt("type", getOldIdentityType());
                bundle.putString("old_code", getOldCode());
                bundle.putString("old_password", getOldPassword());
                bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
                bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
                bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
                bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
                bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
                codeVerifyFragment.setArguments(bundle);
                Integer containerId = getContainerId();
                if (containerId != null) {
                    t.g(containerId);
                    fragmentTransactionQ.u(containerId.intValue(), codeVerifyFragment).h(null).k();
                }
            } catch (IllegalStateException e) {
                Log.e(e.getLocalizedMessage());
            }
        }
    }

    private final boolean isEmailValid() {
        AccountUtils accountUtils = new AccountUtils(getContext());
        AutoCompleteEmailView autoCompleteEmailView = this.edtEmail;
        t.g(autoCompleteEmailView);
        if (accountUtils.isValidEmail(autoCompleteEmailView.getText().toString())) {
            return true;
        }
        TextInputLayout textInputLayout = this.emailInputLayout;
        if (textInputLayout == null) {
            return false;
        }
        textInputLayout.updateStatus(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(EmailResetPasswordFragment this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.pageEnter).area("VerifyEmail").send();
        AutoCompleteEmailView autoCompleteEmailView = this$0.edtEmail;
        this$0.checkLegality(String.valueOf(autoCompleteEmailView != null ? autoCompleteEmailView.getText() : null), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(EmailResetPasswordFragment this$0) {
        t.j(this$0, "this$0");
        SoftKeyboard.showSoftKeyboard(this$0.edtEmail);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showEmailConfirmDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setTitle(R.string.is_this_correct);
        AutoCompleteEmailView autoCompleteEmailView = this.edtEmail;
        t.g(autoCompleteEmailView);
        aCMAlertDialog.setMessage(autoCompleteEmailView.getText().toString());
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.setCanceledOnTouchOutside(false);
        aCMAlertDialog.addButton(R.string.edit, null);
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.account.resetpassword.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EmailResetPasswordFragment.showEmailConfirmDialog$lambda$6(this.f1744a, view);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showEmailConfirmDialog$lambda$6(EmailResetPasswordFragment this$0, View view) {
        t.j(this$0, "this$0");
        AutoCompleteEmailView autoCompleteEmailView = this$0.edtEmail;
        t.g(autoCompleteEmailView);
        this$0.requestEmailCode(autoCompleteEmailView.getText().toString());
    }

    private final void updateVerifyView() {
        AccountUtils accountUtils = new AccountUtils(getContext());
        View view = this.verifyView;
        t.g(view);
        AutoCompleteEmailView autoCompleteEmailView = this.edtEmail;
        t.g(autoCompleteEmailView);
        view.setEnabled(accountUtils.isValidEmail(autoCompleteEmailView.getText().toString()));
    }

    @NotNull
    public final VerifyCodeSharedPrefsHelper getVerifyCodeHelper() {
        VerifyCodeSharedPrefsHelper verifyCodeSharedPrefsHelper = this.verifyCodeHelper;
        if (verifyCodeSharedPrefsHelper != null) {
            return verifyCodeSharedPrefsHelper;
        }
        t.B("verifyCodeHelper");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_email_reset_password, viewGroup, false);
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
    public boolean onEditorAction(@Nullable TextView textView, int i10, @Nullable KeyEvent keyEvent) {
        if (this.request == null) {
            if (i10 == 6) {
                AutoCompleteEmailView autoCompleteEmailView = this.edtEmail;
                checkLegality(String.valueOf(autoCompleteEmailView != null ? autoCompleteEmailView.getText() : null), null);
            }
            l0 l0Var = l0.INSTANCE;
        }
        if (this.request != null || i10 != 6) {
            return false;
        }
        AutoCompleteEmailView autoCompleteEmailView2 = this.edtEmail;
        checkLegality(String.valueOf(autoCompleteEmailView2 != null ? autoCompleteEmailView2.getText() : null), null);
        return true;
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        AutoCompleteEmailView autoCompleteEmailView = (AutoCompleteEmailView) view.findViewById(R.id.edit);
        this.edtEmail = autoCompleteEmailView;
        if (autoCompleteEmailView != null) {
            autoCompleteEmailView.dismissDropDown();
        }
        AutoCompleteEmailView autoCompleteEmailView2 = this.edtEmail;
        if (autoCompleteEmailView2 != null) {
            autoCompleteEmailView2.addTextChangedListener(this);
        }
        AutoCompleteEmailView autoCompleteEmailView3 = this.edtEmail;
        if (autoCompleteEmailView3 != null) {
            autoCompleteEmailView3.setOnEditorActionListener(this);
        }
        View viewFindViewById = view.findViewById(R.id.verify_email);
        this.verifyView = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.resetpassword.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    EmailResetPasswordFragment.onViewCreated$lambda$0(this.f1745a, view2);
                }
            });
        }
        View viewFindViewById2 = view.findViewById(R.id.input_layout);
        t.h(viewFindViewById2, "null cannot be cast to non-null type com.narvii.widget.TextInputLayout");
        this.emailInputLayout = (TextInputLayout) viewFindViewById2;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.resetpassword.c
            @Override // java.lang.Runnable
            public final void run() {
                EmailResetPasswordFragment.onViewCreated$lambda$1(this.f1746a);
            }
        }, 0L);
    }

    private final void checkLegality(String str, String str2) {
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
        apiService.exec(this.request, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.resetpassword.EmailResetPasswordFragment.checkLegality.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                t.j(req, "req");
                t.j(message, "message");
                t.j(t5, "t");
                EmailResetPasswordFragment.this.dismissProgress();
                AutoCompleteEmailView autoCompleteEmailView = EmailResetPasswordFragment.this.edtEmail;
                t.g(autoCompleteEmailView);
                autoCompleteEmailView.requestFocus();
                EmailResetPasswordFragment.this.request = null;
                if (i10 == 215 || i10 == 246) {
                    EmailResetPasswordFragment.this.showEmailConfirmDialog();
                } else {
                    EmailResetPasswordFragment.this.finishWithResult(false, i10, message, req);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) {
                t.j(req, "req");
                EmailResetPasswordFragment.this.dismissProgress();
                EmailResetPasswordFragment.this.request = null;
                AlertDialog.Builder builder = new AlertDialog.Builder(EmailResetPasswordFragment.this.getContext());
                builder.setMessage(R.string.account_not_exist);
                builder.setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                builder.show();
            }
        });
    }

    private final void requestEmailCode(final String str) {
        showProgress();
        requestSecurityCode(1, str, 2, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.resetpassword.EmailResetPasswordFragment.requestEmailCode.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                t.j(req, "req");
                t.j(message, "message");
                t.j(t5, "t");
                super.onFail(req, i10, list, message, apiResponse, t5);
                EmailResetPasswordFragment.this.dismissProgress();
                NVToast.makeText(EmailResetPasswordFragment.this.getContext(), message, 1).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) throws Exception {
                t.j(req, "req");
                super.onFinish(req, apiResponse);
                EmailResetPasswordFragment.this.getVerifyCodeHelper().updateEmailVerifyTime(str);
                EmailResetPasswordFragment.this.dismissProgress();
                EmailResetPasswordFragment.this.goNext();
            }
        });
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(@Nullable Editable editable) {
        updateVerifyView();
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Context context = getContext();
        t.i(context, "getContext(...)");
        setVerifyCodeHelper(new VerifyCodeSharedPrefsHelper(context));
    }
}
