package io.ktor.util.pipeline;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class b extends Throwable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull String message) {
        super(message);
        t.j(message, "message");
    }
}
