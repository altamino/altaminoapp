package i7;

import io.ktor.http.p0;
import io.ktor.http.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public class b implements c {

    @NotNull
    private final io.ktor.util.b attributes;

    @NotNull
    private final io.ktor.client.call.b call;

    @NotNull
    private final k7.b content;

    @NotNull
    private final io.ktor.http.k headers;

    @NotNull
    private final t method;

    @NotNull
    private final p0 url;

    @Override // i7.c
    @NotNull
    public io.ktor.util.b L() {
        return this.attributes;
    }

    @Override // io.ktor.http.q
    @NotNull
    public io.ktor.http.k getHeaders() {
        return this.headers;
    }

    @Override // i7.c
    @NotNull
    public t getMethod() {
        return this.method;
    }

    @Override // i7.c
    @NotNull
    public p0 getUrl() {
        return this.url;
    }

    @Override // i7.c
    @NotNull
    public io.ktor.client.call.b y0() {
        return this.call;
    }

    public b(@NotNull io.ktor.client.call.b call, @NotNull e data) {
        kotlin.jvm.internal.t.j(call, "call");
        kotlin.jvm.internal.t.j(data, "data");
        this.call = call;
        this.method = data.f();
        this.url = data.h();
        this.content = data.b();
        this.headers = data.e();
        this.attributes = data.a();
    }

    @Override // i7.c, kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return y0().getCoroutineContext();
    }
}
