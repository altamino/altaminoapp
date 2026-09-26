package io.ktor.utils.io;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class n {

    @Nullable
    private final Throwable cause;

    @Nullable
    public final Throwable a() {
        return this.cause;
    }

    public n(@Nullable Throwable th) {
        this.cause = th;
    }
}
