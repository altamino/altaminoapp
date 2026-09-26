package io.ktor.util;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class z {
    @Nullable
    public static final Throwable a(@NotNull Throwable th) {
        kotlin.jvm.internal.t.j(th, "<this>");
        while (true) {
            if ((th != null ? th.getCause() : null) == null) {
                return th;
            }
            th = th.getCause();
        }
    }
}
