package com.narvii.master.invitation;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
public class InviteHelper {
    NVContext context;

    public interface LinkIdentifyInterface {
        void onIdentifyError(String str);

        void onIdentifySuccess(CommunityInviteResponse communityInviteResponse);
    }

    public InviteHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    public void requestInviteIdentify(String str, final LinkIdentifyInterface linkIdentifyInterface) {
        ((ApiService) NVApplication.instance().getService("api")).exec(new ApiRequest.Builder().global().path("/community/link-identify").param("q", str).build(), new ApiResponseListener<CommunityInviteResponse>(CommunityInviteResponse.class) { // from class: com.narvii.master.invitation.InviteHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) communityInviteResponse);
                LinkIdentifyInterface linkIdentifyInterface2 = linkIdentifyInterface;
                if (linkIdentifyInterface2 != null) {
                    linkIdentifyInterface2.onIdentifySuccess(communityInviteResponse);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                LinkIdentifyInterface linkIdentifyInterface2 = linkIdentifyInterface;
                if (linkIdentifyInterface2 != null) {
                    linkIdentifyInterface2.onIdentifyError(str2);
                }
            }
        });
    }
}
