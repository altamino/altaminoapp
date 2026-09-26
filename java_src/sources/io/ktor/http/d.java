package io.ktor.http;

import java.nio.charset.Charset;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class d {
    @Nullable
    public static final Charset a(@NotNull i iVar) {
        kotlin.jvm.internal.t.j(iVar, "<this>");
        String strC = iVar.c("charset");
        if (strC == null) {
            return null;
        }
        try {
            return Charset.forName(strC);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @NotNull
    public static final c b(@NotNull c cVar, @NotNull Charset charset) {
        kotlin.jvm.internal.t.j(cVar, "<this>");
        kotlin.jvm.internal.t.j(charset, "charset");
        return cVar.g("charset", q7.a.i(charset));
    }
}
