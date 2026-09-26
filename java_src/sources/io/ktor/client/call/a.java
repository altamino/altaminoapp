package io.ktor.client.call;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class a extends IllegalStateException {

    @NotNull
    private final String message;

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return this.message;
    }

    public a(@NotNull b call) {
        t.j(call, "call");
        this.message = "Response already received: " + call;
    }
}
