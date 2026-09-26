package io.ktor.utils.io.jvm.javaio;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class f {

    @NotNull
    private static final ThreadLocal<e<Thread>> parkingImplLocal = new ThreadLocal<>();

    @NotNull
    public static final e<Thread> a() {
        e<Thread> eVar = parkingImplLocal.get();
        return eVar == null ? c.INSTANCE : eVar;
    }

    public static final boolean b() {
        if (a() != g.INSTANCE) {
            return true;
        }
        return false;
    }
}
