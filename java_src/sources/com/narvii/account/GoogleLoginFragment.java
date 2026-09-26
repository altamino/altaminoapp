package com.narvii.account;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Task;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.birthday.EnterBirthdayFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.model.api.AccountExistResponse;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.Constants;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class GoogleLoginFragment extends ThirdPartyAccountBaseFragment {
    public static final int REQUEST_TYPE_CONNECT = 4;
    public static final int REQUEST_TYPE_LOGIN = 2;
    public static final int REQUEST_TYPE_SIGNUP = 3;
    private ActivityResultLauncher<Intent> birthdayActivityResultLauncher;
    String email;
    GoogleSignInClient googleSignInClient;
    GoogleSignInOptions googleSignInOptions;
    String name;
    String profileUri;
    ApiRequest request;
    int requestType;
    String token;

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.account.ThirdPartyAccountBaseFragment, com.narvii.account.AccountBaseFragment
    public boolean cancel() {
        this.requestType = 0;
        if (this.request != null) {
            ((ApiService) getService("api")).abort(this.request);
            this.request = null;
        }
        return super.cancel();
    }

    @Override // com.narvii.account.ThirdPartyAccountBaseFragment
    protected String getSignUpMethod() {
        return "googleSignup";
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) throws Throwable {
        if (i10 == 1) {
            handleSignInResult(GoogleSignIn.getSignedInAccountFromIntent(intent), i11);
        }
    }

    private void handleSignInResult(Task<GoogleSignInAccount> task, int i10) throws Throwable {
        LoggingService loggingService = (LoggingService) getService("logging");
        try {
            GoogleSignInAccount result = task.getResult(ApiException.class);
            String string = null;
            if (result == null || !task.isSuccessful()) {
                if (i10 == 1002) {
                    Toast.makeText(getContext(), R.string.account_no_google_account_available, 0).show();
                }
            } else {
                if (result.getIdToken() != null) {
                    this.email = result.getEmail();
                    this.name = result.getDisplayName();
                    if (result.getPhotoUrl() != null) {
                        string = result.getPhotoUrl().toString();
                    }
                    this.profileUri = string;
                    setUsername(this.email);
                    onAccess(result.getIdToken());
                    return;
                }
                Toast.makeText(getContext(), R.string.google_login_down, 1).show();
                loggingService.lambda$logEvent$0("AccountError", "email", result.getEmail(), "code", 748, "reason", "GoogleAuthIdTokenMissing");
            }
            int i11 = this.requestType;
            if (i11 == 2 || i11 == 3) {
                finishWithResult(false, i10, null);
            }
        } catch (ApiException e) {
            loggingService.lambda$logEvent$0("LoggingError", "reason", "signInResult:failed code=" + e.getStatusCode());
        }
    }

    private void onAccess(final String str) {
        this.token = str;
        setIsRequesting(true);
        ApiService apiService = (ApiService) getService("api");
        AccountService accountService = (AccountService) getService("account");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/account_exist_check");
        builder.param(a0.a.o, accountService.getDeviceId());
        builder.param("secret", "30 " + str);
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        builder.tag("thirdPart", Boolean.TRUE);
        ApiRequest apiRequestBuild = builder.build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<AccountExistResponse>(AccountExistResponse.class) { // from class: com.narvii.account.GoogleLoginFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, String str2, @Nullable ApiResponse apiResponse, Throwable th) {
                GoogleLoginFragment.this.setHttpCode(th);
                GoogleLoginFragment.this.finishThirdPartLoginWithResult("10 " + str, false, i10, str2, apiRequest);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AccountExistResponse accountExistResponse) {
                GoogleLoginFragment.this.isLoginFlow = accountExistResponse.exists.booleanValue();
                GoogleLoginFragment.this.setIsRequesting(false);
                GoogleLoginFragment.this.setAccountExists(accountExistResponse.exists.booleanValue());
                if (accountExistResponse.exists.booleanValue()) {
                    GoogleLoginFragment.this.requestLogin();
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(EnterBirthdayFragment.class);
                intent.putExtra(Constants.PARAM_BIRTHDAY_TYPE, EnterBirthdayFragment.BirthdayType.SIGNUP);
                GoogleLoginFragment.this.birthdayActivityResultLauncher.a(intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestLogin() {
        ApiService apiService = (ApiService) getService("api");
        AccountService accountService = (AccountService) getService("account");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/login");
        builder.param(a0.a.o, accountService.getDeviceId());
        builder.param("secret", "30 " + this.token);
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        GPSCoordinate location = getLocation();
        builder.param("latitude", Integer.valueOf(location == null ? 0 : location.latitudeE6()));
        builder.param("longitude", Integer.valueOf(location != null ? location.longitudeE6() : 0));
        builder.param("address", getAddress());
        builder.param("action", NotificationChannelHelper.CHANNEL_NORMAL);
        builder.tag("thirdPart", Boolean.TRUE);
        ApiRequest apiRequestBuild = builder.build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, new AccountResponseListener(this) { // from class: com.narvii.account.GoogleLoginFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                GoogleLoginFragment.this.setHttpCode(th);
                GoogleLoginFragment.this.finishThirdPartLoginWithResult("30 " + GoogleLoginFragment.this.token, false, i10, str, apiRequest);
            }

            @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                accountResponse.sid.charAt(0);
                super.onFinish(apiRequest, accountResponse);
                Log.i("login success with google " + JacksonUtils.nodeString(json(), "account", "email"));
                GoogleLoginFragment.this.finishWithResult(true, 0, null);
            }
        });
        startSubmit();
    }

    private void signIn() {
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, this.googleSignInClient.getSignInIntent(), 1);
    }

    public void googleConnect() {
        if (this.request != null) {
            ((ApiService) getService("api")).abort(this.request);
            this.request = null;
        }
        this.requestType = 4;
        signIn();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return new View(layoutInflater.getContext());
    }

    @Override // com.narvii.account.ThirdPartyAccountBaseFragment
    protected void queryThirdPartyInfo(final ThirdPartyAccountBaseFragment.QueryThirdPartyInfoCallBack queryThirdPartyInfoCallBack) {
        if (TextUtils.isEmpty(this.profileUri)) {
            queryThirdPartyInfoCallBack.onComplete(this.name, this.profileUri);
        } else {
            startSubmit();
            saveImage(this.profileUri, new ThirdPartyAccountBaseFragment.SaveImageCallBack() { // from class: com.narvii.account.r
                @Override // com.narvii.account.ThirdPartyAccountBaseFragment.SaveImageCallBack
                public final void onCompleted(String str) {
                    this.f1740a.lambda$queryThirdPartyInfo$1(queryThirdPartyInfoCallBack, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(ActivityResult activityResult) {
        if (activityResult.e() == -1) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            Intent intentC = activityResult.c();
            if (loginActivity != null && intentC != null) {
                loginActivity.birthday = intentC.getStringExtra(Constants.PARAM_BIRTHDAY);
                requestLogin();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$queryThirdPartyInfo$1(ThirdPartyAccountBaseFragment.QueryThirdPartyInfoCallBack queryThirdPartyInfoCallBack, String str) {
        cancelSubmit();
        queryThirdPartyInfoCallBack.onComplete(this.name, str);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.googleSignInOptions = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestIdToken(getString(R.string.default_web_client_id)).requestEmail().build();
        this.googleSignInClient = GoogleSignIn.getClient(getContext(), this.googleSignInOptions);
        this.birthdayActivityResultLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.narvii.account.s
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj) {
                this.f1751a.lambda$onCreate$0((ActivityResult) obj);
            }
        });
    }
}
