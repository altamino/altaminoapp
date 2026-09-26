package okhttp3;

import e8.l;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.collections.a0;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.proxy.NullProxySelector;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class OkHttpClient implements Cloneable, Call.Factory, WebSocket.Factory {

    @NotNull
    private final Authenticator authenticator;

    @Nullable
    private final Cache cache;
    private final int callTimeoutMillis;

    @Nullable
    private final CertificateChainCleaner certificateChainCleaner;

    @NotNull
    private final CertificatePinner certificatePinner;
    private final int connectTimeoutMillis;

    @NotNull
    private final ConnectionPool connectionPool;

    @NotNull
    private final List<ConnectionSpec> connectionSpecs;

    @NotNull
    private final CookieJar cookieJar;

    @NotNull
    private final Dispatcher dispatcher;

    @NotNull
    private final Dns dns;

    @NotNull
    private final EventListener.Factory eventListenerFactory;
    private final boolean followRedirects;
    private final boolean followSslRedirects;

    @NotNull
    private final HostnameVerifier hostnameVerifier;

    @NotNull
    private final List<Interceptor> interceptors;
    private final long minWebSocketMessageToCompress;

    @NotNull
    private final List<Interceptor> networkInterceptors;
    private final int pingIntervalMillis;

    @NotNull
    private final List<Protocol> protocols;

    @Nullable
    private final Proxy proxy;

    @NotNull
    private final Authenticator proxyAuthenticator;

    @NotNull
    private final ProxySelector proxySelector;
    private final int readTimeoutMillis;
    private final boolean retryOnConnectionFailure;

    @NotNull
    private final RouteDatabase routeDatabase;

    @NotNull
    private final SocketFactory socketFactory;

    @Nullable
    private final SSLSocketFactory sslSocketFactoryOrNull;
    private final int writeTimeoutMillis;

    @Nullable
    private final X509TrustManager x509TrustManager;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final List<Protocol> DEFAULT_PROTOCOLS = Util.immutableListOf(Protocol.HTTP_2, Protocol.HTTP_1_1);

    @NotNull
    private static final List<ConnectionSpec> DEFAULT_CONNECTION_SPECS = Util.immutableListOf(ConnectionSpec.MODERN_TLS, ConnectionSpec.CLEARTEXT);

    public static final class Builder {

        @NotNull
        private Authenticator authenticator;

        @Nullable
        private Cache cache;
        private int callTimeout;

        @Nullable
        private CertificateChainCleaner certificateChainCleaner;

        @NotNull
        private CertificatePinner certificatePinner;
        private int connectTimeout;

        @NotNull
        private ConnectionPool connectionPool;

        @NotNull
        private List<ConnectionSpec> connectionSpecs;

        @NotNull
        private CookieJar cookieJar;

        @NotNull
        private Dispatcher dispatcher;

        @NotNull
        private Dns dns;

        @NotNull
        private EventListener.Factory eventListenerFactory;
        private boolean followRedirects;
        private boolean followSslRedirects;

        @NotNull
        private HostnameVerifier hostnameVerifier;

        @NotNull
        private final List<Interceptor> interceptors;
        private long minWebSocketMessageToCompress;

        @NotNull
        private final List<Interceptor> networkInterceptors;
        private int pingInterval;

        @NotNull
        private List<? extends Protocol> protocols;

        @Nullable
        private Proxy proxy;

        @NotNull
        private Authenticator proxyAuthenticator;

        @Nullable
        private ProxySelector proxySelector;
        private int readTimeout;
        private boolean retryOnConnectionFailure;

        @Nullable
        private RouteDatabase routeDatabase;

        @NotNull
        private SocketFactory socketFactory;

        @Nullable
        private SSLSocketFactory sslSocketFactoryOrNull;
        private int writeTimeout;

        @Nullable
        private X509TrustManager x509TrustManagerOrNull;

        public Builder() {
            this.dispatcher = new Dispatcher();
            this.connectionPool = new ConnectionPool();
            this.interceptors = new ArrayList();
            this.networkInterceptors = new ArrayList();
            this.eventListenerFactory = Util.asFactory(EventListener.NONE);
            this.retryOnConnectionFailure = true;
            Authenticator authenticator = Authenticator.NONE;
            this.authenticator = authenticator;
            this.followRedirects = true;
            this.followSslRedirects = true;
            this.cookieJar = CookieJar.NO_COOKIES;
            this.dns = Dns.SYSTEM;
            this.proxyAuthenticator = authenticator;
            SocketFactory socketFactory = SocketFactory.getDefault();
            t.i(socketFactory, "getDefault()");
            this.socketFactory = socketFactory;
            Companion companion = OkHttpClient.Companion;
            this.connectionSpecs = companion.getDEFAULT_CONNECTION_SPECS$okhttp();
            this.protocols = companion.getDEFAULT_PROTOCOLS$okhttp();
            this.hostnameVerifier = OkHostnameVerifier.INSTANCE;
            this.certificatePinner = CertificatePinner.DEFAULT;
            this.connectTimeout = 10000;
            this.readTimeout = 10000;
            this.writeTimeout = 10000;
            this.minWebSocketMessageToCompress = 1024L;
        }

        @NotNull
        public final Builder callTimeout(long j6, @NotNull TimeUnit unit) {
            t.j(unit, "unit");
            setCallTimeout$okhttp(Util.checkDuration("timeout", j6, unit));
            return this;
        }

        @NotNull
        public final Builder connectTimeout(long j6, @NotNull TimeUnit unit) {
            t.j(unit, "unit");
            setConnectTimeout$okhttp(Util.checkDuration("timeout", j6, unit));
            return this;
        }

        @NotNull
        public final Authenticator getAuthenticator$okhttp() {
            return this.authenticator;
        }

        @Nullable
        public final Cache getCache$okhttp() {
            return this.cache;
        }

        public final int getCallTimeout$okhttp() {
            return this.callTimeout;
        }

        @Nullable
        public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
            return this.certificateChainCleaner;
        }

        @NotNull
        public final CertificatePinner getCertificatePinner$okhttp() {
            return this.certificatePinner;
        }

        public final int getConnectTimeout$okhttp() {
            return this.connectTimeout;
        }

        @NotNull
        public final ConnectionPool getConnectionPool$okhttp() {
            return this.connectionPool;
        }

        @NotNull
        public final List<ConnectionSpec> getConnectionSpecs$okhttp() {
            return this.connectionSpecs;
        }

        @NotNull
        public final CookieJar getCookieJar$okhttp() {
            return this.cookieJar;
        }

        @NotNull
        public final Dispatcher getDispatcher$okhttp() {
            return this.dispatcher;
        }

        @NotNull
        public final Dns getDns$okhttp() {
            return this.dns;
        }

        @NotNull
        public final EventListener.Factory getEventListenerFactory$okhttp() {
            return this.eventListenerFactory;
        }

        public final boolean getFollowRedirects$okhttp() {
            return this.followRedirects;
        }

        public final boolean getFollowSslRedirects$okhttp() {
            return this.followSslRedirects;
        }

        @NotNull
        public final HostnameVerifier getHostnameVerifier$okhttp() {
            return this.hostnameVerifier;
        }

        @NotNull
        public final List<Interceptor> getInterceptors$okhttp() {
            return this.interceptors;
        }

        public final long getMinWebSocketMessageToCompress$okhttp() {
            return this.minWebSocketMessageToCompress;
        }

        @NotNull
        public final List<Interceptor> getNetworkInterceptors$okhttp() {
            return this.networkInterceptors;
        }

        public final int getPingInterval$okhttp() {
            return this.pingInterval;
        }

        @NotNull
        public final List<Protocol> getProtocols$okhttp() {
            return this.protocols;
        }

        @Nullable
        public final Proxy getProxy$okhttp() {
            return this.proxy;
        }

        @NotNull
        public final Authenticator getProxyAuthenticator$okhttp() {
            return this.proxyAuthenticator;
        }

        @Nullable
        public final ProxySelector getProxySelector$okhttp() {
            return this.proxySelector;
        }

        public final int getReadTimeout$okhttp() {
            return this.readTimeout;
        }

        public final boolean getRetryOnConnectionFailure$okhttp() {
            return this.retryOnConnectionFailure;
        }

        @Nullable
        public final RouteDatabase getRouteDatabase$okhttp() {
            return this.routeDatabase;
        }

        @NotNull
        public final SocketFactory getSocketFactory$okhttp() {
            return this.socketFactory;
        }

        @Nullable
        public final SSLSocketFactory getSslSocketFactoryOrNull$okhttp() {
            return this.sslSocketFactoryOrNull;
        }

        public final int getWriteTimeout$okhttp() {
            return this.writeTimeout;
        }

        @Nullable
        public final X509TrustManager getX509TrustManagerOrNull$okhttp() {
            return this.x509TrustManagerOrNull;
        }

        @NotNull
        public final List<Interceptor> interceptors() {
            return this.interceptors;
        }

        @NotNull
        public final List<Interceptor> networkInterceptors() {
            return this.networkInterceptors;
        }

        @NotNull
        public final Builder pingInterval(long j6, @NotNull TimeUnit unit) {
            t.j(unit, "unit");
            setPingInterval$okhttp(Util.checkDuration("interval", j6, unit));
            return this;
        }

        @NotNull
        public final Builder readTimeout(long j6, @NotNull TimeUnit unit) {
            t.j(unit, "unit");
            setReadTimeout$okhttp(Util.checkDuration("timeout", j6, unit));
            return this;
        }

        public final void setAuthenticator$okhttp(@NotNull Authenticator authenticator) {
            t.j(authenticator, "<set-?>");
            this.authenticator = authenticator;
        }

        public final void setCache$okhttp(@Nullable Cache cache) {
            this.cache = cache;
        }

        public final void setCallTimeout$okhttp(int i10) {
            this.callTimeout = i10;
        }

        public final void setCertificateChainCleaner$okhttp(@Nullable CertificateChainCleaner certificateChainCleaner) {
            this.certificateChainCleaner = certificateChainCleaner;
        }

        public final void setCertificatePinner$okhttp(@NotNull CertificatePinner certificatePinner) {
            t.j(certificatePinner, "<set-?>");
            this.certificatePinner = certificatePinner;
        }

        public final void setConnectTimeout$okhttp(int i10) {
            this.connectTimeout = i10;
        }

        public final void setConnectionPool$okhttp(@NotNull ConnectionPool connectionPool) {
            t.j(connectionPool, "<set-?>");
            this.connectionPool = connectionPool;
        }

        public final void setConnectionSpecs$okhttp(@NotNull List<ConnectionSpec> list) {
            t.j(list, "<set-?>");
            this.connectionSpecs = list;
        }

        public final void setCookieJar$okhttp(@NotNull CookieJar cookieJar) {
            t.j(cookieJar, "<set-?>");
            this.cookieJar = cookieJar;
        }

        public final void setDispatcher$okhttp(@NotNull Dispatcher dispatcher) {
            t.j(dispatcher, "<set-?>");
            this.dispatcher = dispatcher;
        }

        public final void setDns$okhttp(@NotNull Dns dns) {
            t.j(dns, "<set-?>");
            this.dns = dns;
        }

        public final void setEventListenerFactory$okhttp(@NotNull EventListener.Factory factory) {
            t.j(factory, "<set-?>");
            this.eventListenerFactory = factory;
        }

        public final void setFollowRedirects$okhttp(boolean z6) {
            this.followRedirects = z6;
        }

        public final void setFollowSslRedirects$okhttp(boolean z6) {
            this.followSslRedirects = z6;
        }

        public final void setHostnameVerifier$okhttp(@NotNull HostnameVerifier hostnameVerifier) {
            t.j(hostnameVerifier, "<set-?>");
            this.hostnameVerifier = hostnameVerifier;
        }

        public final void setMinWebSocketMessageToCompress$okhttp(long j6) {
            this.minWebSocketMessageToCompress = j6;
        }

        public final void setPingInterval$okhttp(int i10) {
            this.pingInterval = i10;
        }

        public final void setProtocols$okhttp(@NotNull List<? extends Protocol> list) {
            t.j(list, "<set-?>");
            this.protocols = list;
        }

        public final void setProxy$okhttp(@Nullable Proxy proxy) {
            this.proxy = proxy;
        }

        public final void setProxyAuthenticator$okhttp(@NotNull Authenticator authenticator) {
            t.j(authenticator, "<set-?>");
            this.proxyAuthenticator = authenticator;
        }

        public final void setProxySelector$okhttp(@Nullable ProxySelector proxySelector) {
            this.proxySelector = proxySelector;
        }

        public final void setReadTimeout$okhttp(int i10) {
            this.readTimeout = i10;
        }

        public final void setRetryOnConnectionFailure$okhttp(boolean z6) {
            this.retryOnConnectionFailure = z6;
        }

        public final void setRouteDatabase$okhttp(@Nullable RouteDatabase routeDatabase) {
            this.routeDatabase = routeDatabase;
        }

        public final void setSocketFactory$okhttp(@NotNull SocketFactory socketFactory) {
            t.j(socketFactory, "<set-?>");
            this.socketFactory = socketFactory;
        }

        public final void setSslSocketFactoryOrNull$okhttp(@Nullable SSLSocketFactory sSLSocketFactory) {
            this.sslSocketFactoryOrNull = sSLSocketFactory;
        }

        public final void setWriteTimeout$okhttp(int i10) {
            this.writeTimeout = i10;
        }

        public final void setX509TrustManagerOrNull$okhttp(@Nullable X509TrustManager x509TrustManager) {
            this.x509TrustManagerOrNull = x509TrustManager;
        }

        @NotNull
        public final Builder sslSocketFactory(@NotNull SSLSocketFactory sslSocketFactory) throws IllegalAccessException {
            t.j(sslSocketFactory, "sslSocketFactory");
            if (!t.e(sslSocketFactory, getSslSocketFactoryOrNull$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setSslSocketFactoryOrNull$okhttp(sslSocketFactory);
            Platform.Companion companion = Platform.Companion;
            X509TrustManager x509TrustManagerTrustManager = companion.get().trustManager(sslSocketFactory);
            if (x509TrustManagerTrustManager != null) {
                setX509TrustManagerOrNull$okhttp(x509TrustManagerTrustManager);
                Platform platform = companion.get();
                X509TrustManager x509TrustManagerOrNull$okhttp = getX509TrustManagerOrNull$okhttp();
                t.g(x509TrustManagerOrNull$okhttp);
                setCertificateChainCleaner$okhttp(platform.buildCertificateChainCleaner(x509TrustManagerOrNull$okhttp));
                return this;
            }
            throw new IllegalStateException("Unable to extract the trust manager on " + companion.get() + ", sslSocketFactory is " + sslSocketFactory.getClass());
        }

        @NotNull
        public final Builder writeTimeout(long j6, @NotNull TimeUnit unit) {
            t.j(unit, "unit");
            setWriteTimeout$okhttp(Util.checkDuration("timeout", j6, unit));
            return this;
        }

        @NotNull
        /* JADX INFO: renamed from: -addInterceptor, reason: not valid java name */
        public final Builder m1753addInterceptor(@NotNull final l<? super Interceptor.Chain, Response> block) {
            t.j(block, "block");
            return addInterceptor(new Interceptor() { // from class: okhttp3.OkHttpClient$Builder$addInterceptor$2
                @Override // okhttp3.Interceptor
                @NotNull
                public final Response intercept(@NotNull Interceptor.Chain chain) {
                    t.j(chain, "chain");
                    return block.invoke(chain);
                }
            });
        }

        @NotNull
        /* JADX INFO: renamed from: -addNetworkInterceptor, reason: not valid java name */
        public final Builder m1754addNetworkInterceptor(@NotNull final l<? super Interceptor.Chain, Response> block) {
            t.j(block, "block");
            return addNetworkInterceptor(new Interceptor() { // from class: okhttp3.OkHttpClient$Builder$addNetworkInterceptor$2
                @Override // okhttp3.Interceptor
                @NotNull
                public final Response intercept(@NotNull Interceptor.Chain chain) {
                    t.j(chain, "chain");
                    return block.invoke(chain);
                }
            });
        }

        @NotNull
        public final Builder addInterceptor(@NotNull Interceptor interceptor) {
            t.j(interceptor, "interceptor");
            getInterceptors$okhttp().add(interceptor);
            return this;
        }

        @NotNull
        public final Builder addNetworkInterceptor(@NotNull Interceptor interceptor) {
            t.j(interceptor, "interceptor");
            getNetworkInterceptors$okhttp().add(interceptor);
            return this;
        }

        @NotNull
        public final Builder authenticator(@NotNull Authenticator authenticator) {
            t.j(authenticator, "authenticator");
            setAuthenticator$okhttp(authenticator);
            return this;
        }

        @NotNull
        public final OkHttpClient build() {
            return new OkHttpClient(this);
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder callTimeout(@NotNull Duration duration) {
            t.j(duration, "duration");
            callTimeout(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @NotNull
        public final Builder certificatePinner(@NotNull CertificatePinner certificatePinner) {
            t.j(certificatePinner, "certificatePinner");
            if (!t.e(certificatePinner, getCertificatePinner$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setCertificatePinner$okhttp(certificatePinner);
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder connectTimeout(@NotNull Duration duration) {
            t.j(duration, "duration");
            connectTimeout(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @NotNull
        public final Builder connectionPool(@NotNull ConnectionPool connectionPool) {
            t.j(connectionPool, "connectionPool");
            setConnectionPool$okhttp(connectionPool);
            return this;
        }

        @NotNull
        public final Builder connectionSpecs(@NotNull List<ConnectionSpec> connectionSpecs) {
            t.j(connectionSpecs, "connectionSpecs");
            if (!t.e(connectionSpecs, getConnectionSpecs$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setConnectionSpecs$okhttp(Util.toImmutableList(connectionSpecs));
            return this;
        }

        @NotNull
        public final Builder cookieJar(@NotNull CookieJar cookieJar) {
            t.j(cookieJar, "cookieJar");
            setCookieJar$okhttp(cookieJar);
            return this;
        }

        @NotNull
        public final Builder dispatcher(@NotNull Dispatcher dispatcher) {
            t.j(dispatcher, "dispatcher");
            setDispatcher$okhttp(dispatcher);
            return this;
        }

        @NotNull
        public final Builder dns(@NotNull Dns dns) {
            t.j(dns, "dns");
            if (!t.e(dns, getDns$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setDns$okhttp(dns);
            return this;
        }

        @NotNull
        public final Builder eventListener(@NotNull EventListener eventListener) {
            t.j(eventListener, "eventListener");
            setEventListenerFactory$okhttp(Util.asFactory(eventListener));
            return this;
        }

        @NotNull
        public final Builder eventListenerFactory(@NotNull EventListener.Factory eventListenerFactory) {
            t.j(eventListenerFactory, "eventListenerFactory");
            setEventListenerFactory$okhttp(eventListenerFactory);
            return this;
        }

        @NotNull
        public final Builder hostnameVerifier(@NotNull HostnameVerifier hostnameVerifier) {
            t.j(hostnameVerifier, "hostnameVerifier");
            if (!t.e(hostnameVerifier, getHostnameVerifier$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setHostnameVerifier$okhttp(hostnameVerifier);
            return this;
        }

        @NotNull
        public final Builder minWebSocketMessageToCompress(long j6) {
            if (j6 < 0) {
                throw new IllegalArgumentException(t.s("minWebSocketMessageToCompress must be positive: ", Long.valueOf(j6)).toString());
            }
            setMinWebSocketMessageToCompress$okhttp(j6);
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder pingInterval(@NotNull Duration duration) {
            t.j(duration, "duration");
            pingInterval(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @NotNull
        public final Builder protocols(@NotNull List<? extends Protocol> protocols) {
            t.j(protocols, "protocols");
            List listW0 = d0.W0(protocols);
            Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
            if (!listW0.contains(protocol) && !listW0.contains(Protocol.HTTP_1_1)) {
                throw new IllegalArgumentException(t.s("protocols must contain h2_prior_knowledge or http/1.1: ", listW0).toString());
            }
            if (listW0.contains(protocol) && listW0.size() > 1) {
                throw new IllegalArgumentException(t.s("protocols containing h2_prior_knowledge cannot use other protocols: ", listW0).toString());
            }
            if (!(!listW0.contains(Protocol.HTTP_1_0))) {
                throw new IllegalArgumentException(t.s("protocols must not contain http/1.0: ", listW0).toString());
            }
            if (!(true ^ listW0.contains(null))) {
                throw new IllegalArgumentException("protocols must not contain null".toString());
            }
            listW0.remove(Protocol.SPDY_3);
            if (!t.e(listW0, getProtocols$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            List<? extends Protocol> listUnmodifiableList = Collections.unmodifiableList(listW0);
            t.i(listUnmodifiableList, "unmodifiableList(protocolsCopy)");
            setProtocols$okhttp(listUnmodifiableList);
            return this;
        }

        @NotNull
        public final Builder proxyAuthenticator(@NotNull Authenticator proxyAuthenticator) {
            t.j(proxyAuthenticator, "proxyAuthenticator");
            if (!t.e(proxyAuthenticator, getProxyAuthenticator$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setProxyAuthenticator$okhttp(proxyAuthenticator);
            return this;
        }

        @NotNull
        public final Builder proxySelector(@NotNull ProxySelector proxySelector) {
            t.j(proxySelector, "proxySelector");
            if (!t.e(proxySelector, getProxySelector$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setProxySelector$okhttp(proxySelector);
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder readTimeout(@NotNull Duration duration) {
            t.j(duration, "duration");
            readTimeout(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @NotNull
        public final Builder socketFactory(@NotNull SocketFactory socketFactory) {
            t.j(socketFactory, "socketFactory");
            if (!(!(socketFactory instanceof SSLSocketFactory))) {
                throw new IllegalArgumentException("socketFactory instanceof SSLSocketFactory".toString());
            }
            if (!t.e(socketFactory, getSocketFactory$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setSocketFactory$okhttp(socketFactory);
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder writeTimeout(@NotNull Duration duration) {
            t.j(duration, "duration");
            writeTimeout(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @NotNull
        public final Builder cache(@Nullable Cache cache) {
            setCache$okhttp(cache);
            return this;
        }

        @NotNull
        public final Builder followRedirects(boolean z6) {
            setFollowRedirects$okhttp(z6);
            return this;
        }

        @NotNull
        public final Builder followSslRedirects(boolean z6) {
            setFollowSslRedirects$okhttp(z6);
            return this;
        }

        @NotNull
        public final Builder proxy(@Nullable Proxy proxy) {
            if (!t.e(proxy, getProxy$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setProxy$okhttp(proxy);
            return this;
        }

        @NotNull
        public final Builder retryOnConnectionFailure(boolean z6) {
            setRetryOnConnectionFailure$okhttp(z6);
            return this;
        }

        @NotNull
        public final Builder sslSocketFactory(@NotNull SSLSocketFactory sslSocketFactory, @NotNull X509TrustManager trustManager) {
            t.j(sslSocketFactory, "sslSocketFactory");
            t.j(trustManager, "trustManager");
            if (!t.e(sslSocketFactory, getSslSocketFactoryOrNull$okhttp()) || !t.e(trustManager, getX509TrustManagerOrNull$okhttp())) {
                setRouteDatabase$okhttp(null);
            }
            setSslSocketFactoryOrNull$okhttp(sslSocketFactory);
            setCertificateChainCleaner$okhttp(CertificateChainCleaner.Companion.get(trustManager));
            setX509TrustManagerOrNull$okhttp(trustManager);
            return this;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull OkHttpClient okHttpClient) {
            this();
            t.j(okHttpClient, "okHttpClient");
            this.dispatcher = okHttpClient.dispatcher();
            this.connectionPool = okHttpClient.connectionPool();
            a0.D(this.interceptors, okHttpClient.interceptors());
            a0.D(this.networkInterceptors, okHttpClient.networkInterceptors());
            this.eventListenerFactory = okHttpClient.eventListenerFactory();
            this.retryOnConnectionFailure = okHttpClient.retryOnConnectionFailure();
            this.authenticator = okHttpClient.authenticator();
            this.followRedirects = okHttpClient.followRedirects();
            this.followSslRedirects = okHttpClient.followSslRedirects();
            this.cookieJar = okHttpClient.cookieJar();
            this.cache = okHttpClient.cache();
            this.dns = okHttpClient.dns();
            this.proxy = okHttpClient.proxy();
            this.proxySelector = okHttpClient.proxySelector();
            this.proxyAuthenticator = okHttpClient.proxyAuthenticator();
            this.socketFactory = okHttpClient.socketFactory();
            this.sslSocketFactoryOrNull = okHttpClient.sslSocketFactoryOrNull;
            this.x509TrustManagerOrNull = okHttpClient.x509TrustManager();
            this.connectionSpecs = okHttpClient.connectionSpecs();
            this.protocols = okHttpClient.protocols();
            this.hostnameVerifier = okHttpClient.hostnameVerifier();
            this.certificatePinner = okHttpClient.certificatePinner();
            this.certificateChainCleaner = okHttpClient.certificateChainCleaner();
            this.callTimeout = okHttpClient.callTimeoutMillis();
            this.connectTimeout = okHttpClient.connectTimeoutMillis();
            this.readTimeout = okHttpClient.readTimeoutMillis();
            this.writeTimeout = okHttpClient.writeTimeoutMillis();
            this.pingInterval = okHttpClient.pingIntervalMillis();
            this.minWebSocketMessageToCompress = okHttpClient.minWebSocketMessageToCompress();
            this.routeDatabase = okHttpClient.getRouteDatabase();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final List<ConnectionSpec> getDEFAULT_CONNECTION_SPECS$okhttp() {
            return OkHttpClient.DEFAULT_CONNECTION_SPECS;
        }

        @NotNull
        public final List<Protocol> getDEFAULT_PROTOCOLS$okhttp() {
            return OkHttpClient.DEFAULT_PROTOCOLS;
        }
    }

    public OkHttpClient(@NotNull Builder builder) throws NoSuchAlgorithmException, KeyStoreException {
        ProxySelector proxySelector$okhttp;
        t.j(builder, "builder");
        this.dispatcher = builder.getDispatcher$okhttp();
        this.connectionPool = builder.getConnectionPool$okhttp();
        this.interceptors = Util.toImmutableList(builder.getInterceptors$okhttp());
        this.networkInterceptors = Util.toImmutableList(builder.getNetworkInterceptors$okhttp());
        this.eventListenerFactory = builder.getEventListenerFactory$okhttp();
        this.retryOnConnectionFailure = builder.getRetryOnConnectionFailure$okhttp();
        this.authenticator = builder.getAuthenticator$okhttp();
        this.followRedirects = builder.getFollowRedirects$okhttp();
        this.followSslRedirects = builder.getFollowSslRedirects$okhttp();
        this.cookieJar = builder.getCookieJar$okhttp();
        this.cache = builder.getCache$okhttp();
        this.dns = builder.getDns$okhttp();
        this.proxy = builder.getProxy$okhttp();
        if (builder.getProxy$okhttp() != null) {
            proxySelector$okhttp = NullProxySelector.INSTANCE;
        } else {
            proxySelector$okhttp = builder.getProxySelector$okhttp();
            proxySelector$okhttp = proxySelector$okhttp == null ? ProxySelector.getDefault() : proxySelector$okhttp;
            if (proxySelector$okhttp == null) {
                proxySelector$okhttp = NullProxySelector.INSTANCE;
            }
        }
        this.proxySelector = proxySelector$okhttp;
        this.proxyAuthenticator = builder.getProxyAuthenticator$okhttp();
        this.socketFactory = builder.getSocketFactory$okhttp();
        List<ConnectionSpec> connectionSpecs$okhttp = builder.getConnectionSpecs$okhttp();
        this.connectionSpecs = connectionSpecs$okhttp;
        this.protocols = builder.getProtocols$okhttp();
        this.hostnameVerifier = builder.getHostnameVerifier$okhttp();
        this.callTimeoutMillis = builder.getCallTimeout$okhttp();
        this.connectTimeoutMillis = builder.getConnectTimeout$okhttp();
        this.readTimeoutMillis = builder.getReadTimeout$okhttp();
        this.writeTimeoutMillis = builder.getWriteTimeout$okhttp();
        this.pingIntervalMillis = builder.getPingInterval$okhttp();
        this.minWebSocketMessageToCompress = builder.getMinWebSocketMessageToCompress$okhttp();
        RouteDatabase routeDatabase$okhttp = builder.getRouteDatabase$okhttp();
        this.routeDatabase = routeDatabase$okhttp == null ? new RouteDatabase() : routeDatabase$okhttp;
        List<ConnectionSpec> list = connectionSpecs$okhttp;
        if ((list instanceof Collection) && list.isEmpty()) {
            this.sslSocketFactoryOrNull = null;
            this.certificateChainCleaner = null;
            this.x509TrustManager = null;
            this.certificatePinner = CertificatePinner.DEFAULT;
        } else {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((ConnectionSpec) it.next()).isTls()) {
                    if (builder.getSslSocketFactoryOrNull$okhttp() != null) {
                        this.sslSocketFactoryOrNull = builder.getSslSocketFactoryOrNull$okhttp();
                        CertificateChainCleaner certificateChainCleaner$okhttp = builder.getCertificateChainCleaner$okhttp();
                        t.g(certificateChainCleaner$okhttp);
                        this.certificateChainCleaner = certificateChainCleaner$okhttp;
                        X509TrustManager x509TrustManagerOrNull$okhttp = builder.getX509TrustManagerOrNull$okhttp();
                        t.g(x509TrustManagerOrNull$okhttp);
                        this.x509TrustManager = x509TrustManagerOrNull$okhttp;
                        CertificatePinner certificatePinner$okhttp = builder.getCertificatePinner$okhttp();
                        t.g(certificateChainCleaner$okhttp);
                        this.certificatePinner = certificatePinner$okhttp.withCertificateChainCleaner$okhttp(certificateChainCleaner$okhttp);
                    } else {
                        Platform.Companion companion = Platform.Companion;
                        X509TrustManager x509TrustManagerPlatformTrustManager = companion.get().platformTrustManager();
                        this.x509TrustManager = x509TrustManagerPlatformTrustManager;
                        Platform platform = companion.get();
                        t.g(x509TrustManagerPlatformTrustManager);
                        this.sslSocketFactoryOrNull = platform.newSslSocketFactory(x509TrustManagerPlatformTrustManager);
                        CertificateChainCleaner.Companion companion2 = CertificateChainCleaner.Companion;
                        t.g(x509TrustManagerPlatformTrustManager);
                        CertificateChainCleaner certificateChainCleaner = companion2.get(x509TrustManagerPlatformTrustManager);
                        this.certificateChainCleaner = certificateChainCleaner;
                        CertificatePinner certificatePinner$okhttp2 = builder.getCertificatePinner$okhttp();
                        t.g(certificateChainCleaner);
                        this.certificatePinner = certificatePinner$okhttp2.withCertificateChainCleaner$okhttp(certificateChainCleaner);
                    }
                }
            }
            this.sslSocketFactoryOrNull = null;
            this.certificateChainCleaner = null;
            this.x509TrustManager = null;
            this.certificatePinner = CertificatePinner.DEFAULT;
        }
        verifyClientState();
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_authenticator, reason: not valid java name */
    public final Authenticator m1727deprecated_authenticator() {
        return this.authenticator;
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_cache, reason: not valid java name */
    public final Cache m1728deprecated_cache() {
        return this.cache;
    }

    /* JADX INFO: renamed from: -deprecated_callTimeoutMillis, reason: not valid java name */
    public final int m1729deprecated_callTimeoutMillis() {
        return this.callTimeoutMillis;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_certificatePinner, reason: not valid java name */
    public final CertificatePinner m1730deprecated_certificatePinner() {
        return this.certificatePinner;
    }

    /* JADX INFO: renamed from: -deprecated_connectTimeoutMillis, reason: not valid java name */
    public final int m1731deprecated_connectTimeoutMillis() {
        return this.connectTimeoutMillis;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_connectionPool, reason: not valid java name */
    public final ConnectionPool m1732deprecated_connectionPool() {
        return this.connectionPool;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_connectionSpecs, reason: not valid java name */
    public final List<ConnectionSpec> m1733deprecated_connectionSpecs() {
        return this.connectionSpecs;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_cookieJar, reason: not valid java name */
    public final CookieJar m1734deprecated_cookieJar() {
        return this.cookieJar;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_dispatcher, reason: not valid java name */
    public final Dispatcher m1735deprecated_dispatcher() {
        return this.dispatcher;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_dns, reason: not valid java name */
    public final Dns m1736deprecated_dns() {
        return this.dns;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_eventListenerFactory, reason: not valid java name */
    public final EventListener.Factory m1737deprecated_eventListenerFactory() {
        return this.eventListenerFactory;
    }

    /* JADX INFO: renamed from: -deprecated_followRedirects, reason: not valid java name */
    public final boolean m1738deprecated_followRedirects() {
        return this.followRedirects;
    }

    /* JADX INFO: renamed from: -deprecated_followSslRedirects, reason: not valid java name */
    public final boolean m1739deprecated_followSslRedirects() {
        return this.followSslRedirects;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_hostnameVerifier, reason: not valid java name */
    public final HostnameVerifier m1740deprecated_hostnameVerifier() {
        return this.hostnameVerifier;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_interceptors, reason: not valid java name */
    public final List<Interceptor> m1741deprecated_interceptors() {
        return this.interceptors;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_networkInterceptors, reason: not valid java name */
    public final List<Interceptor> m1742deprecated_networkInterceptors() {
        return this.networkInterceptors;
    }

    /* JADX INFO: renamed from: -deprecated_pingIntervalMillis, reason: not valid java name */
    public final int m1743deprecated_pingIntervalMillis() {
        return this.pingIntervalMillis;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_protocols, reason: not valid java name */
    public final List<Protocol> m1744deprecated_protocols() {
        return this.protocols;
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_proxy, reason: not valid java name */
    public final Proxy m1745deprecated_proxy() {
        return this.proxy;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_proxyAuthenticator, reason: not valid java name */
    public final Authenticator m1746deprecated_proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_proxySelector, reason: not valid java name */
    public final ProxySelector m1747deprecated_proxySelector() {
        return this.proxySelector;
    }

    /* JADX INFO: renamed from: -deprecated_readTimeoutMillis, reason: not valid java name */
    public final int m1748deprecated_readTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    /* JADX INFO: renamed from: -deprecated_retryOnConnectionFailure, reason: not valid java name */
    public final boolean m1749deprecated_retryOnConnectionFailure() {
        return this.retryOnConnectionFailure;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_socketFactory, reason: not valid java name */
    public final SocketFactory m1750deprecated_socketFactory() {
        return this.socketFactory;
    }

    /* JADX INFO: renamed from: -deprecated_writeTimeoutMillis, reason: not valid java name */
    public final int m1752deprecated_writeTimeoutMillis() {
        return this.writeTimeoutMillis;
    }

    @NotNull
    public final Authenticator authenticator() {
        return this.authenticator;
    }

    @Nullable
    public final Cache cache() {
        return this.cache;
    }

    public final int callTimeoutMillis() {
        return this.callTimeoutMillis;
    }

    @Nullable
    public final CertificateChainCleaner certificateChainCleaner() {
        return this.certificateChainCleaner;
    }

    @NotNull
    public final CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    public final int connectTimeoutMillis() {
        return this.connectTimeoutMillis;
    }

    @NotNull
    public final ConnectionPool connectionPool() {
        return this.connectionPool;
    }

    @NotNull
    public final List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    @NotNull
    public final CookieJar cookieJar() {
        return this.cookieJar;
    }

    @NotNull
    public final Dispatcher dispatcher() {
        return this.dispatcher;
    }

    @NotNull
    public final Dns dns() {
        return this.dns;
    }

    @NotNull
    public final EventListener.Factory eventListenerFactory() {
        return this.eventListenerFactory;
    }

    public final boolean followRedirects() {
        return this.followRedirects;
    }

    public final boolean followSslRedirects() {
        return this.followSslRedirects;
    }

    @NotNull
    public final RouteDatabase getRouteDatabase() {
        return this.routeDatabase;
    }

    @NotNull
    public final HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
    }

    @NotNull
    public final List<Interceptor> interceptors() {
        return this.interceptors;
    }

    public final long minWebSocketMessageToCompress() {
        return this.minWebSocketMessageToCompress;
    }

    @NotNull
    public final List<Interceptor> networkInterceptors() {
        return this.networkInterceptors;
    }

    public final int pingIntervalMillis() {
        return this.pingIntervalMillis;
    }

    @NotNull
    public final List<Protocol> protocols() {
        return this.protocols;
    }

    @Nullable
    public final Proxy proxy() {
        return this.proxy;
    }

    @NotNull
    public final Authenticator proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    @NotNull
    public final ProxySelector proxySelector() {
        return this.proxySelector;
    }

    public final int readTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    public final boolean retryOnConnectionFailure() {
        return this.retryOnConnectionFailure;
    }

    @NotNull
    public final SocketFactory socketFactory() {
        return this.socketFactory;
    }

    public final int writeTimeoutMillis() {
        return this.writeTimeoutMillis;
    }

    @Nullable
    public final X509TrustManager x509TrustManager() {
        return this.x509TrustManager;
    }

    private final void verifyClientState() {
        if (!(!this.interceptors.contains(null))) {
            throw new IllegalStateException(t.s("Null interceptor: ", interceptors()).toString());
        }
        if (!(!this.networkInterceptors.contains(null))) {
            throw new IllegalStateException(t.s("Null network interceptor: ", networkInterceptors()).toString());
        }
        List<ConnectionSpec> list = this.connectionSpecs;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((ConnectionSpec) it.next()).isTls()) {
                    if (this.sslSocketFactoryOrNull == null) {
                        throw new IllegalStateException("sslSocketFactory == null".toString());
                    }
                    if (this.certificateChainCleaner == null) {
                        throw new IllegalStateException("certificateChainCleaner == null".toString());
                    }
                    if (this.x509TrustManager == null) {
                        throw new IllegalStateException("x509TrustManager == null".toString());
                    }
                    return;
                }
            }
        }
        if (this.sslSocketFactoryOrNull != null) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (this.certificateChainCleaner != null) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (this.x509TrustManager != null) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!t.e(this.certificatePinner, CertificatePinner.DEFAULT)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    @NotNull
    public Builder newBuilder() {
        return new Builder(this);
    }

    @Override // okhttp3.Call.Factory
    @NotNull
    public Call newCall(@NotNull Request request) {
        t.j(request, "request");
        return new RealCall(this, request, false);
    }

    @Override // okhttp3.WebSocket.Factory
    @NotNull
    public WebSocket newWebSocket(@NotNull Request request, @NotNull WebSocketListener listener) {
        t.j(request, "request");
        t.j(listener, "listener");
        RealWebSocket realWebSocket = new RealWebSocket(TaskRunner.INSTANCE, request, listener, new Random(), this.pingIntervalMillis, null, this.minWebSocketMessageToCompress);
        realWebSocket.connect(this);
        return realWebSocket;
    }

    @NotNull
    public final SSLSocketFactory sslSocketFactory() {
        SSLSocketFactory sSLSocketFactory = this.sslSocketFactoryOrNull;
        if (sSLSocketFactory != null) {
            return sSLSocketFactory;
        }
        throw new IllegalStateException("CLEARTEXT-only client");
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_sslSocketFactory, reason: not valid java name */
    public final SSLSocketFactory m1751deprecated_sslSocketFactory() {
        return sslSocketFactory();
    }

    @NotNull
    public Object clone() {
        return super.clone();
    }

    public OkHttpClient() {
        this(new Builder());
    }
}
