package io.ktor.util.pipeline;

import io.ktor.utils.io.r;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class j {
    @NotNull
    public static final Throwable a(@NotNull Throwable th, @Nullable Throwable th2) {
        Throwable thE;
        t.j(th, "<this>");
        if (th2 == null || t.e(th.getCause(), th2) || (thE = r.e(th, th2)) == null) {
            return th;
        }
        thE.setStackTrace(th.getStackTrace());
        return thE;
    }
}
