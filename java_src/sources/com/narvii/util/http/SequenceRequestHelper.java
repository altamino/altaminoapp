package com.narvii.util.http;

import com.narvii.model.api.ApiResponse;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SequenceRequestHelper {
    private ApiService api;
    private int index;
    private ApiResponseListener<ApiResponse> listener;
    private boolean started;
    private ArrayList<ApiRequest> requestList = new ArrayList<>();
    private final ApiResponseListener<ApiResponse> batchListener = new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.util.http.SequenceRequestHelper.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            if (SequenceRequestHelper.this.started) {
                SequenceRequestHelper.this.listener.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            if (SequenceRequestHelper.this.started) {
                SequenceRequestHelper.this.index++;
                if (SequenceRequestHelper.this.index == SequenceRequestHelper.this.requestList.size()) {
                    SequenceRequestHelper.this.listener.onFinish(apiRequest, apiResponse);
                } else {
                    SequenceRequestHelper.this.api.exec((ApiRequest) SequenceRequestHelper.this.requestList.get(SequenceRequestHelper.this.index), this);
                }
            }
        }
    };

    public int getResponsed() {
        return this.index;
    }

    public void abort(ApiService apiService) {
        if (this.started) {
            this.started = false;
            int i10 = this.index;
            if (i10 < 0 || i10 >= this.requestList.size()) {
                return;
            }
            apiService.abort(this.requestList.get(this.index), this.batchListener);
        }
    }

    public void add(ApiRequest apiRequest) {
        if (this.started) {
            throw new IllegalStateException("cannot add request after starts");
        }
        this.requestList.add(apiRequest);
    }

    public int getCount() {
        return this.requestList.size();
    }

    public void start(ApiService apiService) {
        if (this.started) {
            throw new IllegalStateException("cannot start, already started");
        }
        if (this.requestList.isEmpty()) {
            throw new IllegalStateException("no request to send");
        }
        this.api = apiService;
        this.started = true;
        this.index = 0;
        apiService.exec(this.requestList.get(0), this.batchListener);
    }

    public SequenceRequestHelper(ApiResponseListener<ApiResponse> apiResponseListener) {
        this.listener = apiResponseListener;
    }

    public boolean hasFinished() {
        if (getResponsed() == getCount()) {
            return true;
        }
        return false;
    }
}
