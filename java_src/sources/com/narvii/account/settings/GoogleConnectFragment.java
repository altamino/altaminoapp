package com.narvii.account.settings;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.IdentityProviders;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.narvii.amino.master.R;
import com.narvii.util.NVToast;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleConnectFragment extends ThirdPartyConfirmPasswordFragment implements GoogleApiClient.OnConnectionFailedListener, GoogleApiClient.ConnectionCallbacks {
    GoogleApiClient googleApiClient;
    boolean requested;

    @Override // com.narvii.account.settings.ThirdPartyConfirmPasswordFragment
    protected int getAuthType() {
        return 30;
    }

    @Override // com.narvii.account.settings.ThirdPartyConfirmPasswordFragment
    protected int getThirdPartyAccountName() {
        return R.string.account_google;
    }

    @Override // com.narvii.account.settings.ThirdPartyConfirmPasswordFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        Credential credential;
        if (i10 != 1 || intent == null || (credential = (Credential) intent.getParcelableExtra(Credential.EXTRA_KEY)) == null || credential.getIdTokens() == null || credential.getIdTokens().isEmpty()) {
            return;
        }
        connectAccount(credential.getIdTokens().get(0).getIdToken());
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnected(@Nullable Bundle bundle) {
        if (this.requested) {
            performLogin();
        }
    }

    @Override // com.narvii.account.settings.ThirdPartyConfirmPasswordFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        try {
            this.googleApiClient.disconnect();
        } catch (Exception unused) {
        }
        super.onDestroy();
    }

    @Override // com.narvii.account.settings.ThirdPartyConfirmPasswordFragment
    public void performLogin() {
        if (!this.googleApiClient.isConnected()) {
            this.requested = true;
            return;
        }
        try {
            startIntentSenderForResult(Auth.CredentialsApi.getHintPickerIntent(this.googleApiClient, new HintRequest.Builder().setHintPickerConfig(new CredentialPickerConfig.Builder().setShowCancelButton(false).build()).setAccountTypes(IdentityProviders.GOOGLE).setIdTokenRequested(true).build()).getIntentSender(), 1, null, 0, 0, 0, null);
        } catch (Exception unused) {
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        if (connectionResult.hasResolution()) {
            try {
                connectionResult.startResolutionForResult(getActivity(), 1);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        StringBuilder sb = new StringBuilder(getString(R.string.google_service_not_available));
        sb.append(" (");
        sb.append(connectionResult.getErrorCode());
        if (!TextUtils.isEmpty(connectionResult.getErrorMessage())) {
            sb.append(kotlinx.serialization.json.internal.b.COLON);
            sb.append(connectionResult.getErrorMessage());
        }
        sb.append(')');
        NVToast.makeText(getContext(), sb.toString(), 0).show();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnectionSuspended(int i10) {
        NVToast.makeText(getContext(), getString(R.string.google_service_not_available), 0).show();
    }

    @Override // com.narvii.account.settings.ThirdPartyConfirmPasswordFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        GoogleApiClient googleApiClientBuild = new GoogleApiClient.Builder(getContext()).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(Auth.CREDENTIALS_API).build();
        this.googleApiClient = googleApiClientBuild;
        if (!googleApiClientBuild.isConnected()) {
            this.googleApiClient.connect();
        }
    }
}
