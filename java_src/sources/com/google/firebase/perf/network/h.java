package com.google.firebase.perf.network;

import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;

/* JADX INFO: loaded from: classes11.dex */
public class h<T> implements ResponseHandler<T> {
    private final com.google.firebase.perf.metrics.h networkMetricBuilder;
    private final ResponseHandler<? extends T> responseHandlerDelegate;
    private final Timer timer;

    @Override // org.apache.http.client.ResponseHandler
    public T handleResponse(HttpResponse httpResponse) throws IOException {
        this.networkMetricBuilder.x(this.timer.g());
        this.networkMetricBuilder.o(httpResponse.getStatusLine().getStatusCode());
        Long lA = j.a(httpResponse);
        if (lA != null) {
            this.networkMetricBuilder.v(lA.longValue());
        }
        String strB = j.b(httpResponse);
        if (strB != null) {
            this.networkMetricBuilder.u(strB);
        }
        this.networkMetricBuilder.c();
        return this.responseHandlerDelegate.handleResponse(httpResponse);
    }

    public h(ResponseHandler<? extends T> responseHandler, Timer timer, com.google.firebase.perf.metrics.h hVar) {
        this.responseHandlerDelegate = responseHandler;
        this.timer = timer;
        this.networkMetricBuilder = hVar;
    }
}
