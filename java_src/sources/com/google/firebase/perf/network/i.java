package com.google.firebase.perf.network;

import com.google.firebase.perf.transport.k;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes11.dex */
public class i implements Callback {
    private final Callback callback;
    private final com.google.firebase.perf.metrics.h networkMetricBuilder;
    private final long startTimeMicros;
    private final Timer timer;

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
        FirebasePerfOkHttpClient.a(response, this.networkMetricBuilder, this.startTimeMicros, this.timer.g());
        this.callback.onResponse(call, response);
    }

    public i(Callback callback, k kVar, Timer timer, long j6) {
        this.callback = callback;
        this.networkMetricBuilder = com.google.firebase.perf.metrics.h.e(kVar);
        this.startTimeMicros = j6;
        this.timer = timer;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        Request request = call.request();
        if (request != null) {
            HttpUrl httpUrlUrl = request.url();
            if (httpUrlUrl != null) {
                this.networkMetricBuilder.z(httpUrlUrl.url().toString());
            }
            if (request.method() != null) {
                this.networkMetricBuilder.n(request.method());
            }
        }
        this.networkMetricBuilder.t(this.startTimeMicros);
        this.networkMetricBuilder.x(this.timer.g());
        j.d(this.networkMetricBuilder);
        this.callback.onFailure(call, iOException);
    }
}
