package i7;

import io.ktor.client.engine.f;
import io.ktor.http.p0;
import io.ktor.http.t;
import java.util.Map;
import java.util.Set;
import kotlin.collections.y0;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class e {

    @NotNull
    private final io.ktor.util.b attributes;

    @NotNull
    private final k7.b body;

    @NotNull
    private final b2 executionContext;

    @NotNull
    private final io.ktor.http.k headers;

    @NotNull
    private final t method;

    @NotNull
    private final Set<io.ktor.client.engine.e<?>> requiredCapabilities;

    @NotNull
    private final p0 url;

    @NotNull
    public final io.ktor.util.b a() {
        return this.attributes;
    }

    @NotNull
    public final k7.b b() {
        return this.body;
    }

    @NotNull
    public final b2 d() {
        return this.executionContext;
    }

    @NotNull
    public final io.ktor.http.k e() {
        return this.headers;
    }

    @NotNull
    public final t f() {
        return this.method;
    }

    @NotNull
    public final Set<io.ktor.client.engine.e<?>> g() {
        return this.requiredCapabilities;
    }

    @NotNull
    public final p0 h() {
        return this.url;
    }

    public e(@NotNull p0 url, @NotNull t method, @NotNull io.ktor.http.k headers, @NotNull k7.b body, @NotNull b2 executionContext, @NotNull io.ktor.util.b attributes) {
        Set<io.ktor.client.engine.e<?>> setKeySet;
        kotlin.jvm.internal.t.j(url, "url");
        kotlin.jvm.internal.t.j(method, "method");
        kotlin.jvm.internal.t.j(headers, "headers");
        kotlin.jvm.internal.t.j(body, "body");
        kotlin.jvm.internal.t.j(executionContext, "executionContext");
        kotlin.jvm.internal.t.j(attributes, "attributes");
        this.url = url;
        this.method = method;
        this.headers = headers;
        this.body = body;
        this.executionContext = executionContext;
        this.attributes = attributes;
        Map map = (Map) attributes.e(f.a());
        this.requiredCapabilities = (map == null || (setKeySet = map.keySet()) == null) ? y0.e() : setKeySet;
    }

    @Nullable
    public final <T> T c(@NotNull io.ktor.client.engine.e<T> key) {
        kotlin.jvm.internal.t.j(key, "key");
        Map map = (Map) this.attributes.e(f.a());
        if (map != null) {
            return (T) map.get(key);
        }
        return null;
    }

    @NotNull
    public String toString() {
        return "HttpRequestData(url=" + this.url + ", method=" + this.method + ')';
    }
}
