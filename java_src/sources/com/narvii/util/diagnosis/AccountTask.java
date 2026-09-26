package com.narvii.util.diagnosis;

import com.narvii.app.NVContext;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.FullCommunityResponse;
import com.narvii.config.ConfigService;
import com.narvii.model.User;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class AccountTask extends DiagnosisTask {
    AccountTask(NVContext nVContext) {
        super(nVContext, "Account");
    }

    @Override // java.lang.Runnable
    public void run() {
        int communityId = ((ConfigService) this.context.getService("config")).getCommunityId();
        ApiService apiService = (ApiService) this.context.getService("api");
        if (communityId > 0) {
            apiService.exec(ApiRequest.builder().scopeCommunityId(communityId).path("/community/info").build(), new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.util.diagnosis.AccountTask.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List list, String str, ApiResponse apiResponse, Throwable th) {
                    String str2;
                    AccountTask accountTask = AccountTask.this;
                    accountTask.result = Boolean.FALSE;
                    if (i10 > 0) {
                        str2 = i10 + " " + str;
                    } else {
                        str2 = null;
                    }
                    accountTask.error = str2;
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                    CommunityUserInfo communityUserInfo;
                    User user;
                    if (!fullCommunityResponse.isCurrentUserJoined || (communityUserInfo = fullCommunityResponse.currentUserInfo) == null || (user = communityUserInfo.userProfile) == null) {
                        AccountTask accountTask = AccountTask.this;
                        accountTask.result = Boolean.FALSE;
                        accountTask.error = "Not joined";
                    } else {
                        if (user.status == 0) {
                            AccountTask.this.result = Boolean.TRUE;
                            return;
                        }
                        AccountTask accountTask2 = AccountTask.this;
                        accountTask2.result = Boolean.FALSE;
                        accountTask2.error = "Status " + fullCommunityResponse.currentUserInfo.userProfile.status;
                    }
                }
            });
        } else {
            apiService.exec(ApiRequest.builder().global().path("/account").build(), new ApiResponseListener<AccountResponse>(AccountResponse.class) { // from class: com.narvii.util.diagnosis.AccountTask.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List list, String str, ApiResponse apiResponse, Throwable th) {
                    String str2;
                    AccountTask accountTask = AccountTask.this;
                    accountTask.result = Boolean.FALSE;
                    if (i10 > 0) {
                        str2 = i10 + " " + str;
                    } else {
                        str2 = null;
                    }
                    accountTask.error = str2;
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                    if (accountResponse.account.status == 0) {
                        AccountTask.this.result = Boolean.TRUE;
                        return;
                    }
                    AccountTask accountTask = AccountTask.this;
                    accountTask.result = Boolean.FALSE;
                    accountTask.error = "Status " + accountResponse.account.status;
                }
            });
        }
    }
}
