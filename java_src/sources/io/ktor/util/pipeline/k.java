package io.ktor.util.pipeline;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class k {
    @NotNull
    public static final Throwable a(@NotNull Throwable exception, @NotNull kotlin.coroutines.d<?> continuation) {
        t.j(exception, "exception");
        t.j(continuation, "continuation");
        try {
            return j.a(exception, exception.getCause());
        } catch (Throwable unused) {
            return exception;
        }
    }
}
