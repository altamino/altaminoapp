package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements j {

    @NotNull
    private final e8.p<Throwable, kotlin.coroutines.d<? super l0>, Object> handler;

    @NotNull
    public final e8.p<Throwable, kotlin.coroutines.d<? super l0>, Object> a() {
        return this.handler;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(@NotNull e8.p<? super Throwable, ? super kotlin.coroutines.d<? super l0>, ? extends Object> handler) {
        kotlin.jvm.internal.t.j(handler, "handler");
        this.handler = handler;
    }
}
