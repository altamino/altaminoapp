package com.narvii.account;

import ai.medialab.medialabads2.MediaLabAds;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.autofill.HintConstants;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.liveramp.LiveRampHelper;
import com.narvii.account.notice.AccountNotice;
import com.narvii.account.resetpassword.EmailResetPasswordFragment;
import com.narvii.account.restore.AccoutRestorePhoneFragment;
import com.narvii.amino.databinding.FragmentLoginBinding;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.Constants;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.kotlin.TextViewExtensionKt;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.statusbar.StatusBarUtils;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.KProperty;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class LoginFragment extends AccountBaseFragment implements FragmentOnBackListener, EventLogProfileService.EventLogProfileListener, TextWatcher {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(LoginFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;", 0))};
    public AccountUtils accountUtils;

    @Nullable
    private EventLogProfileService eventLogProfileService;
    private boolean eventProfileGot;

    @Nullable
    private PendingOnFinishLogin pendingOnFinishLogin;

    @Nullable
    private ApiRequest request;

    @Nullable
    private SharedPreferences sharedPreferences;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, LoginFragment$binding$2.INSTANCE);

    @NotNull
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.account.LoginFragment$receiver$1
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            kotlin.jvm.internal.t.j(context, "context");
            kotlin.jvm.internal.t.j(intent, "intent");
            if (kotlin.jvm.internal.t.e(AccountBaseFragment.ACTION_MOBILE_REGISTER_SWITCH_LOGIN, intent.getAction())) {
                this.this$0.switchLogin(intent, 0, 0);
            } else if (kotlin.jvm.internal.t.e(AccountBaseFragment.ACTION_MOBILE_REGISTER_SWITCH_RESTORE, intent.getAction())) {
                Intent intent2 = FragmentWrapperActivity.intent(AccoutRestorePhoneFragment.class);
                intent2.putExtra(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, intent.getStringExtra(HintConstants.AUTOFILL_HINT_PHONE_NUMBER));
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this.this$0, intent2, AccountBaseFragment.RESTORE_ACCOUNT);
            }
        }
    };

    @NotNull
    private final AccountResponseListener listener = new AccountResponseListener() { // from class: com.narvii.account.LoginFragment$listener$1
        {
            super(this.this$0);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
            String str;
            kotlin.jvm.internal.t.j(req, "req");
            kotlin.jvm.internal.t.j(message, "message");
            kotlin.jvm.internal.t.j(t5, "t");
            this.this$0.setHttpCode(t5);
            this.this$0.getBinding().login.setEnabled(this.this$0.isContentVerified());
            this.this$0.finishWithResult(false, i10, message, req);
            if (i10 == 0) {
                str = "NetworkError";
            } else if (i10 != 200) {
                str = i10 != 216 ? null : "AccountNotExist";
            } else {
                str = "WrongPassword";
            }
            ((LoggingService) this.this$0.getService("logging")).logEvent("AccountError", "email", (String) req.tag("email"), "phone", (String) req.tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER), "code", Integer.valueOf(i10), "reason", str, AccountNotice.LEVEL_MESSAGE, message);
        }

        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(@NotNull ApiRequest req, @NotNull AccountResponse resp) throws Exception {
            kotlin.jvm.internal.t.j(req, "req");
            kotlin.jvm.internal.t.j(resp, "resp");
            this.this$0.getBinding().login.setEnabled(this.this$0.isContentVerified());
            String str = (String) req.tag("email");
            if (str != null) {
                Log.i("login success with " + str);
                LiveRampHelper.setLRUserEmail(str);
            }
            String str2 = (String) req.tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER);
            if (str2 != null) {
                Log.i("login success with " + str2);
                LiveRampHelper.setLRUserPhone(str2);
            }
            MediaLabAds.Companion.getInstance().setUserId(resp.account.id());
            resp.sid.charAt(0);
            this.this$0.savePendingOnFinishLogin(req, resp);
            super.onFinish(req, resp);
            this.this$0.finishWithResult(true, 0, null);
        }
    };

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void clearResponseWhenAccountChange() {
    }

    @NotNull
    public final AccountResponseListener getListener() {
        return this.listener;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "login_options";
    }

    @NotNull
    public final BroadcastReceiver getReceiver() {
        return this.receiver;
    }

    @Nullable
    public final ApiRequest getRequest() {
        return this.request;
    }

    @Nullable
    public final SharedPreferences getSharedPreferences() {
        return this.sharedPreferences;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    public final void setAccountUtils(@NotNull AccountUtils accountUtils) {
        kotlin.jvm.internal.t.j(accountUtils, "<set-?>");
        this.accountUtils = accountUtils;
    }

    public final void setReceiver(@NotNull BroadcastReceiver broadcastReceiver) {
        kotlin.jvm.internal.t.j(broadcastReceiver, "<set-?>");
        this.receiver = broadcastReceiver;
    }

    public final void setRequest(@Nullable ApiRequest apiRequest) {
        this.request = apiRequest;
    }

    public final void setSharedPreferences(@Nullable SharedPreferences sharedPreferences) {
        this.sharedPreferences = sharedPreferences;
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void shouldShowDialog() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentLoginBinding getBinding() {
        return (FragmentLoginBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$12$lambda$11(LoginFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        LoginActivity loginActivity = activity instanceof LoginActivity ? (LoginActivity) activity : null;
        if (loginActivity != null) {
            loginActivity.statType = 4;
            loginActivity.loggingMethod = "Google";
        }
        FragmentManager fragmentManager = this$0.getFragmentManager();
        GoogleLoginFragment googleLoginFragment = (GoogleLoginFragment) (fragmentManager != null ? fragmentManager.l0(R.id.google_login_fragment) : null);
        if (googleLoginFragment != null) {
            googleLoginFragment.googleConnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onViewCreated$lambda$12$lambda$5(LoginFragment this$0, TextView textView, int i10, KeyEvent keyEvent) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (i10 != 6) {
            return false;
        }
        this$0.sendLoginRequest();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$12$lambda$6(LoginFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.forgotPassword();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$12$lambda$7(LoginFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.sendLoginRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$12$lambda$9(LoginFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        LoginActivity loginActivity = activity instanceof LoginActivity ? (LoginActivity) activity : null;
        if (loginActivity != null) {
            loginActivity.statType = 3;
            loginActivity.loggingMethod = "Facebook";
        }
        FragmentManager fragmentManager = this$0.getFragmentManager();
        if ((fragmentManager != null ? fragmentManager.l0(R.id.facebook_login_fragment) : null) != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void savePendingOnFinishLogin(ApiRequest apiRequest, AccountResponse accountResponse) {
        this.pendingOnFinishLogin = new PendingOnFinishLogin(apiRequest, accountResponse);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
        kotlin.jvm.internal.t.j(builder, "builder");
        super.completeLogEvent(builder);
        builder.extraParam("coldStart", Boolean.valueOf(getBooleanParam("onBoarding")));
    }

    public final void executePendingFinishRequest() {
        PendingOnFinishLogin pendingOnFinishLogin = this.pendingOnFinishLogin;
        if (pendingOnFinishLogin == null) {
            return;
        }
        this.listener.onFinish(pendingOnFinishLogin.getReq(), pendingOnFinishLogin.getResp());
        this.pendingOnFinishLogin = null;
    }

    @NotNull
    public final AccountUtils getAccountUtils() {
        AccountUtils accountUtils = this.accountUtils;
        if (accountUtils != null) {
            return accountUtils;
        }
        kotlin.jvm.internal.t.B("accountUtils");
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        kotlin.jvm.internal.t.j(context, "context");
        super.onAttach(context);
        this.sharedPreferences = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        LogEvent.clickBuilder(this, ActSemantic.cancelAuth).area("EngagementArea").send();
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        ScrollView root = getBinding().getRoot();
        kotlin.jvm.internal.t.i(root, "getRoot(...)");
        return root;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onProfileChanged(@Nullable EventLogProfileResponse eventLogProfileResponse, boolean z6) {
        EventLogProfileService eventLogProfileService = this.eventLogProfileService;
        if (eventLogProfileService != null) {
            eventLogProfileService.removeListener(this);
        }
        this.eventProfileGot = true;
    }

    @Override // com.narvii.services.EventLogProfileService.EventLogProfileListener
    public void onRequestFailed(@Nullable String str, boolean z6) {
        EventLogProfileService eventLogProfileService = this.eventLogProfileService;
        if (eventLogProfileService != null) {
            eventLogProfileService.removeListener(this);
        }
        this.eventProfileGot = true;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005f  */
    /* JADX WARN: Code duplicated, block: B:19:0x0063  */
    /* JADX WARN: Code duplicated, block: B:23:0x0073  */
    /* JADX WARN: Code duplicated, block: B:25:0x0077  */
    /* JADX WARN: Code duplicated, block: B:26:0x007e  */
    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        String string;
        String string2;
        kotlin.jvm.internal.t.j(view, "view");
        FragmentLoginBinding binding = getBinding();
        super.onViewCreated(view, bundle);
        StatusBarUtils.addMarginTopToContentChild(getActivity(), view.findViewById(R.id.main_layout));
        String stringParam = getStringParam("emailOrPhone");
        if (stringParam != null) {
            kotlin.jvm.internal.t.g(stringParam);
            binding.emailOrPhoneET.setText(stringParam);
            String stringParam2 = getStringParam("pass");
            if (stringParam2 != null) {
                kotlin.jvm.internal.t.g(stringParam2);
                binding.passwordET.setText(stringParam2);
                binding.login.setEnabled(stringParam2.length() > 0 && stringParam.length() > 0);
            }
        }
        String stringParam3 = getStringParam("emailOrPhone");
        if (stringParam3 != null) {
            kotlin.jvm.internal.t.g(stringParam3);
            if (stringParam3.length() == 0) {
                sharedPreferences = this.sharedPreferences;
                if (sharedPreferences != null) {
                    if (sharedPreferences != null || (string2 = sharedPreferences.getString("last_email", null)) == null) {
                        sharedPreferences2 = this.sharedPreferences;
                        if (sharedPreferences2 != null) {
                            string = sharedPreferences2.getString("last_phoneNumber", null);
                        } else {
                            string = null;
                        }
                        binding.emailOrPhoneET.setText(string);
                    } else {
                        binding.emailOrPhoneET.setText(string2);
                    }
                }
            }
        } else {
            sharedPreferences = this.sharedPreferences;
            if (sharedPreferences != null) {
                if (sharedPreferences != null) {
                    sharedPreferences2 = this.sharedPreferences;
                    if (sharedPreferences2 != null) {
                        string = sharedPreferences2.getString("last_phoneNumber", null);
                    } else {
                        string = null;
                    }
                    binding.emailOrPhoneET.setText(string);
                } else {
                    sharedPreferences2 = this.sharedPreferences;
                    if (sharedPreferences2 != null) {
                        string = sharedPreferences2.getString("last_phoneNumber", null);
                    } else {
                        string = null;
                    }
                    binding.emailOrPhoneET.setText(string);
                }
            }
        }
        binding.emailOrPhoneET.addTextChangedListener(this);
        binding.passwordET.addTextChangedListener(this);
        binding.passwordET.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.narvii.account.x
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                return LoginFragment.onViewCreated$lambda$12$lambda$5(this.f1782a, textView, i10, keyEvent);
            }
        });
        binding.forgot.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LoginFragment.onViewCreated$lambda$12$lambda$6(this.f1784a, view2);
            }
        });
        binding.login.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LoginFragment.onViewCreated$lambda$12$lambda$7(this.f1786a, view2);
            }
        });
        FragmentActivity activity = getActivity();
        LoginActivity loginActivity = activity instanceof LoginActivity ? (LoginActivity) activity : null;
        if (loginActivity != null) {
            loginActivity.statMaxLoginStep = 3;
        }
        if (loginActivity != null) {
            loginActivity.statMaxSignupSetp = 0;
        }
        String string3 = getContext().getText(R.string.account_sign_up_link).toString();
        int color = ContextCompat.getColor(getContext(), R.color.text_link_color);
        TextView signupLinkTV = binding.signupLinkTV;
        kotlin.jvm.internal.t.i(signupLinkTV, "signupLinkTV");
        TextViewExtensionKt.makeTextLink(signupLinkTV, string3, false, Integer.valueOf(color), new LoginFragment$onViewCreated$1$7(this));
        binding.facebook.setVisibility(8);
        binding.google.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LoginFragment.onViewCreated$lambda$12$lambda$11(this.f1686a, view2);
            }
        });
    }

    private final void forgotPassword() {
        try {
            FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            fragmentTransactionQ.v(R.id.frame, new EmailResetPasswordFragment(), "reset").h(null).k();
        } catch (IllegalStateException e) {
            Log.e(e.getLocalizedMessage());
        }
    }

    private final String getCurrentPhoneNumber() {
        String strStripSeparators = PhoneNumberUtils.stripSeparators(getBinding().emailOrPhoneET.getText().toString());
        kotlin.jvm.internal.t.g(strStripSeparators);
        if (kotlin.text.t.K(strStripSeparators, TarConstants.VERSION_POSIX, false, 2, null)) {
            return org.slf4j.c.ANY_NON_NULL_MARKER + kotlin.text.u.t0(strStripSeparators, TarConstants.VERSION_POSIX);
        }
        return strStripSeparators;
    }

    private final void requestMobileSignUpProvider() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().https().path("auth/config-v2").global().build(), new ApiResponseListener<AuthConfigResponse>(AuthConfigResponse.class) { // from class: com.narvii.account.LoginFragment.requestMobileSignUpProvider.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                LoginFragment.this.setHttpCode(t5);
                super.onFail(req, i10, list, message, apiResponse, t5);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull AuthConfigResponse resp) throws Exception {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(resp, "resp");
                super.onFinish(req, resp);
                ArrayList<Integer> arrayList = resp.mobileSignUpProviderList;
                LoginActivity.showPhoneNumberItem = Boolean.valueOf(arrayList != null && arrayList.contains(8));
            }
        });
    }

    private final void setupRequestBuilder(ApiRequest.Builder builder) {
        LoginActivity loginActivity;
        FragmentLoginBinding binding = getBinding();
        FragmentActivity activity = getActivity();
        if (activity instanceof LoginActivity) {
            loginActivity = (LoginActivity) activity;
        } else {
            loginActivity = null;
        }
        setUsername(binding.emailOrPhoneET.getText().toString());
        if (getAccountUtils().isValidEmail(binding.emailOrPhoneET.getText().toString())) {
            if (loginActivity != null) {
                loginActivity.statType = 2;
            }
            String string = binding.emailOrPhoneET.getText().toString();
            if (builder != null) {
                builder.param("email", string);
            }
            if (builder != null) {
                builder.param("v", 2);
            }
            if (builder != null) {
                builder.tag("email", string);
            }
        }
        if (getAccountUtils().isPhoneWithCountryCode(binding.emailOrPhoneET.getText().toString())) {
            if (loginActivity != null) {
                loginActivity.statType = 1;
            }
            String currentPhoneNumber = getCurrentPhoneNumber();
            if (currentPhoneNumber != null) {
                if (builder != null) {
                    builder.param(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, currentPhoneNumber);
                }
                if (builder != null) {
                    builder.param("v", 2);
                }
                if (builder != null) {
                    builder.tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, currentPhoneNumber);
                }
            }
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(@Nullable Editable editable) {
        boolean z6;
        int i10;
        FragmentLoginBinding binding = getBinding();
        binding.login.setEnabled(isContentVerified());
        if (!getAccountUtils().isPhoneWithCountryCode(binding.emailOrPhoneET.getText().toString()) && getAccountUtils().hasOnlyDigits(binding.emailOrPhoneET.getText().toString())) {
            z6 = true;
        } else {
            z6 = false;
        }
        Context context = getContext();
        if (z6) {
            i10 = R.color.invalid_input_color;
        } else {
            i10 = R.color.white;
        }
        binding.phoneValidationTV.setTextColor(ContextCompat.getColor(context, i10));
    }

    public final boolean isContentVerified() {
        FragmentLoginBinding binding = getBinding();
        if (getAccountUtils().isEmailAndPassVerifed(binding.emailOrPhoneET, binding.passwordET)) {
            return true;
        }
        return getAccountUtils().isPhoneWithCountryAndPassVerified(binding.emailOrPhoneET, binding.passwordET);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        LoginActivity loginActivity;
        String str;
        FragmentTransaction fragmentTransactionQ;
        FragmentTransaction fragmentTransactionU;
        FragmentTransaction fragmentTransactionH;
        FragmentTransaction fragmentTransactionQ2;
        FragmentTransaction fragmentTransactionU2;
        FragmentTransaction fragmentTransactionH2;
        super.onActivityResult(i10, i11, intent);
        if (i11 == -1 && i10 == 3143 && intent != null) {
            FragmentActivity activity = getActivity();
            Fragment fragmentL0 = null;
            if (activity instanceof LoginActivity) {
                loginActivity = (LoginActivity) activity;
            } else {
                loginActivity = null;
            }
            if (loginActivity != null) {
                loginActivity.birthday = intent.getStringExtra(Constants.PARAM_BIRTHDAY);
            }
            if (loginActivity != null) {
                str = loginActivity.loggingMethod;
            } else {
                str = null;
            }
            if (kotlin.text.t.w("Phone", str, true)) {
                FragmentManager fragmentManager = getFragmentManager();
                if (fragmentManager != null) {
                    fragmentTransactionQ2 = fragmentManager.q();
                } else {
                    fragmentTransactionQ2 = null;
                }
                if (fragmentTransactionQ2 != null) {
                    fragmentTransactionQ2.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                }
                MobileSignupFragment mobileSignupFragment = new MobileSignupFragment();
                Bundle bundle = new Bundle();
                bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, "phoneSignup");
                mobileSignupFragment.setArguments(bundle);
                if (fragmentTransactionQ2 != null && (fragmentTransactionU2 = fragmentTransactionQ2.u(R.id.frame, mobileSignupFragment)) != null && (fragmentTransactionH2 = fragmentTransactionU2.h(null)) != null) {
                    fragmentTransactionH2.k();
                    return;
                }
                return;
            }
            if (kotlin.text.t.w("Email", str, true)) {
                FragmentManager fragmentManager2 = getFragmentManager();
                if (fragmentManager2 != null) {
                    fragmentTransactionQ = fragmentManager2.q();
                } else {
                    fragmentTransactionQ = null;
                }
                if (fragmentTransactionQ != null) {
                    fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                }
                EmailSignupFragment emailSignupFragment = new EmailSignupFragment();
                Bundle bundle2 = new Bundle();
                bundle2.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, "emailSignup");
                emailSignupFragment.setArguments(bundle2);
                if (fragmentTransactionQ != null && (fragmentTransactionU = fragmentTransactionQ.u(R.id.frame, emailSignupFragment)) != null && (fragmentTransactionH = fragmentTransactionU.h(null)) != null) {
                    fragmentTransactionH.k();
                    return;
                }
                return;
            }
            if (kotlin.text.t.w("Facebook", str, true)) {
                FragmentManager fragmentManager3 = getFragmentManager();
                if (fragmentManager3 != null) {
                    fragmentL0 = fragmentManager3.l0(R.id.facebook_login_fragment);
                }
                if (fragmentL0 != null) {
                }
                return;
            }
            if (kotlin.text.t.w("Google", str, true)) {
                FragmentManager fragmentManager4 = getFragmentManager();
                if (fragmentManager4 != null) {
                    fragmentL0 = fragmentManager4.l0(R.id.google_login_fragment);
                }
                GoogleLoginFragment googleLoginFragment = (GoogleLoginFragment) fragmentL0;
                if (googleLoginFragment != null) {
                    googleLoginFragment.googleConnect();
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0079  */
    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        EventLogProfileResponse response;
        String error;
        super.onCreate(bundle);
        this.eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
        LoginActivity.showPhoneNumberItem = Boolean.TRUE;
        requestMobileSignUpProvider();
        registerLocalReceiver(this.receiver, new IntentFilter(AccountBaseFragment.ACTION_MOBILE_REGISTER_SWITCH_LOGIN));
        registerLocalReceiver(this.receiver, new IntentFilter(AccountBaseFragment.ACTION_MOBILE_REGISTER_SWITCH_RESTORE));
        if (getBooleanParam("onBoarding")) {
            SharedPreferences sharedPreferences = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
            if (!sharedPreferences.contains("signUpStrategy")) {
                sharedPreferences.edit().putInt("signUpStrategy", 2).apply();
            }
        }
        EventLogProfileService eventLogProfileService = this.eventLogProfileService;
        LoginActivity loginActivity = null;
        if (eventLogProfileService != null) {
            response = eventLogProfileService.getResponse();
        } else {
            response = null;
        }
        if (response == null) {
            EventLogProfileService eventLogProfileService2 = this.eventLogProfileService;
            if (eventLogProfileService2 != null) {
                error = eventLogProfileService2.getError();
            } else {
                error = null;
            }
            if (error == null) {
                EventLogProfileService eventLogProfileService3 = this.eventLogProfileService;
                if (eventLogProfileService3 != null) {
                    eventLogProfileService3.refreshIfIdle();
                }
                EventLogProfileService eventLogProfileService4 = this.eventLogProfileService;
                if (eventLogProfileService4 != null) {
                    eventLogProfileService4.addListener(this);
                }
            } else {
                this.eventProfileGot = true;
            }
        } else {
            this.eventProfileGot = true;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof LoginActivity) {
            loginActivity = (LoginActivity) activity;
        }
        if (loginActivity != null) {
            loginActivity.birthday = "";
        }
        setAccountUtils(new AccountUtils(getContext()));
    }

    public final void sendLoginRequest() {
        if (!isContentVerified()) {
            return;
        }
        getBinding().login.setEnabled(false);
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        String string = getBinding().passwordET.getText().toString();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/login");
        setupRequestBuilder(builder);
        builder.param("secret", "0 " + string);
        builder.param(a0.a.o, accountService.getDeviceId());
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        builder.param("action", NotificationChannelHelper.CHANNEL_NORMAL);
        builder.tag("pass", string);
        ApiRequest apiRequestBuild = builder.build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, this.listener);
        setAccountExists(true);
        startSubmit();
    }
}
