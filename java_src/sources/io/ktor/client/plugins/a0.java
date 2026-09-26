package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class a0 extends c0 {

    @NotNull
    private final String message;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(@NotNull io.ktor.client.statement.c response, @NotNull String cachedResponseText) {
        super(response, cachedResponseText);
        kotlin.jvm.internal.t.j(response, "response");
        kotlin.jvm.internal.t.j(cachedResponseText, "cachedResponseText");
        this.message = "Unhandled redirect: " + response.y0().e().getMethod().d() + ' ' + response.y0().e().getUrl() + ". Status: " + response.e() + ". Text: \"" + cachedResponseText + kotlinx.serialization.json.internal.b.STRING;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return this.message;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a0(@NotNull io.ktor.client.statement.c response) {
        this(response, "<no response text provided>");
        kotlin.jvm.internal.t.j(response, "response");
    }
}
