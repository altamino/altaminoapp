package io.ktor.utils.io;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class d {
    @NotNull
    public static final g a(@NotNull byte[] content) {
        kotlin.jvm.internal.t.j(content, "content");
        return e.e(content, 0, content.length);
    }
}
