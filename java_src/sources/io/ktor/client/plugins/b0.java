package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class b0 implements j {

    @NotNull
    private final e8.q<Throwable, i7.c, kotlin.coroutines.d<? super l0>, Object> handler;

    @NotNull
    public final e8.q<Throwable, i7.c, kotlin.coroutines.d<? super l0>, Object> a() {
        return this.handler;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b0(@NotNull e8.q<? super Throwable, ? super i7.c, ? super kotlin.coroutines.d<? super l0>, ? extends Object> handler) {
        kotlin.jvm.internal.t.j(handler, "handler");
        this.handler = handler;
    }
}
