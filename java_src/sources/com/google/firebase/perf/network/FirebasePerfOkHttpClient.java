package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.transport.k;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes6.dex */
public class FirebasePerfOkHttpClient {
    @Keep
    public static void enqueue(Call call, Callback callback) {
        Timer timer = new Timer();
        call.enqueue(new i(callback, k.k(), timer, timer.i()));
    }

    private FirebasePerfOkHttpClient() {
    }

    static void a(Response response, com.google.firebase.perf.metrics.h hVar, long j6, long j10) throws IOException {
        Request request = response.request();
        if (request == null) {
            return;
        }
        hVar.z(request.url().url().toString());
        hVar.n(request.method());
        if (request.body() != null) {
            long jContentLength = request.body().contentLength();
            if (jContentLength != -1) {
                hVar.s(jContentLength);
            }
        }
        ResponseBody responseBodyBody = response.body();
        if (responseBodyBody != null) {
            long jContentLength2 = responseBodyBody.contentLength();
            if (jContentLength2 != -1) {
                hVar.v(jContentLength2);
            }
            MediaType mediaTypeContentType = responseBodyBody.contentType();
            if (mediaTypeContentType != null) {
                hVar.u(mediaTypeContentType.toString());
            }
        }
        hVar.o(response.code());
        hVar.t(j6);
        hVar.x(j10);
        hVar.c();
    }

    @Keep
    public static Response execute(Call call) throws IOException {
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(k.k());
        Timer timer = new Timer();
        long jI = timer.i();
        try {
            Response responseExecute = call.execute();
            a(responseExecute, hVarE, jI, timer.g());
            return responseExecute;
        } catch (IOException e) {
            Request request = call.request();
            if (request != null) {
                HttpUrl httpUrlUrl = request.url();
                if (httpUrlUrl != null) {
                    hVarE.z(httpUrlUrl.url().toString());
                }
                if (request.method() != null) {
                    hVarE.n(request.method());
                }
            }
            hVarE.t(jI);
            hVarE.x(timer.g());
            j.d(hVarE);
            throw e;
        }
    }
}
