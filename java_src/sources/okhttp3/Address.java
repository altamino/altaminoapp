package okhttp3;

import androidx.webkit.ProxyConfig;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class Address {

    @Nullable
    private final CertificatePinner certificatePinner;

    @NotNull
    private final List<ConnectionSpec> connectionSpecs;

    @NotNull
    private final Dns dns;

    @Nullable
    private final HostnameVerifier hostnameVerifier;

    @NotNull
    private final List<Protocol> protocols;

    @Nullable
    private final Proxy proxy;

    @NotNull
    private final Authenticator proxyAuthenticator;

    @NotNull
    private final ProxySelector proxySelector;

    @NotNull
    private final SocketFactory socketFactory;

    @Nullable
    private final SSLSocketFactory sslSocketFactory;

    @NotNull
    private final HttpUrl url;

    public Address(@NotNull String uriHost, int i10, @NotNull Dns dns, @NotNull SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable CertificatePinner certificatePinner, @NotNull Authenticator proxyAuthenticator, @Nullable Proxy proxy, @NotNull List<? extends Protocol> protocols, @NotNull List<ConnectionSpec> connectionSpecs, @NotNull ProxySelector proxySelector) {
        t.j(uriHost, "uriHost");
        t.j(dns, "dns");
        t.j(socketFactory, "socketFactory");
        t.j(proxyAuthenticator, "proxyAuthenticator");
        t.j(protocols, "protocols");
        t.j(connectionSpecs, "connectionSpecs");
        t.j(proxySelector, "proxySelector");
        this.dns = dns;
        this.socketFactory = socketFactory;
        this.sslSocketFactory = sSLSocketFactory;
        this.hostnameVerifier = hostnameVerifier;
        this.certificatePinner = certificatePinner;
        this.proxyAuthenticator = proxyAuthenticator;
        this.proxy = proxy;
        this.proxySelector = proxySelector;
        this.url = new HttpUrl.Builder().scheme(sSLSocketFactory != null ? ProxyConfig.MATCH_HTTPS : ProxyConfig.MATCH_HTTP).host(uriHost).port(i10).build();
        this.protocols = Util.toImmutableList(protocols);
        this.connectionSpecs = Util.toImmutableList(connectionSpecs);
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_certificatePinner, reason: not valid java name */
    public final CertificatePinner m1643deprecated_certificatePinner() {
        return this.certificatePinner;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_connectionSpecs, reason: not valid java name */
    public final List<ConnectionSpec> m1644deprecated_connectionSpecs() {
        return this.connectionSpecs;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_dns, reason: not valid java name */
    public final Dns m1645deprecated_dns() {
        return this.dns;
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_hostnameVerifier, reason: not valid java name */
    public final HostnameVerifier m1646deprecated_hostnameVerifier() {
        return this.hostnameVerifier;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_protocols, reason: not valid java name */
    public final List<Protocol> m1647deprecated_protocols() {
        return this.protocols;
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_proxy, reason: not valid java name */
    public final Proxy m1648deprecated_proxy() {
        return this.proxy;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_proxyAuthenticator, reason: not valid java name */
    public final Authenticator m1649deprecated_proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_proxySelector, reason: not valid java name */
    public final ProxySelector m1650deprecated_proxySelector() {
        return this.proxySelector;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_socketFactory, reason: not valid java name */
    public final SocketFactory m1651deprecated_socketFactory() {
        return this.socketFactory;
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_sslSocketFactory, reason: not valid java name */
    public final SSLSocketFactory m1652deprecated_sslSocketFactory() {
        return this.sslSocketFactory;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_url, reason: not valid java name */
    public final HttpUrl m1653deprecated_url() {
        return this.url;
    }

    @Nullable
    public final CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    @NotNull
    public final List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    @NotNull
    public final Dns dns() {
        return this.dns;
    }

    @Nullable
    public final HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
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

    @NotNull
    public final SocketFactory socketFactory() {
        return this.socketFactory;
    }

    @Nullable
    public final SSLSocketFactory sslSocketFactory() {
        return this.sslSocketFactory;
    }

    @NotNull
    public final HttpUrl url() {
        return this.url;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Address) {
            Address address = (Address) obj;
            if (t.e(this.url, address.url) && equalsNonHost$okhttp(address)) {
                return true;
            }
        }
        return false;
    }

    public final boolean equalsNonHost$okhttp(@NotNull Address that) {
        t.j(that, "that");
        return t.e(this.dns, that.dns) && t.e(this.proxyAuthenticator, that.proxyAuthenticator) && t.e(this.protocols, that.protocols) && t.e(this.connectionSpecs, that.connectionSpecs) && t.e(this.proxySelector, that.proxySelector) && t.e(this.proxy, that.proxy) && t.e(this.sslSocketFactory, that.sslSocketFactory) && t.e(this.hostnameVerifier, that.hostnameVerifier) && t.e(this.certificatePinner, that.certificatePinner) && this.url.port() == that.url.port();
    }

    public int hashCode() {
        return ((((((((((((((((((527 + this.url.hashCode()) * 31) + this.dns.hashCode()) * 31) + this.proxyAuthenticator.hashCode()) * 31) + this.protocols.hashCode()) * 31) + this.connectionSpecs.hashCode()) * 31) + this.proxySelector.hashCode()) * 31) + Objects.hashCode(this.proxy)) * 31) + Objects.hashCode(this.sslSocketFactory)) * 31) + Objects.hashCode(this.hostnameVerifier)) * 31) + Objects.hashCode(this.certificatePinner);
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.url.host());
        sb.append(kotlinx.serialization.json.internal.b.COLON);
        sb.append(this.url.port());
        sb.append(", ");
        Proxy proxy = this.proxy;
        sb.append(proxy != null ? t.s("proxy=", proxy) : t.s("proxySelector=", this.proxySelector));
        sb.append(kotlinx.serialization.json.internal.b.END_OBJ);
        return sb.toString();
    }
}
