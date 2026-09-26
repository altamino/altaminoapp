package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    @NotNull
    private static final io.ktor.util.a<e8.q<Long, Long, kotlin.coroutines.d<? super l0>, Object>> UploadProgressListenerAttributeKey = new io.ktor.util.a<>("UploadProgressListenerAttributeKey");

    @NotNull
    private static final io.ktor.util.a<e8.q<Long, Long, kotlin.coroutines.d<? super l0>, Object>> DownloadProgressListenerAttributeKey = new io.ktor.util.a<>("DownloadProgressListenerAttributeKey");

    @NotNull
    public static final io.ktor.client.statement.c c(@NotNull io.ktor.client.statement.c cVar, @NotNull e8.q<? super Long, ? super Long, ? super kotlin.coroutines.d<? super l0>, ? extends Object> listener) {
        kotlin.jvm.internal.t.j(cVar, "<this>");
        kotlin.jvm.internal.t.j(listener, "listener");
        return h7.b.a(cVar.y0(), io.ktor.client.utils.a.a(cVar.a(), cVar.getCoroutineContext(), io.ktor.http.s.b(cVar), listener)).f();
    }
}
