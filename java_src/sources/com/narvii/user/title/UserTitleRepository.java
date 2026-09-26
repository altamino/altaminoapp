package com.narvii.user.title;

import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserTitle;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class UserTitleRepository {
    int cid;
    NVContext nvContext;

    public void adminUserTitleList(String str, List<UserTitle> list, ApiResponseListener<ApiResponse> apiResponseListener) {
        ApiService apiService = (ApiService) this.nvContext.getService("api");
        ArrayNode arrayNode = (ArrayNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(list);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("titles", arrayNode);
        apiService.exec(ApiRequest.builder().communityId(this.cid).post().path("user-profile/" + str + "/admin").param("adminOpName", 207).param("adminOpValue", objectNodeCreateObjectNode).build(), apiResponseListener);
    }

    public ApiRequest getAllUserTitleList(ApiResponseListener<CommunityUseTitleListResponse> apiResponseListener) {
        ApiService apiService = (ApiService) this.nvContext.getService("api");
        ApiRequest apiRequestBuild = ApiRequest.builder().communityId(this.cid).path("community/user-titles").build();
        apiService.exec(apiRequestBuild, apiResponseListener);
        return apiRequestBuild;
    }

    public UserTitleRepository(NVContext nVContext, int i10) {
        this.nvContext = nVContext;
        this.cid = i10;
    }
}
