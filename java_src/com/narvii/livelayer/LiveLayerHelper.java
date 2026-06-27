package com.narvii.livelayer;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.onlinestatus.OnlineHelper;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
public class LiveLayerHelper {
    int cid;
    NVContext nvContext;
    OnlineHelper onlineHelper;
    LiveLayerPreloadHelper userIconsPreloadHelper;

    public LiveLayerHelper(NVContext nVContext, int i) {
        this.nvContext = nVContext;
        this.cid = i;
        this.onlineHelper = new OnlineHelper(nVContext);
    }

    public void requestOnlineMembers(String str, int i, final boolean z, final boolean z2, final Callback<UserListResponse> callback) {
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().path("live-layer").communityId(this.cid).param("topic", getNdtopic(str)).param(TtmlNode.START, 0).param("size", Integer.valueOf(i)).build(), new ApiResponseListener<UserListResponse>(UserListResponse.class) { // from class: com.narvii.livelayer.LiveLayerHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, final UserListResponse userListResponse) throws Exception {
                User userProfile;
                super.onFinish(apiRequest, (ApiRequest) userListResponse);
                List<User> listFilter = new FilterHelper(LiveLayerHelper.this.nvContext).filter(userListResponse.userList);
                if (z && (userProfile = ((AccountService) LiveLayerHelper.this.nvContext.getService("account")).getUserProfile()) != null && listFilter != null && !Utils.containsId(listFilter, userProfile.id()) && LiveLayerHelper.this.onlineHelper.isOnline()) {
                    listFilter.add(0, userProfile);
                    userListResponse.userProfileCount++;
                }
                userListResponse.userList = listFilter;
                if (!z2) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(userListResponse);
                        return;
                    }
                    return;
                }
                LiveLayerPreloadHelper liveLayerPreloadHelper = LiveLayerHelper.this.userIconsPreloadHelper;
                if (liveLayerPreloadHelper != null) {
                    liveLayerPreloadHelper.discard();
                }
                LiveLayerHelper liveLayerHelper = LiveLayerHelper.this;
                liveLayerHelper.userIconsPreloadHelper = new LiveLayerPreloadHelper(liveLayerHelper.nvContext);
                LiveLayerHelper.this.userIconsPreloadHelper.preloadUserIcons(userListResponse.userList, 4, 2, LiveLayerHelper.this.nvContext.getContext().getResources().getDimensionPixelSize(R.dimen.live_layer_online_avatar_width), new Callback() { // from class: com.narvii.livelayer.LiveLayerHelper.1.1
                    @Override // com.narvii.util.Callback
                    public void call(Object obj) {
                        Callback callback3 = callback;
                        if (callback3 != null) {
                            callback3.call(userListResponse);
                        }
                    }
                });
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str2, apiResponse, th);
            }
        });
    }

    public String getNdtopic(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        if (this.cid == 0) {
            str2 = "ndtopic:g:";
        } else {
            str2 = "ndtopic:x" + this.cid + ":";
        }
        return str2 + str;
    }
}
