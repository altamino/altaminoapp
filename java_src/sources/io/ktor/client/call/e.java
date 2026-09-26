package io.ktor.client.call;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class e extends b {
    private final boolean allowDoubleReceive;

    @NotNull
    private final byte[] responseBody;

    @Override // io.ktor.client.call.b
    protected boolean b() {
        return this.allowDoubleReceive;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(@NotNull io.ktor.client.a client, @NotNull i7.c request, @NotNull io.ktor.client.statement.c response, @NotNull byte[] responseBody) {
        super(client);
        t.j(client, "client");
        t.j(request, "request");
        t.j(response, "response");
        t.j(responseBody, "responseBody");
        this.responseBody = responseBody;
        i(new f(this, request));
        j(new g(this, responseBody, response));
        this.allowDoubleReceive = true;
    }

    @Override // io.ktor.client.call.b
    @Nullable
    protected Object g(@NotNull kotlin.coroutines.d<? super io.ktor.utils.io.g> dVar) {
        return io.ktor.utils.io.d.a(this.responseBody);
    }
}
