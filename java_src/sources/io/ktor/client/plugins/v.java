package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class v {

    @NotNull
    private static final org.slf4j.a LOGGER = n7.a.a("io.ktor.client.plugins.HttpRequestRetry");

    @NotNull
    private static final io.ktor.util.a<Integer> MaxRetriesPerRequestAttributeKey = new io.ktor.util.a<>("MaxRetriesPerRequestAttributeKey");

    @NotNull
    private static final io.ktor.util.a<e8.q<u.f, i7.c, io.ktor.client.statement.c, Boolean>> ShouldRetryPerRequestAttributeKey = new io.ktor.util.a<>("ShouldRetryPerRequestAttributeKey");

    @NotNull
    private static final io.ktor.util.a<e8.q<u.f, i7.d, Throwable, Boolean>> ShouldRetryOnExceptionPerRequestAttributeKey = new io.ktor.util.a<>("ShouldRetryOnExceptionPerRequestAttributeKey");

    @NotNull
    private static final io.ktor.util.a<e8.p<u.c, i7.d, l0>> ModifyRequestPerRequestAttributeKey = new io.ktor.util.a<>("ModifyRequestPerRequestAttributeKey");

    @NotNull
    private static final io.ktor.util.a<e8.p<u.b, Integer, Long>> RetryDelayPerRequestAttributeKey = new io.ktor.util.a<>("RetryDelayPerRequestAttributeKey");

    public static final void i(@NotNull i7.d dVar, @NotNull e8.l<? super u.a, l0> block) {
        kotlin.jvm.internal.t.j(dVar, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        u.a aVar = new u.a();
        block.invoke(aVar);
        dVar.b().a(ShouldRetryPerRequestAttributeKey, aVar.j());
        dVar.b().a(ShouldRetryOnExceptionPerRequestAttributeKey, aVar.k());
        dVar.b().a(RetryDelayPerRequestAttributeKey, aVar.g());
        dVar.b().a(MaxRetriesPerRequestAttributeKey, Integer.valueOf(aVar.h()));
        dVar.b().a(ModifyRequestPerRequestAttributeKey, aVar.i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(Throwable th) {
        Throwable thA = io.ktor.client.utils.d.a(th);
        if (!(thA instanceof w) && !(thA instanceof io.ktor.client.network.sockets.a) && !(thA instanceof io.ktor.client.network.sockets.b)) {
            return false;
        }
        return true;
    }
}
