package io.ktor.http;

import java.nio.charset.Charset;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class s {
    @Nullable
    public static final Charset a(@NotNull q qVar) {
        kotlin.jvm.internal.t.j(qVar, "<this>");
        c cVarC = c(qVar);
        if (cVarC != null) {
            return d.a(cVarC);
        }
        return null;
    }

    @Nullable
    public static final Long b(@NotNull q qVar) {
        kotlin.jvm.internal.t.j(qVar, "<this>");
        String str = qVar.getHeaders().get(o.INSTANCE.g());
        if (str != null) {
            return Long.valueOf(Long.parseLong(str));
        }
        return null;
    }

    @Nullable
    public static final c c(@NotNull q qVar) {
        kotlin.jvm.internal.t.j(qVar, "<this>");
        String str = qVar.getHeaders().get(o.INSTANCE.i());
        if (str != null) {
            return c.Companion.b(str);
        }
        return null;
    }

    @Nullable
    public static final c d(@NotNull r rVar) {
        kotlin.jvm.internal.t.j(rVar, "<this>");
        String strH = rVar.getHeaders().h(o.INSTANCE.i());
        if (strH != null) {
            return c.Companion.b(strH);
        }
        return null;
    }

    public static final void e(@NotNull r rVar, @NotNull c type) {
        kotlin.jvm.internal.t.j(rVar, "<this>");
        kotlin.jvm.internal.t.j(type, "type");
        rVar.getHeaders().k(o.INSTANCE.i(), type.toString());
    }
}
