package com.narvii.account;

import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes2.dex */
public class LogoutHelper {
    private NVContext context;

    public LogoutHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    public void logout(final Callback<Boolean> callback) {
        final AccountService accountService = (AccountService) this.context.getService("account");
        if (accountService.hasAccount()) {
            final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
            progressDialog.setCancelable(false);
            progressDialog.show();
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.https().global().post().path("/auth/logout");
            builder.param("deviceID", accountService.getDeviceId());
            builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
            if (NVApplication.CLIENT_TYPE == 101) {
                ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
                arrayNodeCreateArrayNode.add(((ConfigService) this.context.getService("config")).getCommunityId());
                builder.param("ndcIDs", arrayNodeCreateArrayNode);
            }
            ((ApiService) this.context.getService("api")).exec(builder.build(), new ApiResponseListener<AuidResponse>(AuidResponse.class) { // from class: com.narvii.account.LogoutHelper.1
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
                        callback2.call(true);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    progressDialog.dismiss();
                    accountService.logout(true);
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(false);
                    }
                }
            });
        }
    }
}
