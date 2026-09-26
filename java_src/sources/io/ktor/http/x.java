package io.ktor.http;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class x extends IllegalArgumentException {

    @NotNull
    private final String headerName;
    private final int position;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(@NotNull String headerName, int i10) {
        super("Header name '" + headerName + "' contains illegal character '" + headerName.charAt(i10) + "' (code " + (headerName.charAt(i10) & 255) + ')');
        kotlin.jvm.internal.t.j(headerName, "headerName");
        this.headerName = headerName;
        this.position = i10;
    }
}
