package com.narvii.paging.source;

import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.paging.storage.PageStorage;
import com.narvii.util.FilterHelper;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SinglePageRequestDataSource.kt */
/* loaded from: classes3.dex */
public abstract class SinglePageRequestDataSource<T extends NVObject, E extends ListResponse<? extends T>> extends DataSource<T> {
    private final ApiService apiService;
    private PageRequestCallback requestCallback;
    private ApiResponseListener<E> responseListener;

    public abstract ApiRequest createRequest();

    public abstract Class<E> responseType();

    public final ApiService getApiService() {
        return this.apiService;
    }

    public final PageRequestCallback getRequestCallback() {
        return this.requestCallback;
    }

    public final void setRequestCallback(PageRequestCallback pageRequestCallback) {
        this.requestCallback = pageRequestCallback;
    }

    public SinglePageRequestDataSource(NVContext nVContext) {
        super(nVContext);
        final Class<E> clsResponseType = responseType();
        this.responseListener = (ApiResponseListener<E>) new ApiResponseListener<E>(clsResponseType) { // from class: com.narvii.paging.source.SinglePageRequestDataSource$responseListener$1
            /* JADX WARN: Incorrect types in method signature: (Lcom/narvii/util/http/ApiRequest;TE;)V */
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest req, ListResponse resp) throws Exception {
                Intrinsics.checkParameterIsNotNull(req, "req");
                Intrinsics.checkParameterIsNotNull(resp, "resp");
                super.onFinish(req, (ApiRequest) resp);
                this.this$0.pageLoadFinished();
                SinglePageRequestDataSource singlePageRequestDataSource = this.this$0;
                List list = resp.list();
                if (!(list instanceof List)) {
                    list = null;
                }
                List listFilterResponseList = singlePageRequestDataSource.filterResponseList(list);
                PageStorage<T> pageStorage = this.this$0.getPageStorage();
                if (pageStorage != 0) {
                    pageStorage.appendPage(listFilterResponseList, this.this$0);
                }
                this.this$0.notifyPageSourceChange();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<? extends NameValuePair> list, String str, ApiResponse apiResponse, Throwable t) {
                Intrinsics.checkParameterIsNotNull(t, "t");
                super.onFail(apiRequest, i, list, str, apiResponse, t);
                this.this$0.pageLoadFailed(str);
                this.this$0.notifyPageSourceChange();
            }
        };
        this.apiService = nVContext != null ? (ApiService) nVContext.getService("api") : null;
    }

    @Override // com.narvii.paging.source.DataSource
    public void loadInitData() {
        super.loadInitData();
        pageLoadBegin();
        ApiRequest apiRequestCreateRequest = createRequest();
        if (apiRequestCreateRequest == null) {
            Log.e("request is null");
        }
        ApiService apiService = this.apiService;
        if (apiService != null) {
            apiService.exec(apiRequestCreateRequest, this.responseListener);
        }
    }

    public final ApiResponseListener<E> getResponseListener$Lib_release() {
        return this.responseListener;
    }

    public final void setResponseListener$Lib_release(ApiResponseListener<E> apiResponseListener) {
        Intrinsics.checkParameterIsNotNull(apiResponseListener, "<set-?>");
        this.responseListener = apiResponseListener;
    }

    public List<T> filterResponseList(List<? extends T> list) {
        return new FilterHelper(getContext()).filter(list);
    }

    @Override // com.narvii.paging.source.DataSource
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        loadPage(pageRequestCallback);
    }

    @Override // com.narvii.paging.source.DataSource
    public void onErrorRetry() {
        loadPage(null);
    }

    public final void loadPage(PageRequestCallback pageRequestCallback) {
        pageLoadBegin();
        ApiRequest apiRequestCreateRequest = createRequest();
        if (apiRequestCreateRequest == null) {
            if (pageRequestCallback != null) {
                pageRequestCallback.onPageRequestFinished(0);
                return;
            }
            return;
        }
        PageRequestCallback pageRequestCallback2 = this.requestCallback;
        if (pageRequestCallback2 != null) {
            pageRequestCallback2.onPageRequestFinished(2);
        }
        this.requestCallback = pageRequestCallback;
        ApiService apiService = this.apiService;
        if (apiService != null) {
            apiService.exec(apiRequestCreateRequest, this.responseListener);
        }
    }
}
