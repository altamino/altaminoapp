package io.ktor.client.plugins;

import androidx.core.os.EnvironmentCompat;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class z {

    @NotNull
    private static final org.slf4j.a LOGGER = n7.a.a("io.ktor.client.plugins.HttpTimeout");

    public static final int d(long j6) {
        if (j6 == Long.MAX_VALUE) {
            return 0;
        }
        if (j6 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        if (j6 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j6;
    }

    @NotNull
    public static final io.ktor.client.network.sockets.a a(@NotNull i7.e request, @Nullable Throwable th) {
        Object objC;
        kotlin.jvm.internal.t.j(request, "request");
        StringBuilder sb = new StringBuilder();
        sb.append("Connect timeout has expired [url=");
        sb.append(request.h());
        sb.append(", connect_timeout=");
        y.a aVar = (y.a) request.c(y.Plugin);
        if (aVar == null || (objC = aVar.c()) == null) {
            objC = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        sb.append(objC);
        sb.append(" ms]");
        return new io.ktor.client.network.sockets.a(sb.toString(), th);
    }

    @NotNull
    public static final io.ktor.client.network.sockets.b b(@NotNull i7.e request, @Nullable Throwable th) {
        Object objE;
        kotlin.jvm.internal.t.j(request, "request");
        StringBuilder sb = new StringBuilder();
        sb.append("Socket timeout has expired [url=");
        sb.append(request.h());
        sb.append(", socket_timeout=");
        y.a aVar = (y.a) request.c(y.Plugin);
        if (aVar == null || (objE = aVar.e()) == null) {
            objE = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        sb.append(objE);
        sb.append("] ms");
        return new io.ktor.client.network.sockets.b(sb.toString(), th);
    }

    public static final void e(@NotNull i7.d dVar, @NotNull e8.l<? super y.a, l0> block) {
        kotlin.jvm.internal.t.j(dVar, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        y.b bVar = y.Plugin;
        y.a aVar = new y.a(null, null, null, 7, null);
        block.invoke(aVar);
        dVar.k(bVar, aVar);
    }
}
