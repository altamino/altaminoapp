package com.narvii.prompt;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.api.AccountResponse;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;

/* loaded from: classes3.dex */
public class AccountPopUpUtils {
    public static final int POPUP_STATUS_ONE_TIME = 1;
    public static final String POPUP_TYPE_ADS = "ads";

    public static void reportPopUpShown(NVContext nVContext, String str) {
        ApiService apiService = (ApiService) nVContext.getService("api");
        final AccountService accountService = (AccountService) nVContext.getService("account");
        apiService.exec(ApiRequest.builder().global().path("account/popup/" + str).post().tag(ApiService.ASYNC_CALL_TAG).tag("userId", accountService.getUserId()).build(), new ApiResponseListener<AccountResponse>(AccountResponse.class) { // from class: com.narvii.prompt.AccountPopUpUtils.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) accountResponse);
                if (accountResponse.account == null || !Utils.isEqualsNotNull(apiRequest.tag("userId"), accountService.getUserId())) {
                    return;
                }
                accountService.updateAccountSilently(accountResponse.account);
            }
        });
    }
}
