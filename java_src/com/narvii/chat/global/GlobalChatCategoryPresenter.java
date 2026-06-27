package com.narvii.chat.global;

import com.narvii.app.NVContext;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;

/* loaded from: classes2.dex */
public class GlobalChatCategoryPresenter {
    private ApiService apiService;

    public GlobalChatCategoryPresenter(NVContext nVContext) {
        this.apiService = (ApiService) nVContext.getService("api");
    }

    public void loadThreadsInCategory(String str, String str2, ApiResponseListener<CategoryThreadResponse> apiResponseListener) {
        ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread/explore/categories/" + str);
        builderPath.param("size", 20);
        builderPath.param("pagingType", "t");
        builderPath.param("pageToken", str2);
        this.apiService.exec(builderPath.build(), apiResponseListener);
    }
}
