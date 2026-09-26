package io.ktor.util;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class r {

    @NotNull
    public static final r INSTANCE;
    private static final boolean IS_BROWSER;
    private static final boolean IS_DEVELOPMENT_MODE;
    private static final boolean IS_JVM;
    private static final boolean IS_NATIVE;
    private static final boolean IS_NEW_MM_ENABLED;
    private static final boolean IS_NODE;

    public final boolean a() {
        return IS_BROWSER;
    }

    public final boolean b() {
        return IS_DEVELOPMENT_MODE;
    }

    public final boolean c() {
        return IS_NATIVE;
    }

    static {
        r rVar = new r();
        INSTANCE = rVar;
        IS_BROWSER = s.a(rVar) == q.Browser;
        IS_NODE = s.a(rVar) == q.Node;
        IS_JVM = s.a(rVar) == q.Jvm;
        IS_NATIVE = s.a(rVar) == q.Native;
        IS_DEVELOPMENT_MODE = s.b(rVar);
        IS_NEW_MM_ENABLED = s.c(rVar);
    }

    private r() {
    }
}
