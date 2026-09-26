package okhttp3.internal;

import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.t;
import okhttp3.Cache;
import okhttp3.ConnectionSpec;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class Internal {
    @NotNull
    public static final Headers.Builder addHeaderLenient(@NotNull Headers.Builder builder, @NotNull String line) {
        t.j(builder, "builder");
        t.j(line, "line");
        return builder.addLenient$okhttp(line);
    }

    @NotNull
    public static final Headers.Builder addHeaderLenient(@NotNull Headers.Builder builder, @NotNull String name, @NotNull String value) {
        t.j(builder, "builder");
        t.j(name, "name");
        t.j(value, "value");
        return builder.addLenient$okhttp(name, value);
    }

    public static final void applyConnectionSpec(@NotNull ConnectionSpec connectionSpec, @NotNull SSLSocket sslSocket, boolean z6) {
        t.j(connectionSpec, "connectionSpec");
        t.j(sslSocket, "sslSocket");
        connectionSpec.apply$okhttp(sslSocket, z6);
    }

    @Nullable
    public static final Response cacheGet(@NotNull Cache cache, @NotNull Request request) {
        t.j(cache, "cache");
        t.j(request, "request");
        return cache.get$okhttp(request);
    }

    @NotNull
    public static final String cookieToString(@NotNull Cookie cookie, boolean z6) {
        t.j(cookie, "cookie");
        return cookie.toString$okhttp(z6);
    }

    @Nullable
    public static final Cookie parseCookie(long j6, @NotNull HttpUrl url, @NotNull String setCookie) {
        t.j(url, "url");
        t.j(setCookie, "setCookie");
        return Cookie.Companion.parse$okhttp(j6, url, setCookie);
    }
}
