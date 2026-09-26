package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public class c0 extends IllegalStateException {

    @NotNull
    private final transient io.ktor.client.statement.c response;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(@NotNull io.ktor.client.statement.c response, @NotNull String cachedResponseText) {
        super("Bad response: " + response + ". Text: \"" + cachedResponseText + kotlinx.serialization.json.internal.b.STRING);
        kotlin.jvm.internal.t.j(response, "response");
        kotlin.jvm.internal.t.j(cachedResponseText, "cachedResponseText");
        this.response = response;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c0(@NotNull io.ktor.client.statement.c response) {
        this(response, "<no response text provided>");
        kotlin.jvm.internal.t.j(response, "response");
    }
}
