package io.ktor.client.utils;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class c extends k7.b.AbstractC0421b {

    @NotNull
    public static final c INSTANCE = new c();
    private static final long contentLength = 0;

    @NotNull
    public String toString() {
        return "EmptyContent";
    }

    @Override // k7.b
    @NotNull
    public Long a() {
        return Long.valueOf(contentLength);
    }

    private c() {
    }
}
