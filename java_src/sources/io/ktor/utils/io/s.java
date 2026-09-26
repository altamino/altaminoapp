package io.ktor.utils.io;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class s {
    @NotNull
    public static final Throwable a(@NotNull Throwable th) {
        kotlin.jvm.internal.t.j(th, "<this>");
        Throwable th2 = th;
        while (th2 instanceof CancellationException) {
            if (kotlin.jvm.internal.t.e(th2, th2.getCause())) {
                return th;
            }
            Throwable cause = th2.getCause();
            if (cause == null) {
                return th2;
            }
            th2 = cause;
        }
        return th2;
    }
}
