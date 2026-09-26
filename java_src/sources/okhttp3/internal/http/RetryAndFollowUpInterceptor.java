package okhttp3.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.g;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
import org.apache.http.entity.mime.MIME;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int MAX_FOLLOW_UPS = 20;

    @NotNull
    private final OkHttpClient client;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private final Request followUpRequest(Response response, Exchange exchange) throws IOException {
        RealConnection connection$okhttp;
        Route route = (exchange == null || (connection$okhttp = exchange.getConnection$okhttp()) == null) ? null : connection$okhttp.route();
        int iCode = response.code();
        String strMethod = response.request().method();
        if (iCode != 307 && iCode != 308) {
            if (iCode == 401) {
                return this.client.authenticator().authenticate(route, response);
            }
            if (iCode == 421) {
                RequestBody requestBodyBody = response.request().body();
                if ((requestBodyBody != null && requestBodyBody.isOneShot()) || exchange == null || !exchange.isCoalescedConnection$okhttp()) {
                    return null;
                }
                exchange.getConnection$okhttp().noCoalescedConnections$okhttp();
                return response.request();
            }
            if (iCode == 503) {
                Response responsePriorResponse = response.priorResponse();
                if ((responsePriorResponse == null || responsePriorResponse.code() != 503) && retryAfter(response, Integer.MAX_VALUE) == 0) {
                    return response.request();
                }
                return null;
            }
            if (iCode == 407) {
                t.g(route);
                if (route.proxy().type() == Proxy.Type.HTTP) {
                    return this.client.proxyAuthenticator().authenticate(route, response);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (iCode == 408) {
                if (!this.client.retryOnConnectionFailure()) {
                    return null;
                }
                RequestBody requestBodyBody2 = response.request().body();
                if (requestBodyBody2 != null && requestBodyBody2.isOneShot()) {
                    return null;
                }
                Response responsePriorResponse2 = response.priorResponse();
                if ((responsePriorResponse2 == null || responsePriorResponse2.code() != 408) && retryAfter(response, 0) <= 0) {
                    return response.request();
                }
                return null;
            }
            switch (iCode) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        return buildRedirectRequest(response, strMethod);
    }

    private final int retryAfter(Response response, int i10) {
        String strHeader$default = Response.header$default(response, "Retry-After", null, 2, null);
        if (strHeader$default == null) {
            return i10;
        }
        if (!new g("\\d+").b(strHeader$default)) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strHeader$default);
        t.i(numValueOf, "valueOf(header)");
        return numValueOf.intValue();
    }

    public RetryAndFollowUpInterceptor(@NotNull OkHttpClient client) {
        t.j(client, "client");
        this.client = client;
    }

    private final Request buildRedirectRequest(Response response, String str) {
        String strHeader$default;
        HttpUrl httpUrlResolve;
        if (!this.client.followRedirects() || (strHeader$default = Response.header$default(response, "Location", null, 2, null)) == null || (httpUrlResolve = response.request().url().resolve(strHeader$default)) == null) {
            return null;
        }
        if (!t.e(httpUrlResolve.scheme(), response.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder builderNewBuilder = response.request().newBuilder();
        if (HttpMethod.permitsRequestBody(str)) {
            int iCode = response.code();
            HttpMethod httpMethod = HttpMethod.INSTANCE;
            boolean z6 = httpMethod.redirectsWithBody(str) || iCode == 308 || iCode == 307;
            if (!httpMethod.redirectsToGet(str) || iCode == 308 || iCode == 307) {
                builderNewBuilder.method(str, z6 ? response.request().body() : null);
            } else {
                builderNewBuilder.method(ShareTarget.METHOD_GET, null);
            }
            if (!z6) {
                builderNewBuilder.removeHeader("Transfer-Encoding");
                builderNewBuilder.removeHeader("Content-Length");
                builderNewBuilder.removeHeader(MIME.CONTENT_TYPE);
            }
        }
        if (!Util.canReuseConnectionFor(response.request().url(), httpUrlResolve)) {
            builderNewBuilder.removeHeader("Authorization");
        }
        return builderNewBuilder.url(httpUrlResolve).build();
    }

    private final boolean isRecoverable(IOException iOException, boolean z6) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            return (iOException instanceof SocketTimeoutException) && !z6;
        }
        return (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private final boolean recover(IOException iOException, RealCall realCall, Request request, boolean z6) {
        if (this.client.retryOnConnectionFailure()) {
            return !(z6 && requestIsOneShot(iOException, request)) && isRecoverable(iOException, z6) && realCall.retryAfterFailure();
        }
        return false;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Response responseProceed;
        t.j(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request$okhttp = realInterceptorChain.getRequest$okhttp();
        RealCall call$okhttp = realInterceptorChain.getCall$okhttp();
        List listM = v.m();
        int i10 = 0;
        Response response = null;
        while (true) {
            boolean z6 = true;
            while (true) {
                call$okhttp.enterNetworkInterceptorExchange(request$okhttp, z6);
                try {
                    if (call$okhttp.isCanceled()) {
                        throw new IOException("Canceled");
                    }
                    try {
                        responseProceed = realInterceptorChain.proceed(request$okhttp);
                    } catch (IOException e) {
                        if (!recover(e, call$okhttp, request$okhttp, !(e instanceof ConnectionShutdownException))) {
                            throw Util.withSuppressed(e, listM);
                        }
                        listM = d0.E0(listM, e);
                        call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                        z6 = false;
                    } catch (RouteException e2) {
                        if (!recover(e2.getLastConnectException(), call$okhttp, request$okhttp, false)) {
                            throw Util.withSuppressed(e2.getFirstConnectException(), listM);
                        }
                        listM = d0.E0(listM, e2.getFirstConnectException());
                        call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                        z6 = false;
                    }
                    call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                    z6 = false;
                } catch (Throwable th) {
                    call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                    throw th;
                }
            }
            if (response != null) {
                responseProceed = responseProceed.newBuilder().priorResponse(response.newBuilder().body(null).build()).build();
            }
            response = responseProceed;
            Exchange interceptorScopedExchange$okhttp = call$okhttp.getInterceptorScopedExchange$okhttp();
            Request requestFollowUpRequest = followUpRequest(response, interceptorScopedExchange$okhttp);
            if (requestFollowUpRequest == null) {
                if (interceptorScopedExchange$okhttp != null && interceptorScopedExchange$okhttp.isDuplex$okhttp()) {
                    call$okhttp.timeoutEarlyExit();
                }
                call$okhttp.exitNetworkInterceptorExchange$okhttp(false);
                return response;
            }
            RequestBody requestBodyBody = requestFollowUpRequest.body();
            if (requestBodyBody != null && requestBodyBody.isOneShot()) {
                call$okhttp.exitNetworkInterceptorExchange$okhttp(false);
                return response;
            }
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody != null) {
                Util.closeQuietly(responseBodyBody);
            }
            i10++;
            if (i10 > 20) {
                throw new ProtocolException(t.s("Too many follow-up requests: ", Integer.valueOf(i10)));
            }
            call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
            request$okhttp = requestFollowUpRequest;
        }
    }

    private final boolean requestIsOneShot(IOException iOException, Request request) {
        RequestBody requestBodyBody = request.body();
        if ((requestBodyBody != null && requestBodyBody.isOneShot()) || (iOException instanceof FileNotFoundException)) {
            return true;
        }
        return false;
    }
}
