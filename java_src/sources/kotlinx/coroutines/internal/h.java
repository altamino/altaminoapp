package kotlinx.coroutines.internal;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class h {
    public static final void a(@NotNull kotlin.coroutines.g gVar, @NotNull Throwable th) {
        Iterator<kotlinx.coroutines.l0> it = g.a().iterator();
        while (it.hasNext()) {
            try {
                it.next().handleException(gVar, th);
            } catch (l unused) {
                return;
            } catch (Throwable th2) {
                g.b(kotlinx.coroutines.m0.b(th, th2));
            }
        }
        try {
            w7.f.a(th, new i(gVar));
        } catch (Throwable unused2) {
        }
        g.b(th);
    }
}
