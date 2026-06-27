package com.narvii.util.diagnosis;

import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.List;

/* loaded from: classes3.dex */
class ApiTask extends DiagnosisTask {
    final ApiResponseListener listener;

    ApiTask(NVContext nVContext) {
        super(nVContext, "Api");
        this.listener = new ApiResponseListener(ApiResponse.class) { // from class: com.narvii.util.diagnosis.ApiTask.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                ApiTask.this.result = true;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List list, String str, ApiResponse apiResponse, Throwable th) {
                ApiTask.this.result = false;
                ApiTask.this.error = "(" + i + ") " + str;
            }
        };
    }

    @Override // java.lang.Runnable
    public void run() {
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().global().path("/announcement?language=en&start=0&size=1").build(), this.listener);
    }
}
