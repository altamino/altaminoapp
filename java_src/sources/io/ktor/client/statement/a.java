package io.ktor.client.statement;

import i7.h;
import io.ktor.http.k;
import io.ktor.http.u;
import io.ktor.http.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class a extends c {

    @NotNull
    private final io.ktor.client.call.b call;

    @NotNull
    private final io.ktor.utils.io.g content;

    @NotNull
    private final kotlin.coroutines.g coroutineContext;

    @NotNull
    private final k headers;

    @NotNull
    private final m7.b requestTime;

    @NotNull
    private final m7.b responseTime;

    @NotNull
    private final v status;

    @NotNull
    private final u version;

    @Override // io.ktor.client.statement.c
    @NotNull
    public io.ktor.utils.io.g a() {
        return this.content;
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public m7.b b() {
        return this.requestTime;
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public m7.b c() {
        return this.responseTime;
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public v e() {
        return this.status;
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public u f() {
        return this.version;
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // io.ktor.http.q
    @NotNull
    public k getHeaders() {
        return this.headers;
    }

    @Override // io.ktor.client.statement.c
    @NotNull
    public io.ktor.client.call.b y0() {
        return this.call;
    }

    public a(@NotNull io.ktor.client.call.b call, @NotNull h responseData) {
        t.j(call, "call");
        t.j(responseData, "responseData");
        this.call = call;
        this.coroutineContext = responseData.b();
        this.status = responseData.f();
        this.version = responseData.g();
        this.requestTime = responseData.d();
        this.responseTime = responseData.e();
        Object objA = responseData.a();
        io.ktor.utils.io.g gVar = objA instanceof io.ktor.utils.io.g ? (io.ktor.utils.io.g) objA : null;
        this.content = gVar == null ? io.ktor.utils.io.g.Companion.a() : gVar;
        this.headers = responseData.c();
    }
}
