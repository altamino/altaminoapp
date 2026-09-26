package io.ktor.client.call;

import io.ktor.http.k;
import io.ktor.http.p0;
import io.ktor.http.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class f implements i7.c {
    private final /* synthetic */ i7.c $$delegate_0;

    @NotNull
    private final e call;

    @Override // i7.c
    @NotNull
    public io.ktor.util.b L() {
        return this.$$delegate_0.L();
    }

    @Override // i7.c
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e y0() {
        return this.call;
    }

    @Override // i7.c, kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    @Override // io.ktor.http.q
    @NotNull
    public k getHeaders() {
        return this.$$delegate_0.getHeaders();
    }

    @Override // i7.c
    @NotNull
    public t getMethod() {
        return this.$$delegate_0.getMethod();
    }

    @Override // i7.c
    @NotNull
    public p0 getUrl() {
        return this.$$delegate_0.getUrl();
    }

    public f(@NotNull e call, @NotNull i7.c origin) {
        kotlin.jvm.internal.t.j(call, "call");
        kotlin.jvm.internal.t.j(origin, "origin");
        this.call = call;
        this.$$delegate_0 = origin;
    }
}
