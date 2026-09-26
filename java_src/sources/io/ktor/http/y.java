package io.ktor.http;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class y extends IllegalArgumentException {

    @NotNull
    private final String headerValue;
    private final int position;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(@NotNull String headerValue, int i10) {
        super("Header value '" + headerValue + "' contains illegal character '" + headerValue.charAt(i10) + "' (code " + (headerValue.charAt(i10) & 255) + ')');
        kotlin.jvm.internal.t.j(headerValue, "headerValue");
        this.headerValue = headerValue;
        this.position = i10;
    }
}
