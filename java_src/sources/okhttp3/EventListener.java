package okhttp3;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class EventListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final EventListener NONE = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public interface Factory {
        @NotNull
        EventListener create(@NotNull Call call);
    }

    public void cacheConditionalHit(@NotNull Call call, @NotNull Response cachedResponse) {
        t.j(call, "call");
        t.j(cachedResponse, "cachedResponse");
    }

    public void cacheHit(@NotNull Call call, @NotNull Response response) {
        t.j(call, "call");
        t.j(response, "response");
    }

    public void cacheMiss(@NotNull Call call) {
        t.j(call, "call");
    }

    public void callEnd(@NotNull Call call) {
        t.j(call, "call");
    }

    public void callFailed(@NotNull Call call, @NotNull IOException ioe) {
        t.j(call, "call");
        t.j(ioe, "ioe");
    }

    public void callStart(@NotNull Call call) {
        t.j(call, "call");
    }

    public void canceled(@NotNull Call call) {
        t.j(call, "call");
    }

    public void connectEnd(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol) {
        t.j(call, "call");
        t.j(inetSocketAddress, "inetSocketAddress");
        t.j(proxy, "proxy");
    }

    public void connectFailed(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol, @NotNull IOException ioe) {
        t.j(call, "call");
        t.j(inetSocketAddress, "inetSocketAddress");
        t.j(proxy, "proxy");
        t.j(ioe, "ioe");
    }

    public void connectStart(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy) {
        t.j(call, "call");
        t.j(inetSocketAddress, "inetSocketAddress");
        t.j(proxy, "proxy");
    }

    public void connectionAcquired(@NotNull Call call, @NotNull Connection connection) {
        t.j(call, "call");
        t.j(connection, "connection");
    }

    public void connectionReleased(@NotNull Call call, @NotNull Connection connection) {
        t.j(call, "call");
        t.j(connection, "connection");
    }

    public void dnsEnd(@NotNull Call call, @NotNull String domainName, @NotNull List<InetAddress> inetAddressList) {
        t.j(call, "call");
        t.j(domainName, "domainName");
        t.j(inetAddressList, "inetAddressList");
    }

    public void dnsStart(@NotNull Call call, @NotNull String domainName) {
        t.j(call, "call");
        t.j(domainName, "domainName");
    }

    public void proxySelectEnd(@NotNull Call call, @NotNull HttpUrl url, @NotNull List<Proxy> proxies) {
        t.j(call, "call");
        t.j(url, "url");
        t.j(proxies, "proxies");
    }

    public void proxySelectStart(@NotNull Call call, @NotNull HttpUrl url) {
        t.j(call, "call");
        t.j(url, "url");
    }

    public void requestBodyEnd(@NotNull Call call, long j6) {
        t.j(call, "call");
    }

    public void requestBodyStart(@NotNull Call call) {
        t.j(call, "call");
    }

    public void requestFailed(@NotNull Call call, @NotNull IOException ioe) {
        t.j(call, "call");
        t.j(ioe, "ioe");
    }

    public void requestHeadersEnd(@NotNull Call call, @NotNull Request request) {
        t.j(call, "call");
        t.j(request, "request");
    }

    public void requestHeadersStart(@NotNull Call call) {
        t.j(call, "call");
    }

    public void responseBodyEnd(@NotNull Call call, long j6) {
        t.j(call, "call");
    }

    public void responseBodyStart(@NotNull Call call) {
        t.j(call, "call");
    }

    public void responseFailed(@NotNull Call call, @NotNull IOException ioe) {
        t.j(call, "call");
        t.j(ioe, "ioe");
    }

    public void responseHeadersEnd(@NotNull Call call, @NotNull Response response) {
        t.j(call, "call");
        t.j(response, "response");
    }

    public void responseHeadersStart(@NotNull Call call) {
        t.j(call, "call");
    }

    public void satisfactionFailure(@NotNull Call call, @NotNull Response response) {
        t.j(call, "call");
        t.j(response, "response");
    }

    public void secureConnectEnd(@NotNull Call call, @Nullable Handshake handshake) {
        t.j(call, "call");
    }

    public void secureConnectStart(@NotNull Call call) {
        t.j(call, "call");
    }
}
