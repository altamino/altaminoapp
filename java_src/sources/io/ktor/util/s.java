package io.ktor.util;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class s {

    @NotNull
    private static final String DEVELOPMENT_MODE_KEY = "io.ktor.development";

    public static final boolean c(@NotNull r rVar) {
        kotlin.jvm.internal.t.j(rVar, "<this>");
        return true;
    }

    @NotNull
    public static final q a(@NotNull r rVar) {
        kotlin.jvm.internal.t.j(rVar, "<this>");
        return q.Jvm;
    }

    public static final boolean b(@NotNull r rVar) {
        kotlin.jvm.internal.t.j(rVar, "<this>");
        String property = System.getProperty(DEVELOPMENT_MODE_KEY);
        return property != null && Boolean.parseBoolean(property);
    }
}
