package com.narvii.account.settings;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.IdentityProviders;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.narvii.amino.mastes.R;
import com.narvii.util.NVToast;

/* loaded from: classes2.dex */
public class GoogleConnectFragment extends ConfirmPasswordFragment implements GoogleApiClient.OnConnectionFailedListener, GoogleApiClient.ConnectionCallbacks {
    GoogleApiClient googleApiClient;
    boolean requested;

    @Override // com.narvii.account.settings.ConfirmPasswordFragment
    protected int getAuthType() {
        return 30;
    }

    @Override // com.narvii.account.settings.ConfirmPasswordFragment
    protected int getThirdPartyAccountName() {
        return R.string.account_google;
    }

    @Override // com.narvii.account.settings.ConfirmPasswordFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.googleApiClient = new GoogleApiClient.Builder(getContext()).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(Auth.CREDENTIALS_API).build();
        if (this.googleApiClient.isConnected()) {
            return;
        }
        this.googleApiClient.connect();
    }

    @Override // com.narvii.account.settings.ConfirmPasswordFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        try {
            this.googleApiClient.disconnect();
        } catch (Exception unused) {
        }
        super.onDestroy();
    }

    @Override // com.narvii.account.settings.ConfirmPasswordFragment
    public void performLogin() {
        if (this.googleApiClient.isConnected()) {
            try {
                startIntentSenderForResult(Auth.CredentialsApi.getHintPickerIntent(this.googleApiClient, new HintRequest.Builder().setHintPickerConfig(new CredentialPickerConfig.Builder().setShowCancelButton(false).build()).setAccountTypes(IdentityProviders.GOOGLE).setIdTokenRequested(true).build()).getIntentSender(), 1, null, 0, 0, 0, null);
            } catch (Exception unused) {
            }
        } else {
            this.requested = true;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        if (this.requested) {
            performLogin();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        NVToast.makeText(getContext(), getString(R.string.google_service_not_available), 0).show();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
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
            sb.append(':');
            sb.append(connectionResult.getErrorMessage());
        }
        sb.append(')');
        NVToast.makeText(getContext(), sb.toString(), 0).show();
    }

    @Override // com.narvii.account.settings.ConfirmPasswordFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        Credential credential;
        if (i != 1 || intent == null || (credential = (Credential) intent.getParcelableExtra(Credential.EXTRA_KEY)) == null || credential.getIdTokens() == null || credential.getIdTokens().isEmpty()) {
            return;
        }
        connectAccount(credential.getIdTokens().get(0).getIdToken());
    }
}
