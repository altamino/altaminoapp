package io.ktor.client;

import e8.l;
import io.ktor.client.engine.h;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    @NotNull
    private static final h<?> FACTORY;

    @NotNull
    private static final List<c> engines;

    static {
        h<?> hVarA;
        ServiceLoader serviceLoaderLoad = ServiceLoader.load(c.class, c.class.getClassLoader());
        t.i(serviceLoaderLoad, "load(it, it.classLoader)");
        List<c> listU0 = d0.U0(serviceLoaderLoad);
        engines = listU0;
        c cVar = (c) d0.l0(listU0);
        if (cVar == null || (hVarA = cVar.a()) == null) {
            throw new IllegalStateException("Failed to find HTTP client engine implementation in the classpath: consider adding client engine dependency. See https://ktor.io/docs/http-client-engines.html".toString());
        }
        FACTORY = hVarA;
    }

    @NotNull
    public static final a a(@NotNull l<? super b<?>, l0> block) {
        t.j(block, "block");
        return e.a(FACTORY, block);
    }
}
