package io.ktor.http;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class a extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull String value) {
        super("Bad Content-Type format: " + value);
        kotlin.jvm.internal.t.j(value, "value");
    }
}
