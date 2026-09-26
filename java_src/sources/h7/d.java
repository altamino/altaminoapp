package h7;

import io.ktor.http.k;
import io.ktor.http.u;
import io.ktor.http.v;
import io.ktor.utils.io.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class d extends io.ktor.client.statement.c {

    @NotNull
    private final io.ktor.client.call.b call;

    @NotNull
    private final g content;

    @NotNull
    private final kotlin.coroutines.g coroutineContext;

    @NotNull
    private final io.ktor.client.statement.c origin;

    @Override // io.ktor.client.statement.c
    @NotNull
    public g a() {
        return this.content;
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public io.ktor.client.call.b y0() {
        return this.call;
    }

    public d(@NotNull io.ktor.client.call.b call, @NotNull g content, @NotNull io.ktor.client.statement.c origin) {
        t.j(call, "call");
        t.j(content, "content");
        t.j(origin, "origin");
        this.call = call;
        this.content = content;
        this.origin = origin;
        this.coroutineContext = origin.getCoroutineContext();
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public m7.b b() {
        return this.origin.b();
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public m7.b c() {
        return this.origin.c();
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public v e() {
        return this.origin.e();
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public u f() {
        return this.origin.f();
    }

    @Override // io.ktor.http.q
    @NotNull
    public k getHeaders() {
        return this.origin.getHeaders();
    }
}
