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

/* loaded from: classes3.dex */
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
                public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                    CommunityUserInfo communityUserInfo;
                    User user;
                    if (!fullCommunityResponse.isCurrentUserJoined || (communityUserInfo = fullCommunityResponse.currentUserInfo) == null || (user = communityUserInfo.userProfile) == null) {
                        AccountTask.this.result = false;
                        AccountTask.this.error = "Not joined";
                    } else {
                        if (user.status == 0) {
                            AccountTask.this.result = true;
                            return;
                        }
                        AccountTask.this.result = false;
                        AccountTask.this.error = "Status " + fullCommunityResponse.currentUserInfo.userProfile.status;
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List list, String str, ApiResponse apiResponse, Throwable th) {
                    String str2;
                    AccountTask.this.result = false;
                    AccountTask accountTask = AccountTask.this;
                    if (i > 0) {
                        str2 = i + " " + str;
                    } else {
                        str2 = null;
                    }
                    accountTask.error = str2;
                }
            });
        } else {
            apiService.exec(ApiRequest.builder().global().path("/account").build(), new ApiResponseListener<AccountResponse>(AccountResponse.class) { // from class: com.narvii.util.diagnosis.AccountTask.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                    if (accountResponse.account.status == 0) {
                        AccountTask.this.result = true;
                        return;
                    }
                    AccountTask.this.result = false;
                    AccountTask.this.error = "Status " + accountResponse.account.status;
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List list, String str, ApiResponse apiResponse, Throwable th) {
                    String str2;
                    AccountTask.this.result = false;
                    AccountTask accountTask = AccountTask.this;
                    if (i > 0) {
                        str2 = i + " " + str;
                    } else {
                        str2 = null;
                    }
                    accountTask.error = str2;
                }
            });
        }
    }
}
