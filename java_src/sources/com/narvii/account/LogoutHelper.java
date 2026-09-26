package com.narvii.account;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.narvii.account.liveramp.LiveRampHelper;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.optinads.OptinAds;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class LogoutHelper {
    private NVContext context;

    public void logout(final Callback<Boolean> callback) {
        final AccountService accountService = (AccountService) this.context.getService("account");
        if (!accountService.hasAccount()) {
            if (callback != null) {
                callback.call(Boolean.TRUE);
                return;
            }
            return;
        }
        com.google.firebase.crashlytics.g.a().d("");
        OptinAds.sendAdLevelUserProperty(this.context);
        ((MembershipService) this.context.getService("membership")).sendAminoPlusUserProperty(null);
        FirebaseAnalytics.getInstance(this.context.getContext()).c(AccountService.PREFS_AGE, null);
        new MixpanelAnalytics(this.context.getContext()).logout();
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.setCancelable(false);
        progressDialog.show();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().global().post().path("/auth/logout");
        builder.param(a0.a.o, accountService.getDeviceId());
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        builder.tag(ApiService.DISABLE_RESEND_PUBLIC_KEY_TAG);
        ((ApiService) this.context.getService("api")).exec(builder.build(), new ApiResponseListener<AuidResponse>(AuidResponse.class) { // from class: com.narvii.account.LogoutHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                accountService.logout(true);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AuidResponse auidResponse) throws Exception {
                AuidService auidService = (AuidService) LogoutHelper.this.context.getService("auid");
                if (auidService != null) {
                    auidService.saveAuid(auidResponse.getAuid());
                }
                progressDialog.dismiss();
                accountService.logout(true);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
                LiveRampHelper.clearLRUser();
            }
        });
    }

    public LogoutHelper(NVContext nVContext) {
        this.context = nVContext;
    }
}
