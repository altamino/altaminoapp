package io.ktor.http;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class o0 extends IllegalArgumentException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(@NotNull String header) {
        super("Header(s) " + header + " are controlled by the engine and cannot be set explicitly");
        kotlin.jvm.internal.t.j(header, "header");
    }
}
