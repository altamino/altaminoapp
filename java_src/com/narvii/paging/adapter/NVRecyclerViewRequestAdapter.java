package com.narvii.paging.adapter;

import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.Callback;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVRecyclerViewRequestAdapter.kt */
/* loaded from: classes3.dex */
public abstract class NVRecyclerViewRequestAdapter<T extends ApiResponse> extends NVRecyclerViewBaseAdapter {
    private String errorMsg;
    private NVRecyclerViewRequestAdapter$listener$1 listener;
    private ApiRequest request;
    private T response;

    public abstract ApiRequest createRequest();

    protected abstract Class<? extends T> responseType();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.narvii.paging.adapter.NVRecyclerViewRequestAdapter$listener$1] */
    public NVRecyclerViewRequestAdapter(NVContext ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        final Class<? extends T> clsResponseType = responseType();
        this.listener = new ApiResponseListener<T>(clsResponseType) { // from class: com.narvii.paging.adapter.NVRecyclerViewRequestAdapter$listener$1
            /* JADX WARN: Incorrect types in method signature: (Lcom/narvii/util/http/ApiRequest;TT;)V */
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                this.this$0.request = null;
                this.this$0.onObjectResponse(apiRequest, apiResponse);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                this.this$0.request = null;
                this.this$0.onFailResponse(apiRequest, str, apiResponse);
            }
        };
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        if (this.response == null) {
            sendRequest();
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        this.errorMsg = null;
        sendRequest();
        updateStatus();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        return !isEmpty() && this.request == null && this.errorMsg == null;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public String getErrorMessage() {
        return this.errorMsg;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        return this.request != null;
    }

    private final void sendRequest() {
        T service = getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"api\")");
        ApiService apiService = (ApiService) service;
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
        }
        this.request = createRequest();
        ApiRequest apiRequest2 = this.request;
        if (apiRequest2 != null) {
            apiService.exec(apiRequest2, this.listener);
        }
    }

    protected void onObjectResponse(ApiRequest apiRequest, T t) {
        this.errorMsg = null;
        setResponse(t);
    }

    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse) {
        this.errorMsg = str;
        updateStatus();
    }

    public final void setResponse(T t) {
        this.response = t;
        updateStatus();
    }

    public final T getResponse() {
        return this.response;
    }

    private final void updateStatus() {
        notifyDataSetChanged();
        this.dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.paging.adapter.NVRecyclerViewRequestAdapter.updateStatus.1
            @Override // com.narvii.util.Callback
            public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                dataSetChangeListener.onDataSetChanged();
            }
        });
    }
}
