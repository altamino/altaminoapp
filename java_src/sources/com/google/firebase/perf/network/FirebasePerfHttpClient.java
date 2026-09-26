package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.transport.k;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes11.dex */
public class FirebasePerfHttpClient {
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) throws IOException {
        return g(httpClient, httpUriRequest, new Timer(), k.k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        return h(httpClient, httpUriRequest, httpContext, new Timer(), k.k());
    }

    private FirebasePerfHttpClient() {
    }

    static <T> T a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, Timer timer, k kVar) throws IOException {
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            hVarE.z(httpHost.toURI() + httpRequest.getRequestLine().getUri()).n(httpRequest.getRequestLine().getMethod());
            Long lA = j.a(httpRequest);
            if (lA != null) {
                hVarE.s(lA.longValue());
            }
            timer.l();
            hVarE.t(timer.i());
            return (T) httpClient.execute(httpHost, httpRequest, new h(responseHandler, timer, hVarE));
        } catch (IOException e) {
            hVarE.x(timer.g());
            j.d(hVarE);
            throw e;
        }
    }

    static <T> T b(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext, Timer timer, k kVar) throws IOException {
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            hVarE.z(httpHost.toURI() + httpRequest.getRequestLine().getUri()).n(httpRequest.getRequestLine().getMethod());
            Long lA = j.a(httpRequest);
            if (lA != null) {
                hVarE.s(lA.longValue());
            }
            timer.l();
            hVarE.t(timer.i());
            return (T) httpClient.execute(httpHost, httpRequest, new h(responseHandler, timer, hVarE), httpContext);
        } catch (IOException e) {
            hVarE.x(timer.g());
            j.d(hVarE);
            throw e;
        }
    }

    static <T> T c(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, Timer timer, k kVar) throws IOException {
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            hVarE.z(httpUriRequest.getURI().toString()).n(httpUriRequest.getMethod());
            Long lA = j.a(httpUriRequest);
            if (lA != null) {
                hVarE.s(lA.longValue());
            }
            timer.l();
            hVarE.t(timer.i());
            return (T) httpClient.execute(httpUriRequest, new h(responseHandler, timer, hVarE));
        } catch (IOException e) {
            hVarE.x(timer.g());
            j.d(hVarE);
            throw e;
        }
    }

    static <T> T d(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext, Timer timer, k kVar) throws IOException {
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            hVarE.z(httpUriRequest.getURI().toString()).n(httpUriRequest.getMethod());
            Long lA = j.a(httpUriRequest);
            if (lA != null) {
                hVarE.s(lA.longValue());
            }
            timer.l();
            hVarE.t(timer.i());
            return (T) httpClient.execute(httpUriRequest, new h(responseHandler, timer, hVarE), httpContext);
        } catch (IOException e) {
            hVarE.x(timer.g());
            j.d(hVarE);
            throw e;
        }
    }

    static HttpResponse e(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, Timer timer, k kVar) throws IOException {
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            hVarE.z(httpHost.toURI() + httpRequest.getRequestLine().getUri()).n(httpRequest.getRequestLine().getMethod());
            Long lA = j.a(httpRequest);
            if (lA != null) {
                hVarE.s(lA.longValue());
            }
            timer.l();
            hVarE.t(timer.i());
            HttpResponse httpResponseExecute = httpClient.execute(httpHost, httpRequest);
            hVarE.x(timer.g());
            hVarE.o(httpResponseExecute.getStatusLine().getStatusCode());
            Long lA2 = j.a(httpResponseExecute);
            if (lA2 != null) {
                hVarE.v(lA2.longValue());
            }
            String strB = j.b(httpResponseExecute);
            if (strB != null) {
                hVarE.u(strB);
            }
            hVarE.c();
            return httpResponseExecute;
        } catch (IOException e) {
            hVarE.x(timer.g());
            j.d(hVarE);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) throws IOException {
        return (T) c(httpClient, httpUriRequest, responseHandler, new Timer(), k.k());
    }

    static HttpResponse f(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext, Timer timer, k kVar) throws IOException {
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            hVarE.z(httpHost.toURI() + httpRequest.getRequestLine().getUri()).n(httpRequest.getRequestLine().getMethod());
            Long lA = j.a(httpRequest);
            if (lA != null) {
                hVarE.s(lA.longValue());
            }
            timer.l();
            hVarE.t(timer.i());
            HttpResponse httpResponseExecute = httpClient.execute(httpHost, httpRequest, httpContext);
            hVarE.x(timer.g());
            hVarE.o(httpResponseExecute.getStatusLine().getStatusCode());
            Long lA2 = j.a(httpResponseExecute);
            if (lA2 != null) {
                hVarE.v(lA2.longValue());
            }
            String strB = j.b(httpResponseExecute);
            if (strB != null) {
                hVarE.u(strB);
            }
            hVarE.c();
            return httpResponseExecute;
        } catch (IOException e) {
            hVarE.x(timer.g());
            j.d(hVarE);
            throw e;
        }
    }

    static HttpResponse g(HttpClient httpClient, HttpUriRequest httpUriRequest, Timer timer, k kVar) throws IOException {
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            hVarE.z(httpUriRequest.getURI().toString()).n(httpUriRequest.getMethod());
            Long lA = j.a(httpUriRequest);
            if (lA != null) {
                hVarE.s(lA.longValue());
            }
            timer.l();
            hVarE.t(timer.i());
            HttpResponse httpResponseExecute = httpClient.execute(httpUriRequest);
            hVarE.x(timer.g());
            hVarE.o(httpResponseExecute.getStatusLine().getStatusCode());
            Long lA2 = j.a(httpResponseExecute);
            if (lA2 != null) {
                hVarE.v(lA2.longValue());
            }
            String strB = j.b(httpResponseExecute);
            if (strB != null) {
                hVarE.u(strB);
            }
            hVarE.c();
            return httpResponseExecute;
        } catch (IOException e) {
            hVarE.x(timer.g());
            j.d(hVarE);
            throw e;
        }
    }

    static HttpResponse h(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext, Timer timer, k kVar) throws IOException {
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            hVarE.z(httpUriRequest.getURI().toString()).n(httpUriRequest.getMethod());
            Long lA = j.a(httpUriRequest);
            if (lA != null) {
                hVarE.s(lA.longValue());
            }
            timer.l();
            hVarE.t(timer.i());
            HttpResponse httpResponseExecute = httpClient.execute(httpUriRequest, httpContext);
            hVarE.x(timer.g());
            hVarE.o(httpResponseExecute.getStatusLine().getStatusCode());
            Long lA2 = j.a(httpResponseExecute);
            if (lA2 != null) {
                hVarE.v(lA2.longValue());
            }
            String strB = j.b(httpResponseExecute);
            if (strB != null) {
                hVarE.u(strB);
            }
            hVarE.c();
            return httpResponseExecute;
        } catch (IOException e) {
            hVarE.x(timer.g());
            j.d(hVarE);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) throws IOException {
        return (T) d(httpClient, httpUriRequest, responseHandler, httpContext, new Timer(), k.k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        return e(httpClient, httpHost, httpRequest, new Timer(), k.k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        return f(httpClient, httpHost, httpRequest, httpContext, new Timer(), k.k());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        return (T) a(httpClient, httpHost, httpRequest, responseHandler, new Timer(), k.k());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        return (T) b(httpClient, httpHost, httpRequest, responseHandler, httpContext, new Timer(), k.k());
    }
}
