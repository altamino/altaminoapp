package com.narvii.account;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.View;
import com.narvii.account.AccountSignUpIndicatorView;
import com.narvii.account.restore.AccountRestoreChooseFragment;
import com.narvii.account.restore.AccountRestoreEmailFragment;
import com.narvii.account.restore.AccoutRestorePhoneFragment;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes2.dex */
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
    public static final boolean QUICK_DEBUG_MODE = false;
    public static final int RESTORE_ACCOUNT = 581;
    public static final int SECURITY_VALIDATION_TARGET_TYPE_DIGITS = 3;
    public static final int SECURITY_VALIDATION_TARGET_TYPE_EMAIL = 1;
    public static final int SECURITY_VALIDATION_TARGET_TYPE_GLOBAL_SMS = 8;
    public static final String SIGN_UP_METHOD_EMAIL = "emailSignup";
    public static final String SIGN_UP_METHOD_FACEBOOK = "facebookSignup";
    public static final String SIGN_UP_METHOD_GOOGLE = "googleSignup";
    public static final String SIGN_UP_METHOD_PHONE = "phoneSignup";
    private static final String TWITTER_KEY = "rsIeJ0ut0Q1xK8bVk1Rd1UXmE";
    private static final String TWITTER_SECRET = "DBw3iKyCC9shzN2LOPX00Hr4sMM5T0gY2OVR34EMmciVJc4Hh8";
    protected AccountSignUpIndicatorView indicatorView;
    private ProgressDialog progressDialog;
    private ApiRequest request;

    protected boolean addStatusBarMargin() {
        return true;
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
    public void onIndicatorClicked(int i) {
    }

    protected void onMobileCheckSuccess(String str) {
    }

    @Override // com.narvii.account.AccountSignUpIndicatorView.IndicatorSuccessFinishedListener
    public void onTotallySuccess() {
    }

    protected void openMobileCheckAuth() {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setIsRequesting(false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.actionbar_back);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.AccountBaseFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AccountBaseFragment.this.getFragmentManager().popBackStack();
                }
            });
        }
        if (addStatusBarMargin()) {
            StatusBarUtils.addMarginTopToContentChild(getActivity(), view);
        }
        this.indicatorView = (AccountSignUpIndicatorView) view.findViewById(R.id.signup_indicator);
        AccountSignUpIndicatorView accountSignUpIndicatorView = this.indicatorView;
        if (accountSignUpIndicatorView != null) {
            accountSignUpIndicatorView.setIndicatorClickListener(this);
            this.indicatorView.setSuccessFinishedListener(this);
            this.indicatorView.setIndicatorColor(new AccountUtils(getContext()).getAccountForegroundColor());
        }
        this.progressDialog = new ProgressDialog(getContext());
        this.progressDialog.setCancelable(false);
        this.progressDialog.setCanceledOnTouchOutside(false);
    }

    protected void showProgress() {
        this.progressDialog.show();
    }

    protected void dismissProgress() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.progressDialog.dismiss();
    }

    public void startSubmit() {
        if (getActivity() instanceof LoginActivity) {
            ((LoginActivity) getActivity()).setSubmitting(this);
        }
    }

    public void cancelSubmit() {
        if (getActivity() instanceof LoginActivity) {
            ((LoginActivity) getActivity()).setSubmitting(null);
        }
    }

    public void setCreatingAccount(boolean z) {
        if (getActivity() instanceof LoginActivity) {
            ((LoginActivity) getActivity()).setCreatingAccount(z);
        }
    }

    public void setIsRequesting(boolean z) {
        if (getActivity() instanceof LoginActivity) {
            ((LoginActivity) getActivity()).setCreatingAccount(z);
        }
    }

    public void finishWithResult(boolean z, int i, String str) {
        finishWithResult(z, i, str, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void finishWithResult(boolean r3, int r4, java.lang.String r5, com.narvii.util.http.ApiRequest r6) {
        /*
            r2 = this;
            r0 = 0
            if (r3 != 0) goto L20
            r1 = 215(0xd7, float:3.01E-43)
            if (r4 == r1) goto L10
            r1 = 246(0xf6, float:3.45E-43)
            if (r4 == r1) goto Lc
            goto L20
        Lc:
            r2.accountRestore(r6)
            goto L21
        L10:
            if (r6 != 0) goto L14
            r6 = r0
            goto L1c
        L14:
            java.lang.String r1 = "email"
            java.lang.Object r6 = r6.tag(r1)
            java.lang.String r6 = (java.lang.String) r6
        L1c:
            r2.handleAlreadyRegistered(r5, r6)
            goto L21
        L20:
            r0 = r5
        L21:
            android.support.v4.app.FragmentActivity r5 = r2.getActivity()
            boolean r5 = r5 instanceof com.narvii.account.LoginActivity
            if (r5 == 0) goto L32
            android.support.v4.app.FragmentActivity r5 = r2.getActivity()
            com.narvii.account.LoginActivity r5 = (com.narvii.account.LoginActivity) r5
            r5.finishWithResult(r2, r3, r4, r0)
        L32:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.account.AccountBaseFragment.finishWithResult(boolean, int, java.lang.String, com.narvii.util.http.ApiRequest):void");
    }

    public void setLastError(int i, String str) {
        if (getActivity() instanceof LoginActivity) {
            ((LoginActivity) getActivity()).statErrorCode = i;
        }
    }

    public boolean cancel() {
        if (this.request == null) {
            return true;
        }
        ((ApiService) getService("api")).abort(this.request);
        this.request = null;
        return true;
    }

    protected GPSCoordinate getLocation() {
        SignupLocationFragment signupLocationFragment = (SignupLocationFragment) getFragmentManager().findFragmentByTag("signupLocation");
        if (signupLocationFragment == null) {
            return null;
        }
        return signupLocationFragment.location;
    }

    protected String getAddress() {
        SignupLocationFragment signupLocationFragment = (SignupLocationFragment) getFragmentManager().findFragmentByTag("signupLocation");
        if (signupLocationFragment == null) {
            return null;
        }
        return signupLocationFragment.address;
    }

    public void updateIndicatorViewStatusWhenIdle(int i) {
        AccountSignUpIndicatorView accountSignUpIndicatorView = this.indicatorView;
        if (accountSignUpIndicatorView == null || accountSignUpIndicatorView.getCurStatus() == 2 || this.indicatorView.getCurStatus() == 3) {
            return;
        }
        updateIndicatorViewStatus(i);
    }

    public void updateIndicatorViewStatus(int i) {
        AccountSignUpIndicatorView accountSignUpIndicatorView = this.indicatorView;
        if (accountSignUpIndicatorView == null || accountSignUpIndicatorView.getCurStatus() == i) {
            return;
        }
        if (getView() != null) {
            getView().setClickable(i != 2);
            getView().setEnabled(i != 2);
        }
        this.indicatorView.updateStatus(i);
    }

    protected void requestSecurityCode(int i, String str, ApiResponseListener<ApiResponse> apiResponseListener) {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequestBuild = ApiRequest.builder().https().global().post().path("/auth/request-security-validation").param("type", Integer.valueOf(i)).param("identity", str).param("deviceID", accountService.getDeviceId()).build();
        setIsRequesting(true);
        apiService.exec(apiRequestBuild, apiResponseListener);
    }

    private void addUnBackedFragment(Fragment fragment, String str) {
        if (getFragmentManager() == null) {
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        fragmentTransactionBeginTransaction.replace(R.id.frame, fragment, str).addToBackStack(str).commitAllowingStateLoss();
    }

    private void addFragment(Fragment fragment) {
        if (getFragmentManager() == null) {
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        fragmentTransactionBeginTransaction.replace(R.id.frame, fragment).addToBackStack(null).commitAllowingStateLoss();
    }

    public void goToSetPasswordPage(Fragment fragment) {
        addFragment(fragment);
    }

    public void goToAddProfilePage(Fragment fragment) {
        addFragment(fragment);
    }

    public void goToAccountCreatedPage(Fragment fragment, boolean z) {
        if (fragment == null) {
            return;
        }
        Bundle arguments = fragment.getArguments();
        if (arguments == null) {
            arguments = new Bundle();
        }
        arguments.putBoolean("newAccount", z);
        fragment.setArguments(arguments);
        addUnBackedFragment(fragment, "accountCreated");
    }

    private void accountRestore(final ApiRequest apiRequest) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(R.string.account_restore_dialog);
        builder.setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(R.string.account_restore, new DialogInterface.OnClickListener() { // from class: com.narvii.account.AccountBaseFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (apiRequest == null || !AccountBaseFragment.this.isAdded()) {
                    return;
                }
                String str = (String) apiRequest.tag("email");
                String str2 = (String) apiRequest.tag("phoneNumber");
                String str3 = (String) apiRequest.tag("pass");
                Object objTag = apiRequest.tag("thirdPart");
                if ((objTag instanceof Boolean) && ((Boolean) objTag).booleanValue()) {
                    AccountBaseFragment.this.startActivity(FragmentWrapperActivity.intent(AccountRestoreChooseFragment.class));
                    return;
                }
                if (!TextUtils.isEmpty(str)) {
                    Intent intent = FragmentWrapperActivity.intent(AccountRestoreEmailFragment.class);
                    intent.putExtra("email", str);
                    intent.putExtra("pass", str3);
                    AccountBaseFragment.this.startActivityForResult(intent, AccountBaseFragment.RESTORE_ACCOUNT);
                    return;
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                Intent intent2 = FragmentWrapperActivity.intent(AccoutRestorePhoneFragment.class);
                intent2.putExtra("phoneNumber", str2);
                intent2.putExtra("pass", str3);
                AccountBaseFragment.this.startActivityForResult(intent2, AccountBaseFragment.RESTORE_ACCOUNT);
            }
        });
        builder.show();
    }

    protected void handleAlreadyRegistered(String str, String str2) {
        emailAlreadyRegisted(str, str2);
    }

    private void emailAlreadyRegisted(String str, final String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(str);
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.setPositiveButton(R.string.account_login, new DialogInterface.OnClickListener() { // from class: com.narvii.account.AccountBaseFragment.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent();
                intent.putExtra("email", str2);
                AccountBaseFragment.this.switchLogin(intent);
            }
        });
        builder.show();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 581 && i2 == -1) {
            switchLogin(intent);
        }
        super.onActivityResult(i, i2, intent);
    }

    protected void switchLogin(Intent intent, int i, int i2) {
        String stringExtra;
        String stringExtra2;
        Fragment emailLoginFragment;
        if (getFragmentManager() == null) {
            return;
        }
        try {
            getFragmentManager().popBackStack();
        } catch (Exception unused) {
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(i, i2, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        Bundle bundle = new Bundle();
        if (intent != null) {
            stringExtra = intent.getStringExtra("email");
            stringExtra2 = intent.getStringExtra("phoneNumber");
        } else {
            stringExtra = null;
            stringExtra2 = null;
        }
        if (!TextUtils.isEmpty(stringExtra)) {
            emailLoginFragment = new EmailLoginFragment();
            bundle.putString("email", stringExtra);
        } else if (!TextUtils.isEmpty(stringExtra2)) {
            MobileLoginFragment mobileLoginFragment = new MobileLoginFragment();
            bundle.putString("phoneNumber", stringExtra2);
            emailLoginFragment = mobileLoginFragment;
        } else {
            emailLoginFragment = new EmailLoginFragment();
        }
        bundle.putString("pass", intent.getStringExtra("pass"));
        emailLoginFragment.setArguments(bundle);
        fragmentTransactionBeginTransaction.replace(R.id.frame, emailLoginFragment).addToBackStack(null).commitAllowingStateLoss();
        getFragmentManager().executePendingTransactions();
    }

    protected void switchLogin(Intent intent) {
        switchLogin(intent, R.anim.activity_push_left_in, R.anim.activity_push_left_out);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        if (logSignUpMethod()) {
            builder.extraParam("signupMethod", getStringParam(KEY_SIGN_UP_METHOD));
        }
    }
}
