package io.ktor.client.plugins;

import java.util.Set;
import kotlin.collections.y0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class r {

    @NotNull
    private static final Set<io.ktor.http.t> ALLOWED_FOR_REDIRECT;

    @NotNull
    private static final org.slf4j.a LOGGER;

    static {
        io.ktor.http.t.a aVar = io.ktor.http.t.Companion;
        ALLOWED_FOR_REDIRECT = y0.i(aVar.a(), aVar.b());
        LOGGER = n7.a.a("io.ktor.client.plugins.HttpRedirect");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(io.ktor.http.v vVar) {
        int iF0 = vVar.f0();
        io.ktor.http.v.a aVar = io.ktor.http.v.Companion;
        if (iF0 == aVar.s().f0() || iF0 == aVar.k().f0() || iF0 == aVar.S().f0() || iF0 == aVar.F().f0() || iF0 == aVar.O().f0()) {
            return true;
        }
        return false;
    }
}
