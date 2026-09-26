package com.narvii.paging.adapter;

import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.Callback;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class NVRecyclerViewRequestAdapter<T extends ApiResponse> extends NVRecyclerViewBaseAdapter {

    @Nullable
    private String errorMsg;

    @NotNull
    private NVRecyclerViewRequestAdapter$listener$1 listener;

    @Nullable
    private ApiRequest request;

    @Nullable
    private T response;

    @NotNull
    public abstract ApiRequest createRequest();

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    @Nullable
    public String getErrorMessage() {
        return this.errorMsg;
    }

    @Nullable
    public final T getResponse() {
        return this.response;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        return this.request != null;
    }

    protected void onObjectResponse(@Nullable ApiRequest apiRequest, @Nullable T t5) {
        this.errorMsg = null;
        setResponse(t5);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        this.errorMsg = null;
        sendRequest();
        updateStatus();
    }

    @NotNull
    protected abstract Class<? extends T> responseType();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.narvii.paging.adapter.NVRecyclerViewRequestAdapter$listener$1] */
    public NVRecyclerViewRequestAdapter(@NotNull NVContext ctx) {
        super(ctx);
        t.j(ctx, "ctx");
        final Class<? extends T> clsResponseType = responseType();
        this.listener = new ApiResponseListener<T>(this, clsResponseType) { // from class: com.narvii.paging.adapter.NVRecyclerViewRequestAdapter$listener$1
            final /* synthetic */ NVRecyclerViewRequestAdapter<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                ((NVRecyclerViewRequestAdapter) this.this$0).request = null;
                this.this$0.onFailResponse(apiRequest, str, apiResponse);
            }

            /* JADX WARN: Incorrect types in method signature: (Lcom/narvii/util/http/ApiRequest;TT;)V */
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ((NVRecyclerViewRequestAdapter) this.this$0).request = null;
                this.this$0.onObjectResponse(apiRequest, apiResponse);
            }
        };
    }

    private final void sendRequest() {
        T service = getService("api");
        t.i(service, "getService(...)");
        ApiService apiService = (ApiService) service;
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
        }
        ApiRequest apiRequestCreateRequest = createRequest();
        this.request = apiRequestCreateRequest;
        if (apiRequestCreateRequest != null) {
            apiService.exec(apiRequestCreateRequest, this.listener);
        }
    }

    protected void onFailResponse(@Nullable ApiRequest apiRequest, @Nullable String str, @Nullable ApiResponse apiResponse) {
        this.errorMsg = str;
        updateStatus();
    }

    public final void setResponse(@Nullable T t5) {
        this.response = t5;
        updateStatus();
    }

    private final void updateStatus() {
        notifyDataSetChanged();
        this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.adapter.b
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        if (!isEmpty() && this.request == null && this.errorMsg == null) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        if (this.response == null) {
            sendRequest();
        }
    }
}
