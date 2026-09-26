package com.narvii.util.http;

import com.narvii.model.api.ApiResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class BatchRequestHelper {
    private int failCount;
    private String failMessage;
    private ApiRequest failRequest;
    private ApiResponse failResponse;
    private ApiResponseListener<ApiResponse> listener;
    private boolean started;
    private int successCount;
    private ApiResponse successResponse;
    private ArrayList<ApiRequest> requestList = new ArrayList<>();
    private final ApiResponseListener<ApiResponse> batchListener = new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.util.http.BatchRequestHelper.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            BatchRequestHelper.this.failCount++;
            if (BatchRequestHelper.this.failRequest == null) {
                BatchRequestHelper.this.failRequest = apiRequest;
                BatchRequestHelper.this.failMessage = str;
                BatchRequestHelper.this.failResponse = apiResponse;
            }
            BatchRequestHelper.this.failCount++;
            BatchRequestHelper.this.check();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            BatchRequestHelper.this.successCount++;
            if (BatchRequestHelper.this.successResponse == null) {
                BatchRequestHelper.this.successResponse = apiResponse;
            }
            BatchRequestHelper.this.check();
        }
    };

    public int getFailCount() {
        return this.failCount;
    }

    public int getResponsed() {
        return this.successCount + this.failCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void check() {
        if (this.started && hasFinished()) {
            try {
                if (this.successCount == this.requestList.size()) {
                    this.listener.onFinish(this.requestList.get(0), this.successResponse);
                } else {
                    this.listener.onFail(this.failRequest, 0, null, this.failMessage, this.failResponse, null);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void abort(ApiService apiService) {
        if (this.started) {
            this.started = false;
            Iterator<ApiRequest> it = this.requestList.iterator();
            while (it.hasNext()) {
                apiService.abort(it.next(), this.batchListener);
            }
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
        this.successCount = 0;
        this.failCount = 0;
        this.successResponse = null;
        this.failRequest = null;
        this.failMessage = null;
        this.failResponse = null;
        this.started = true;
        Iterator<ApiRequest> it = this.requestList.iterator();
        while (it.hasNext()) {
            apiService.exec(it.next(), this.batchListener);
        }
    }

    public BatchRequestHelper(ApiResponseListener<ApiResponse> apiResponseListener) {
        this.listener = apiResponseListener;
    }

    public boolean hasFinished() {
        if (getResponsed() == getCount()) {
            return true;
        }
        return false;
    }
}
