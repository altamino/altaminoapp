package com.narvii.account;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.restore.AccountRestoreChooseFragment;
import com.narvii.account.restore.AccountRestoreEmailFragment;
import com.narvii.account.restore.AccoutRestorePhoneFragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.statusbar.StatusBarUtils;
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public class AccountBaseFragment extends NVFragment implements AccountSignUpIndicatorView.IndicatorClickListener, AccountSignUpIndicatorView.IndicatorSuccessFinishedListener {
    public static final int ACCOUNT_AUTH_TYPE_EMAIL = 1;
    public static final int ACCOUNT_AUTH_TYPE_FACEBOOK = 10;
    public static final int ACCOUNT_AUTH_TYPE_GOOGLE = 30;
    public static final int ACCOUNT_AUTH_TYPE_PHONE = 2;
    public static final String ACTION_MOBILE_REGISTER_SWITCH_LOGIN = "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_LOGIN";
    public static final String ACTION_MOBILE_REGISTER_SWITCH_RESTORE = "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_RESTORE";
    public static final String KEY_AUTH_METHOD = "key_auth_method";
    public static final String KEY_IS_THIRD_PART = "key_is_third_part";
    public static final String KEY_NICKNAME = "key_third_party_nickname";
    public static final String KEY_SIGN_UP_METHOD = "key_sign_up_method";
    public static final String KEY_THIRDPARTY_AVATAR_URL = "key_avatar_url";
    public static final String KEY_THIRD_PART_SECRET = "key_third_part_secret";
    public static final int RESTORE_ACCOUNT = 581;
    public static final int SECURITY_VALIDATION_TARGET_TYPE_DIGITS = 3;
    public static final int SECURITY_VALIDATION_TARGET_TYPE_EMAIL = 1;
    public static final int SECURITY_VALIDATION_TARGET_TYPE_GLOBAL_SMS = 8;
    protected AccountSignUpIndicatorView indicatorView;
    private ProgressDialog progressDialog;
    private ApiRequest request;
    private String userId;

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    protected boolean addStatusBarMargin() {
        return true;
    }

    public void finishWithResult(boolean z6, int i10, String str) {
        finishWithResult(z6, i10, str, null);
    }

    public String getProgressText() {
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    protected boolean logSignUpMethod() {
        return false;
    }

    @Override // com.narvii.account.AccountSignUpIndicatorView.IndicatorClickListener
    public void onIndicatorClicked(int i10) {
    }

    @Override // com.narvii.account.AccountSignUpIndicatorView.IndicatorSuccessFinishedListener
    public void onTotallySuccess() {
    }

    protected void requestSecurityCode(int i10, String str, ApiResponseListener<ApiResponse> apiResponseListener) {
        requestSecurityCode(i10, str, null, apiResponseListener);
    }

    protected void switchLogin(Intent intent, int i10, int i11) {
        String stringExtra;
        String stringExtra2;
        if (getFragmentManager() == null) {
            return;
        }
        try {
            getFragmentManager().i1();
        } catch (Exception unused) {
        }
        FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
        fragmentTransactionQ.z(i10, i11, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        Bundle bundle = new Bundle();
        if (intent != null) {
            stringExtra = intent.getStringExtra("email");
            stringExtra2 = intent.getStringExtra(HintConstants.AUTOFILL_HINT_PHONE_NUMBER);
        } else {
            stringExtra = null;
            stringExtra2 = null;
        }
        LoginFragment loginFragment = new LoginFragment();
        if (!TextUtils.isEmpty(stringExtra)) {
            bundle.putString("emailOrPhone", stringExtra);
        } else if (!TextUtils.isEmpty(stringExtra2)) {
            bundle.putString("emailOrPhone", stringExtra2);
        }
        bundle.putString("pass", intent.getStringExtra("pass"));
        loginFragment.setArguments(bundle);
        if (getContainerId() != null) {
            fragmentTransactionQ.u(getContainerId().intValue(), loginFragment).h(null).k();
        } else {
            fragmentTransactionQ.u(R.id.frame, loginFragment).h(null).k();
        }
        getFragmentManager().i0();
    }

    private void accountRestore(final ApiRequest apiRequest) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(R.string.account_restore_dialog);
        builder.setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(R.string.account_restore, new DialogInterface.OnClickListener() { // from class: com.narvii.account.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f1684a.lambda$accountRestore$1(apiRequest, dialogInterface, i10);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$accountRestore$1(ApiRequest apiRequest, DialogInterface dialogInterface, int i10) {
        if (apiRequest == null || !isAdded()) {
            return;
        }
        String str = (String) apiRequest.tag("email");
        String str2 = (String) apiRequest.tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER);
        String str3 = (String) apiRequest.tag("pass");
        Object objTag = apiRequest.tag("thirdPart");
        if ((objTag instanceof Boolean) && ((Boolean) objTag).booleanValue()) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FragmentWrapperActivity.intent(AccountRestoreChooseFragment.class));
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            Intent intent = FragmentWrapperActivity.intent(AccountRestoreEmailFragment.class);
            intent.putExtra("email", str);
            intent.putExtra("pass", str3);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, RESTORE_ACCOUNT);
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Intent intent2 = FragmentWrapperActivity.intent(AccoutRestorePhoneFragment.class);
        intent2.putExtra(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, str2);
        intent2.putExtra("pass", str3);
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent2, RESTORE_ACCOUNT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleAlreadyRegistered$2(String str, DialogInterface dialogInterface, int i10) {
        Intent intent = new Intent();
        intent.putExtra("email", str);
        switchLogin(intent);
    }

    public boolean cancel() {
        if (this.request == null) {
            return true;
        }
        ((ApiService) getService("api")).abort(this.request);
        this.request = null;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void dismissProgress() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.progressDialog.dismiss();
    }

    public void finishWithResult(boolean z6, int i10, String str, ApiRequest apiRequest) {
        FragmentActivity activity = getActivity();
        if (!z6) {
            if (i10 == 215) {
                handleAlreadyRegistered(str, apiRequest == null ? null : (String) apiRequest.tag("email"));
            } else if (i10 == 246) {
                accountRestore(apiRequest);
            }
            str = null;
        }
        if (activity == null || !(activity instanceof LoginActivity)) {
            return;
        }
        ((LoginActivity) activity).finishWithResult(this, z6, i10, str);
    }

    public void goToAccountCreatedPage(Fragment fragment, boolean z6) {
        if (fragment == null) {
            return;
        }
        Bundle arguments = fragment.getArguments();
        if (arguments == null) {
            arguments = new Bundle();
        }
        arguments.putBoolean("newAccount", z6);
        fragment.setArguments(arguments);
        addUnBackedFragment(fragment, "accountCreated");
    }

    protected void handleAlreadyRegistered(String str, final String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(str);
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.setPositiveButton(R.string.account_login, new DialogInterface.OnClickListener() { // from class: com.narvii.account.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f1688a.lambda$handleAlreadyRegistered$2(str2, dialogInterface, i10);
            }
        });
        builder.show();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 581 && i11 == -1) {
            switchLogin(intent);
        }
        super.onActivityResult(i10, i11, intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void requestSecurityCode(int i10, String str, Integer num, ApiResponseListener<ApiResponse> apiResponseListener) {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/request-security-validation").param("type", Integer.valueOf(i10)).param("identity", str).param(a0.a.o, accountService.getDeviceId());
        if (num != null) {
            builderParam.param("level", num);
        }
        ApiRequest apiRequestBuild = builderParam.build();
        setIsRequesting(true);
        apiService.exec(apiRequestBuild, apiResponseListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showProgress() {
        this.progressDialog.show();
    }

    public void updateIndicatorViewStatus(int i10) {
        AccountSignUpIndicatorView accountSignUpIndicatorView = this.indicatorView;
        if (accountSignUpIndicatorView == null || accountSignUpIndicatorView.getCurStatus() == i10) {
            return;
        }
        if (getView() != null) {
            getView().setClickable(i10 != 2);
            getView().setEnabled(i10 != 2);
        }
        this.indicatorView.updateStatus(i10);
    }

    private void addFragment(Fragment fragment) {
        if (getFragmentManager() == null) {
            return;
        }
        FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        if (getContainerId() != null) {
            fragmentTransactionQ.u(getContainerId().intValue(), fragment).h(null).k();
        } else {
            fragmentTransactionQ.u(R.id.frame, fragment).h(null).k();
        }
    }

    private void addUnBackedFragment(Fragment fragment, String str) {
        if (getFragmentManager() == null) {
            return;
        }
        FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        fragmentTransactionQ.v(((ViewGroup) getView().getParent()).getId(), fragment, str).h(str).k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        getFragmentManager().i1();
    }

    public void cancelSubmit() {
        FragmentActivity activity = getActivity();
        if (activity != null && (activity instanceof LoginActivity)) {
            ((LoginActivity) activity).setSubmitting(null);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        if (logSignUpMethod()) {
            builder.extraParam("signupMethod", getStringParam(KEY_SIGN_UP_METHOD));
        }
    }

    protected String getAddress() {
        SignupLocationFragment signupLocationFragment = (SignupLocationFragment) getFragmentManager().m0("signupLocation");
        if (signupLocationFragment == null) {
            return null;
        }
        return signupLocationFragment.address;
    }

    protected GPSCoordinate getLocation() {
        SignupLocationFragment signupLocationFragment = (SignupLocationFragment) getFragmentManager().m0("signupLocation");
        if (signupLocationFragment == null) {
            return null;
        }
        return signupLocationFragment.location;
    }

    public void goToAddProfilePage(Fragment fragment) {
        addFragment(fragment);
    }

    public void goToSetPasswordPage(Fragment fragment) {
        addFragment(fragment);
    }

    public void goToSuccessPage(Fragment fragment) {
        addFragment(fragment);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setIsRequesting(false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.actionbar_back);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f1681a.lambda$onViewCreated$0(view2);
                }
            });
        }
        if (addStatusBarMargin()) {
            StatusBarUtils.addMarginTopToContentChild(getActivity(), view);
        }
        AccountSignUpIndicatorView accountSignUpIndicatorView = (AccountSignUpIndicatorView) view.findViewById(R.id.signup_indicator);
        this.indicatorView = accountSignUpIndicatorView;
        if (accountSignUpIndicatorView != null) {
            accountSignUpIndicatorView.setIndicatorClickListener(this);
            this.indicatorView.setSuccessFinishedListener(this);
            this.indicatorView.setIndicatorColor(new AccountUtils(getContext()).getAccountForegroundColor());
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.progressDialog = progressDialog;
        progressDialog.setCancelable(false);
        this.progressDialog.setCanceledOnTouchOutside(false);
    }

    public void setAccountExists(boolean z6) {
        FragmentActivity activity = getActivity();
        if (activity != null && (activity instanceof LoginActivity)) {
            ((LoginActivity) activity).setExists(z6);
        }
    }

    public void setCreatingAccount(boolean z6) {
        FragmentActivity activity = getActivity();
        if (activity != null && (activity instanceof LoginActivity)) {
            ((LoginActivity) activity).setCreatingAccount(z6);
        }
    }

    public void setHttpCode(Throwable th) {
        int httpCode = Utils.getHttpCode(th);
        FragmentActivity activity = getActivity();
        if (activity != null && (activity instanceof LoginActivity)) {
            ((LoginActivity) activity).setHttpCode(httpCode);
        }
    }

    public void setIsRequesting(boolean z6) {
        FragmentActivity activity = getActivity();
        if (activity != null && (activity instanceof LoginActivity)) {
            ((LoginActivity) activity).setCreatingAccount(z6);
        }
    }

    public void setLastError(int i10, String str) {
        FragmentActivity activity = getActivity();
        if (activity != null && (activity instanceof LoginActivity)) {
            ((LoginActivity) activity).statErrorCode = i10;
        }
    }

    public void setUsername(String str) {
        FragmentActivity activity = getActivity();
        if (activity != null && (activity instanceof LoginActivity)) {
            ((LoginActivity) activity).setUsername(str);
        }
    }

    public void startSubmit() {
        FragmentActivity activity = getActivity();
        if (activity != null && (activity instanceof LoginActivity)) {
            ((LoginActivity) activity).setSubmitting(this);
        }
    }

    protected void switchLogin(Intent intent) {
        switchLogin(intent, R.anim.activity_push_left_in, R.anim.activity_push_left_out);
    }
}
