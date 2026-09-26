package io.ktor.util;

import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class h {

    @NotNull
    private final String content;
    private final int hash;

    @NotNull
    public final String a() {
        return this.content;
    }

    public int hashCode() {
        return this.hash;
    }

    @NotNull
    public String toString() {
        return this.content;
    }

    public h(@NotNull String content) {
        kotlin.jvm.internal.t.j(content, "content");
        this.content = content;
        String lowerCase = content.toLowerCase(Locale.ROOT);
        kotlin.jvm.internal.t.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        this.hash = lowerCase.hashCode();
    }

    public boolean equals(@Nullable Object obj) {
        String str;
        h hVar = obj instanceof h ? (h) obj : null;
        return (hVar == null || (str = hVar.content) == null || !kotlin.text.t.w(str, this.content, true)) ? false : true;
    }
}
