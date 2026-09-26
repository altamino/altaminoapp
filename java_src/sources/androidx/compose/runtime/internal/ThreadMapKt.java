package androidx.compose.runtime.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ThreadMapKt {

    @NotNull
    private static final ThreadMap emptyThreadMap = new ThreadMap(0, new long[0], new Object[0]);

    @NotNull
    public static final ThreadMap a() {
        return emptyThreadMap;
    }
}
