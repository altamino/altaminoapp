package io.ktor.client.utils;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class f {

    @NotNull
    private final Throwable cause;

    @NotNull
    private final io.ktor.client.statement.c response;

    public f(@NotNull io.ktor.client.statement.c response, @NotNull Throwable cause) {
        t.j(response, "response");
        t.j(cause, "cause");
        this.response = response;
        this.cause = cause;
    }
}
