package com.narvii.user.title;

import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserTitle;
import com.narvii.util.Constants;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.List;

/* loaded from: classes3.dex */
public class UserTitleRepository {
    int cid;
    NVContext nvContext;

    public UserTitleRepository(NVContext nVContext, int i) {
        this.nvContext = nVContext;
        this.cid = i;
    }

    public ApiRequest getAllUserTitleList(ApiResponseListener<CommunityUseTitleListResponse> apiResponseListener) {
        ApiService apiService = (ApiService) this.nvContext.getService("api");
        ApiRequest apiRequestBuild = ApiRequest.builder().communityId(this.cid).path("community/user-titles").build();
        apiService.exec(apiRequestBuild, apiResponseListener);
        return apiRequestBuild;
    }

    public void adminUserTitleList(String str, List<UserTitle> list, ApiResponseListener<ApiResponse> apiResponseListener) {
        ApiService apiService = (ApiService) this.nvContext.getService("api");
        ArrayNode arrayNode = (ArrayNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(list);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("titles", arrayNode);
        apiService.exec(ApiRequest.builder().communityId(this.cid).post().path("user-profile/" + str + "/admin").param("adminOpName", Integer.valueOf(Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE)).param("adminOpValue", objectNodeCreateObjectNode).build(), apiResponseListener);
    }
}
