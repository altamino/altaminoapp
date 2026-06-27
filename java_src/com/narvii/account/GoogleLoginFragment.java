package com.narvii.account;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.IdentityProviders;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.location.GPSCoordinate;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.AppsflyerManager;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import java.util.List;

/* loaded from: classes2.dex */
public class GoogleLoginFragment extends ThirdPartyAccountBaseFragment implements GoogleApiClient.OnConnectionFailedListener, GoogleApiClient.ConnectionCallbacks {
    public static final int REQUEST_TYPE_AUTOSIGNUP = 1;
    public static final int REQUEST_TYPE_LOGIN = 2;
    public static final int REQUEST_TYPE_SIGNUP = 3;
    String email;
    GoogleApiClient googleApiClient;
    String name;
    String profileUri;
    ApiRequest request;
    int requestType;

    @Override // com.narvii.account.ThirdPartyAccountBaseFragment
    protected String getSignUpMethod() {
        return AccountBaseFragment.SIGN_UP_METHOD_GOOGLE;
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.googleApiClient = new GoogleApiClient.Builder(getContext()).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(Auth.CREDENTIALS_API).build();
        if (this.googleApiClient.isConnected()) {
            return;
        }
        this.googleApiClient.connect();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        try {
            this.googleApiClient.disconnect();
        } catch (Exception unused) {
        }
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return new View(layoutInflater.getContext());
    }

    public void requestLogin(int i) {
        if (this.request != null) {
            ((ApiService) getService("api")).abort(this.request);
            this.request = null;
        }
        if (this.googleApiClient.isConnected()) {
            performLogin(i);
        } else {
            this.requestType = i;
            if (!this.googleApiClient.isConnecting()) {
                this.googleApiClient.connect();
            }
        }
        if (i == 2 || i == 3) {
            startSubmit();
        }
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

    public void requestAutoLogin() {
        if (this.requestType == 0) {
            requestLogin(1);
        }
    }

    public void cancelAutoLogin() {
        if (this.requestType == 1) {
            this.requestType = 0;
        }
    }

    protected void performLogin(int i) {
        if (i > 1) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            if (i == 3) {
                loginActivity.statMaxLoginStep = 0;
                loginActivity.statMaxSignupSetp = 6;
            } else {
                loginActivity.statMaxLoginStep = 6;
                loginActivity.statMaxSignupSetp = 0;
            }
            loginActivity.statType = 4;
        }
        this.isLoginFlow = i == 2;
        this.requestType = i;
        try {
            startIntentSenderForResult(Auth.CredentialsApi.getHintPickerIntent(this.googleApiClient, new HintRequest.Builder().setHintPickerConfig(new CredentialPickerConfig.Builder().setShowCancelButton(false).setPrompt(i == 2 ? 2 : 3).build()).setAccountTypes(IdentityProviders.GOOGLE).setIdTokenRequested(true).build()).getIntentSender(), 1, null, 0, 0, 0, null);
            AppsflyerManager.checkLinkForce();
        } catch (Exception unused) {
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        int i = this.requestType;
        if (i != 0) {
            performLogin(i);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        int i2 = this.requestType;
        if (i2 == 2 || i2 == 3) {
            setLastError(6, "Google service not available");
            NVToast.makeText(getContext(), R.string.google_service_not_available, 0).show();
            finishWithResult(false, 0, "ConnectionSuspended");
        } else if (i2 == 1) {
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AutoSignupQuited", "method", "Google", "code", 30, "reason", "ConnectionSuspended");
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        if (connectionResult.hasResolution() && this.requestType != 1) {
            try {
                connectionResult.startResolutionForResult(getActivity(), 1);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        int i = this.requestType;
        if (i != 2 && i != 3) {
            if (i == 1) {
                ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AutoSignupQuited", "method", "Google", "code", Integer.valueOf(connectionResult.getErrorCode()), "reason", "ConnectionFailed", AccountNotice.LEVEL_MESSAGE, connectionResult.getErrorMessage());
                return;
            }
            return;
        }
        setLastError(6, "Google service not available");
        StringBuilder sb = new StringBuilder(getString(R.string.google_service_not_available));
        sb.append(" (");
        sb.append(connectionResult.getErrorCode());
        if (!TextUtils.isEmpty(connectionResult.getErrorMessage())) {
            sb.append(':');
            sb.append(connectionResult.getErrorMessage());
        }
        sb.append(')');
        finishWithResult(false, 10, sb.toString());
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1) {
            Credential credential = intent != null ? (Credential) intent.getParcelableExtra(Credential.EXTRA_KEY) : null;
            if (credential != null) {
                if (credential.getIdTokens() != null && !credential.getIdTokens().isEmpty()) {
                    this.email = credential.getId();
                    this.name = credential.getName();
                    this.profileUri = credential.getProfilePictureUri() == null ? null : credential.getProfilePictureUri().toString();
                    onAccess(credential.getIdTokens().get(0).getIdToken());
                    startSubmit();
                    if (this.requestType == 1) {
                        LoggingService loggingService = (LoggingService) getService("logging");
                        Object[] objArr = new Object[6];
                        objArr[0] = "method";
                        objArr[1] = "Google";
                        objArr[2] = "email";
                        objArr[3] = this.email;
                        objArr[4] = "hasProfilePicture";
                        objArr[5] = Boolean.valueOf(this.profileUri != null);
                        loggingService.lambda$logEvent$0$LoggingServiceImpl("AutoSignupStarting", objArr);
                        return;
                    }
                    return;
                }
                NVToast.makeText(getContext(), R.string.google_login_down, 1).show();
                ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AccountError", "email", credential.getId(), "code", 748, "reason", "GoogleAuthIdTokenMissing");
            } else if (i2 == 1002) {
                NVToast.makeText(getContext(), R.string.account_no_google_account_available, 0).show();
            }
            int i3 = this.requestType;
            if (i3 == 2 || i3 == 3) {
                finishWithResult(false, i2, null);
            }
            if (this.requestType == 1) {
                ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AutoSignupQuited", "method", "Google", "code", Integer.valueOf(i2), "reason", "Cancel");
            }
        }
    }

    private void onAccess(final String str) {
        ApiService apiService = (ApiService) getService("api");
        AccountService accountService = (AccountService) getService("account");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/login");
        builder.param("deviceID", accountService.getDeviceId());
        builder.param("secret", "30 " + str);
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        GPSCoordinate location = getLocation();
        builder.param("latitude", Integer.valueOf(location == null ? 0 : location.latitudeE6()));
        builder.param("longitude", Integer.valueOf(location != null ? location.longitudeE6() : 0));
        builder.param("address", getAddress());
        builder.param("action", this.requestType == 1 ? "auto" : NotificationChannelHelper.CHANNEL_NORMAL);
        builder.tag("thirdPart", Boolean.TRUE);
        ApiRequest apiRequestBuild = builder.build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, new AccountResponseListener(this) { // from class: com.narvii.account.GoogleLoginFragment.1
            @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                accountResponse.sid.charAt(0);
                super.onFinish(apiRequest, accountResponse);
                Log.i("login success with google " + JacksonUtils.nodeString(json(), "account", "email"));
                GoogleLoginFragment.this.finishWithResult(true, 0, null);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                GoogleLoginFragment.this.finishThirdPartLoginWithResult("30 " + str, false, i, str2, apiRequest);
            }
        });
    }

    @Override // com.narvii.account.ThirdPartyAccountBaseFragment
    protected void requirePassword(String str) {
        if (this.requestType == 1) {
            FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            AgeGatingFragment ageGatingFragment = new AgeGatingFragment();
            Bundle bundle = new Bundle();
            bundle.putString("method", "AutoSignup");
            bundle.putString("thirdPartSecret", str);
            ageGatingFragment.setArguments(bundle);
            fragmentTransactionBeginTransaction.replace(R.id.frame, ageGatingFragment).addToBackStack(null).commitAllowingStateLoss();
            return;
        }
        requirePasswordNext(str);
    }

    public void requirePasswordNext(String str) {
        super.requirePassword(str);
    }

    @Override // com.narvii.account.ThirdPartyAccountBaseFragment
    protected void queryThirdPartyInfo(final ThirdPartyAccountBaseFragment.QueryThirdPartyInfoCallBack queryThirdPartyInfoCallBack) {
        if (TextUtils.isEmpty(this.profileUri)) {
            queryThirdPartyInfoCallBack.onComplete(this.name, this.profileUri);
        } else {
            startSubmit();
            saveImage(this.profileUri, new ThirdPartyAccountBaseFragment.SaveImageCallBack() { // from class: com.narvii.account.GoogleLoginFragment.2
                @Override // com.narvii.account.ThirdPartyAccountBaseFragment.SaveImageCallBack
                public void onCompleted(String str) {
                    GoogleLoginFragment.this.cancelSubmit();
                    queryThirdPartyInfoCallBack.onComplete(GoogleLoginFragment.this.name, str);
                }
            });
        }
    }

    @Override // com.narvii.account.AccountBaseFragment
    public void goToSetPasswordPage(Fragment fragment) {
        fragment.getArguments().putBoolean("autoSignup", this.requestType == 1);
        super.goToSetPasswordPage(fragment);
    }
}
