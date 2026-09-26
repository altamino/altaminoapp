package io.ktor.util.internal;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class f {

    @NotNull
    private final String symbol;

    @NotNull
    public String toString() {
        return this.symbol;
    }

    public f(@NotNull String symbol) {
        t.j(symbol, "symbol");
        this.symbol = symbol;
    }
}
