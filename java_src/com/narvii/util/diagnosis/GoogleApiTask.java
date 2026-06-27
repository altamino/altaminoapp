package com.narvii.util.diagnosis;

import com.google.android.gms.common.GooglePlayServicesUtil;
import com.narvii.app.NVContext;

/* loaded from: classes3.dex */
public class GoogleApiTask extends DiagnosisTask {
    GoogleApiTask(NVContext nVContext) {
        super(nVContext, "GooglePlay");
    }

    @Override // java.lang.Runnable
    public void run() {
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.context.getContext());
        this.result = Boolean.valueOf(iIsGooglePlayServicesAvailable == 0);
        if (this.result.booleanValue()) {
            return;
        }
        switch (iIsGooglePlayServicesAvailable) {
            case 1:
                this.error = "SERVICE_MISSING";
                break;
            case 2:
                this.error = "SERVICE_VERSION_UPDATE_REQUIRED";
                break;
            case 3:
                this.error = "SERVICE_DISABLED";
                break;
            case 4:
                this.error = "SIGN_IN_REQUIRED";
                break;
            case 5:
                this.error = "INVALID_ACCOUNT";
                break;
            case 6:
                this.error = "RESOLUTION_REQUIRED";
                break;
            case 7:
                this.error = "NETWORK_ERROR";
                break;
            case 8:
                this.error = "INTERNAL_ERROR";
                break;
            case 9:
                this.error = "SERVICE_INVALID";
                break;
            case 10:
                this.error = "DEVELOPER_ERROR";
                break;
            case 11:
                this.error = "LICENSE_CHECK_FAILED";
                break;
            case 12:
            default:
                this.error = "CODE " + iIsGooglePlayServicesAvailable;
                break;
            case 13:
                this.error = "CANCELED";
                break;
            case 14:
                this.error = "TIMEOUT";
                break;
            case 15:
                this.error = "INTERRUPTED";
                break;
            case 16:
                this.error = "API_UNAVAILABLE";
                break;
            case 17:
                this.error = "SIGN_IN_FAILED";
                break;
            case 18:
                this.error = "SERVICE_UPDATING";
                break;
            case 19:
                this.error = "SERVICE_MISSING_PERMISSION";
                break;
            case 20:
                this.error = "RESTRICTED_PROFILE";
                break;
        }
    }
}
