package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class i0 {

    @NotNull
    public final String symbol;

    @NotNull
    public String toString() {
        return '<' + this.symbol + '>';
    }

    public i0(@NotNull String str) {
        this.symbol = str;
    }
}
