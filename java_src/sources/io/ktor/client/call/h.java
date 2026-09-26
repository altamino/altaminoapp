package io.ktor.client.call;

import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class h extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(@NotNull k7.b content) {
        super("Failed to write body: " + q0.b(content.getClass()));
        t.j(content, "content");
    }
}
