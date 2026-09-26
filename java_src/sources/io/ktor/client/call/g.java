package io.ktor.client.call;

import io.ktor.http.k;
import io.ktor.http.u;
import io.ktor.http.v;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.h2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class g extends io.ktor.client.statement.c {

    @NotNull
    private final e call;

    @NotNull
    private final io.ktor.utils.io.g content;

    @NotNull
    private final a0 context;

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

    @Override // io.ktor.client.statement.c
    @NotNull
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public e y0() {
        return this.call;
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

    public g(@NotNull e call, @NotNull byte[] body, @NotNull io.ktor.client.statement.c origin) {
        t.j(call, "call");
        t.j(body, "body");
        t.j(origin, "origin");
        this.call = call;
        a0 a0VarB = h2.b(null, 1, null);
        this.context = a0VarB;
        this.status = origin.e();
        this.version = origin.f();
        this.requestTime = origin.b();
        this.responseTime = origin.c();
        this.headers = origin.getHeaders();
        this.coroutineContext = origin.getCoroutineContext().plus(a0VarB);
        this.content = io.ktor.utils.io.d.a(body);
    }
}
