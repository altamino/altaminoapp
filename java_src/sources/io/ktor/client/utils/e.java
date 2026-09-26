package io.ktor.client.utils;

import e8.l;
import io.ktor.http.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class e {
    @NotNull
    public static final k a(@NotNull l<? super io.ktor.http.l, l0> block) {
        t.j(block, "block");
        io.ktor.http.l lVar = new io.ktor.http.l(0, 1, null);
        block.invoke(lVar);
        return lVar.n();
    }
}
