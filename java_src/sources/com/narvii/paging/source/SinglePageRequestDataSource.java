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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SinglePageRequestDataSource<T extends NVObject, E extends ListResponse<? extends T>> extends DataSource<T> {

    @Nullable
    private final ApiService apiService;

    @Nullable
    private PageRequestCallback requestCallback;

    @NotNull
    private ApiResponseListener<E> responseListener;

    @Nullable
    public abstract ApiRequest createRequest();

    @Nullable
    public final ApiService getApiService() {
        return this.apiService;
    }

    @Nullable
    public final PageRequestCallback getRequestCallback() {
        return this.requestCallback;
    }

    @NotNull
    public final ApiResponseListener<E> getResponseListener$Lib_release() {
        return this.responseListener;
    }

    @Override // com.narvii.paging.source.DataSource
    public void onErrorRetry() {
        loadPage(null);
    }

    @NotNull
    public abstract Class<E> responseType();

    public final void setRequestCallback(@Nullable PageRequestCallback pageRequestCallback) {
        this.requestCallback = pageRequestCallback;
    }

    public final void setResponseListener$Lib_release(@NotNull ApiResponseListener<E> apiResponseListener) {
        t.j(apiResponseListener, "<set-?>");
        this.responseListener = apiResponseListener;
    }

    @Nullable
    public List<T> filterResponseList(@Nullable List<? extends T> list) {
        return new FilterHelper(getContext()).filter(list);
    }

    public SinglePageRequestDataSource(@Nullable NVContext nVContext) {
        ApiService apiService;
        super(nVContext);
        final Class<E> clsResponseType = responseType();
        this.responseListener = (ApiResponseListener<E>) new ApiResponseListener<E>(this, clsResponseType) { // from class: com.narvii.paging.source.SinglePageRequestDataSource$responseListener$1
            final /* synthetic */ SinglePageRequestDataSource<T, E> this$0;

            {
                this.this$0 = this;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<? extends NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                t.j(t5, "t");
                super.onFail(apiRequest, i10, list, str, apiResponse, t5);
                this.this$0.pageLoadFailed(str);
                this.this$0.notifyPageSourceChange();
            }

            /* JADX WARN: Incorrect types in method signature: (Lcom/narvii/util/http/ApiRequest;TE;)V */
            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull ListResponse resp) throws Exception {
                t.j(req, "req");
                t.j(resp, "resp");
                super.onFinish(req, resp);
                this.this$0.pageLoadFinished();
                SinglePageRequestDataSource<T, E> singlePageRequestDataSource = this.this$0;
                List list = resp.list();
                if (!(list instanceof List)) {
                    list = null;
                }
                List listFilterResponseList = singlePageRequestDataSource.filterResponseList((List<? extends T>) list);
                PageStorage pageStorage = this.this$0.getPageStorage();
                if (pageStorage != null) {
                    pageStorage.appendPage(listFilterResponseList, this.this$0);
                }
                this.this$0.notifyPageSourceChange();
            }
        };
        if (nVContext != null) {
            apiService = (ApiService) nVContext.getService("api");
        } else {
            apiService = null;
        }
        this.apiService = apiService;
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

    public final void loadPage(@Nullable PageRequestCallback pageRequestCallback) {
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

    @Override // com.narvii.paging.source.DataSource
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        loadPage(pageRequestCallback);
    }
}
