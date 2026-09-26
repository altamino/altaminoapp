package io.ktor.client.plugins;

import androidx.core.os.EnvironmentCompat;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class w extends IOException {
    public w(@NotNull String url, @Nullable Long l) {
        kotlin.jvm.internal.t.j(url, "url");
        StringBuilder sb = new StringBuilder();
        sb.append("Request timeout has expired [url=");
        sb.append(url);
        sb.append(", request_timeout=");
        sb.append(l == null ? EnvironmentCompat.MEDIA_UNKNOWN : l);
        sb.append(" ms]");
        super(sb.toString());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public w(@NotNull i7.d request) {
        kotlin.jvm.internal.t.j(request, "request");
        String strC = request.h().c();
        y.a aVar = (y.a) request.e(y.Plugin);
        this(strC, aVar != null ? aVar.d() : null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public w(@NotNull i7.e request) {
        kotlin.jvm.internal.t.j(request, "request");
        String string = request.h().toString();
        y.a aVar = (y.a) request.c(y.Plugin);
        this(string, aVar != null ? aVar.d() : null);
    }
}
