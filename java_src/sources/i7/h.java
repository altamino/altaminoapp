package i7;

import io.ktor.http.u;
import io.ktor.http.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class h {

    @NotNull
    private final Object body;

    @NotNull
    private final kotlin.coroutines.g callContext;

    @NotNull
    private final io.ktor.http.k headers;

    @NotNull
    private final m7.b requestTime;

    @NotNull
    private final m7.b responseTime;

    @NotNull
    private final v statusCode;

    @NotNull
    private final u version;

    @NotNull
    public final Object a() {
        return this.body;
    }

    @NotNull
    public final kotlin.coroutines.g b() {
        return this.callContext;
    }

    @NotNull
    public final io.ktor.http.k c() {
        return this.headers;
    }

    @NotNull
    public final m7.b d() {
        return this.requestTime;
    }

    @NotNull
    public final m7.b e() {
        return this.responseTime;
    }

    @NotNull
    public final v f() {
        return this.statusCode;
    }

    @NotNull
    public final u g() {
        return this.version;
    }

    public h(@NotNull v statusCode, @NotNull m7.b requestTime, @NotNull io.ktor.http.k headers, @NotNull u version, @NotNull Object body, @NotNull kotlin.coroutines.g callContext) {
        t.j(statusCode, "statusCode");
        t.j(requestTime, "requestTime");
        t.j(headers, "headers");
        t.j(version, "version");
        t.j(body, "body");
        t.j(callContext, "callContext");
        this.statusCode = statusCode;
        this.requestTime = requestTime;
        this.headers = headers;
        this.version = version;
        this.body = body;
        this.callContext = callContext;
        this.responseTime = m7.a.b(null, 1, null);
    }

    @NotNull
    public String toString() {
        return "HttpResponseData=(statusCode=" + this.statusCode + ')';
    }
}
