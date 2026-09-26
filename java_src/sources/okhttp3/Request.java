package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import com.android.volley.toolbox.HttpClientStack;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes7.dex */
public final class Request {

    @Nullable
    private final RequestBody body;

    @NotNull
    private final Headers headers;

    @Nullable
    private CacheControl lazyCacheControl;

    @NotNull
    private final String method;

    @NotNull
    private final Map<Class<?>, Object> tags;

    @NotNull
    private final HttpUrl url;

    public static class Builder {

        @Nullable
        private RequestBody body;

        @NotNull
        private Headers.Builder headers;

        @NotNull
        private String method;

        @NotNull
        private Map<Class<?>, Object> tags;

        @Nullable
        private HttpUrl url;

        public Builder() {
            this.tags = new LinkedHashMap();
            this.method = ShareTarget.METHOD_GET;
            this.headers = new Headers.Builder();
        }

        @NotNull
        public final Builder delete() {
            return delete$default(this, null, 1, null);
        }

        @Nullable
        public final RequestBody getBody$okhttp() {
            return this.body;
        }

        @NotNull
        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        @NotNull
        public final String getMethod$okhttp() {
            return this.method;
        }

        @NotNull
        public final Map<Class<?>, Object> getTags$okhttp() {
            return this.tags;
        }

        @Nullable
        public final HttpUrl getUrl$okhttp() {
            return this.url;
        }

        public final void setBody$okhttp(@Nullable RequestBody requestBody) {
            this.body = requestBody;
        }

        public final void setHeaders$okhttp(@NotNull Headers.Builder builder) {
            t.j(builder, "<set-?>");
            this.headers = builder;
        }

        public final void setMethod$okhttp(@NotNull String str) {
            t.j(str, "<set-?>");
            this.method = str;
        }

        public final void setTags$okhttp(@NotNull Map<Class<?>, Object> map) {
            t.j(map, "<set-?>");
            this.tags = map;
        }

        public final void setUrl$okhttp(@Nullable HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        @NotNull
        public Builder tag(@Nullable Object obj) {
            return tag(Object.class, obj);
        }

        @NotNull
        public Builder url(@NotNull HttpUrl url) {
            t.j(url, "url");
            setUrl$okhttp(url);
            return this;
        }

        public static /* synthetic */ Builder delete$default(Builder builder, RequestBody requestBody, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
            }
            if ((i10 & 1) != 0) {
                requestBody = Util.EMPTY_REQUEST;
            }
            return builder.delete(requestBody);
        }

        @NotNull
        public Builder addHeader(@NotNull String name, @NotNull String value) {
            t.j(name, "name");
            t.j(value, "value");
            getHeaders$okhttp().add(name, value);
            return this;
        }

        @NotNull
        public Request build() {
            HttpUrl httpUrl = this.url;
            if (httpUrl != null) {
                return new Request(httpUrl, this.method, this.headers.build(), this.body, Util.toImmutableMap(this.tags));
            }
            throw new IllegalStateException("url == null".toString());
        }

        @NotNull
        public Builder cacheControl(@NotNull CacheControl cacheControl) {
            t.j(cacheControl, "cacheControl");
            String string = cacheControl.toString();
            return string.length() == 0 ? removeHeader("Cache-Control") : header("Cache-Control", string);
        }

        @NotNull
        public Builder delete(@Nullable RequestBody requestBody) {
            return method("DELETE", requestBody);
        }

        @NotNull
        public Builder get() {
            return method(ShareTarget.METHOD_GET, null);
        }

        @NotNull
        public Builder head() {
            return method("HEAD", null);
        }

        @NotNull
        public Builder header(@NotNull String name, @NotNull String value) {
            t.j(name, "name");
            t.j(value, "value");
            getHeaders$okhttp().set(name, value);
            return this;
        }

        @NotNull
        public Builder headers(@NotNull Headers headers) {
            t.j(headers, "headers");
            setHeaders$okhttp(headers.newBuilder());
            return this;
        }

        @NotNull
        public Builder method(@NotNull String method, @Nullable RequestBody requestBody) {
            t.j(method, "method");
            if (method.length() <= 0) {
                throw new IllegalArgumentException("method.isEmpty() == true".toString());
            }
            if (requestBody == null) {
                if (!(!HttpMethod.requiresRequestBody(method))) {
                    throw new IllegalArgumentException(("method " + method + " must have a request body.").toString());
                }
            } else if (!HttpMethod.permitsRequestBody(method)) {
                throw new IllegalArgumentException(("method " + method + " must not have a request body.").toString());
            }
            setMethod$okhttp(method);
            setBody$okhttp(requestBody);
            return this;
        }

        @NotNull
        public Builder patch(@NotNull RequestBody body) {
            t.j(body, "body");
            return method(HttpClientStack.HttpPatch.METHOD_NAME, body);
        }

        @NotNull
        public Builder post(@NotNull RequestBody body) {
            t.j(body, "body");
            return method("POST", body);
        }

        @NotNull
        public Builder put(@NotNull RequestBody body) {
            t.j(body, "body");
            return method("PUT", body);
        }

        @NotNull
        public Builder removeHeader(@NotNull String name) {
            t.j(name, "name");
            getHeaders$okhttp().removeAll(name);
            return this;
        }

        @NotNull
        public <T> Builder tag(@NotNull Class<? super T> type, @Nullable T t5) {
            t.j(type, "type");
            if (t5 == null) {
                getTags$okhttp().remove(type);
            } else {
                if (getTags$okhttp().isEmpty()) {
                    setTags$okhttp(new LinkedHashMap());
                }
                Map<Class<?>, Object> tags$okhttp = getTags$okhttp();
                T tCast = type.cast(t5);
                t.g(tCast);
                tags$okhttp.put(type, tCast);
            }
            return this;
        }

        @NotNull
        public Builder url(@NotNull String url) {
            t.j(url, "url");
            if (kotlin.text.t.I(url, "ws:", true)) {
                String strSubstring = url.substring(3);
                t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                url = t.s("http:", strSubstring);
            } else if (kotlin.text.t.I(url, "wss:", true)) {
                String strSubstring2 = url.substring(4);
                t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
                url = t.s("https:", strSubstring2);
            }
            return url(HttpUrl.Companion.get(url));
        }

        public Builder(@NotNull Request request) {
            Map<Class<?>, Object> mapA;
            t.j(request, "request");
            this.tags = new LinkedHashMap();
            this.url = request.url();
            this.method = request.method();
            this.body = request.body();
            if (!request.getTags$okhttp().isEmpty()) {
                mapA = s0.A(request.getTags$okhttp());
            } else {
                mapA = new LinkedHashMap<>();
            }
            this.tags = mapA;
            this.headers = request.headers().newBuilder();
        }

        @NotNull
        public Builder url(@NotNull URL url) {
            t.j(url, "url");
            HttpUrl.Companion companion = HttpUrl.Companion;
            String string = url.toString();
            t.i(string, "url.toString()");
            return url(companion.get(string));
        }
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_body, reason: not valid java name */
    public final RequestBody m1755deprecated_body() {
        return this.body;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_headers, reason: not valid java name */
    public final Headers m1757deprecated_headers() {
        return this.headers;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_method, reason: not valid java name */
    public final String m1758deprecated_method() {
        return this.method;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_url, reason: not valid java name */
    public final HttpUrl m1759deprecated_url() {
        return this.url;
    }

    @Nullable
    public final RequestBody body() {
        return this.body;
    }

    @NotNull
    public final Map<Class<?>, Object> getTags$okhttp() {
        return this.tags;
    }

    @NotNull
    public final Headers headers() {
        return this.headers;
    }

    @NotNull
    public final String method() {
        return this.method;
    }

    @Nullable
    public final Object tag() {
        return tag(Object.class);
    }

    @NotNull
    public final HttpUrl url() {
        return this.url;
    }

    public Request(@NotNull HttpUrl url, @NotNull String method, @NotNull Headers headers, @Nullable RequestBody requestBody, @NotNull Map<Class<?>, ? extends Object> tags) {
        t.j(url, "url");
        t.j(method, "method");
        t.j(headers, "headers");
        t.j(tags, "tags");
        this.url = url;
        this.method = method;
        this.headers = headers;
        this.body = requestBody;
        this.tags = tags;
    }

    @NotNull
    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl cacheControl2 = CacheControl.Companion.parse(this.headers);
        this.lazyCacheControl = cacheControl2;
        return cacheControl2;
    }

    @Nullable
    public final String header(@NotNull String name) {
        t.j(name, "name");
        return this.headers.get(name);
    }

    @NotNull
    public final List<String> headers(@NotNull String name) {
        t.j(name, "name");
        return this.headers.values(name);
    }

    public final boolean isHttps() {
        return this.url.isHttps();
    }

    @NotNull
    public final Builder newBuilder() {
        return new Builder(this);
    }

    @Nullable
    public final <T> T tag(@NotNull Class<? extends T> type) {
        t.j(type, "type");
        return type.cast(this.tags.get(type));
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(method());
        sb.append(", url=");
        sb.append(url());
        if (headers().size() != 0) {
            sb.append(", headers=[");
            int i10 = 0;
            for (u<? extends String, ? extends String> uVar : headers()) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    v.w();
                }
                u<? extends String, ? extends String> uVar2 = uVar;
                String strA = uVar2.a();
                String strB = uVar2.b();
                if (i10 > 0) {
                    sb.append(", ");
                }
                sb.append(strA);
                sb.append(kotlinx.serialization.json.internal.b.COLON);
                sb.append(strB);
                i10 = i11;
            }
            sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        }
        if (!getTags$okhttp().isEmpty()) {
            sb.append(", tags=");
            sb.append(getTags$okhttp());
        }
        sb.append(kotlinx.serialization.json.internal.b.END_OBJ);
        String string = sb.toString();
        t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_cacheControl, reason: not valid java name */
    public final CacheControl m1756deprecated_cacheControl() {
        return cacheControl();
    }
}
