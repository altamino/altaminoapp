package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public interface m<TConfig, TPlugin> {
    @NotNull
    TPlugin a(@NotNull e8.l<? super TConfig, l0> lVar);

    void b(@NotNull TPlugin tplugin, @NotNull io.ktor.client.a aVar);

    @NotNull
    io.ktor.util.a<TPlugin> getKey();
}
