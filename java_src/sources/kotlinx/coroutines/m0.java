package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class m0 {
    public static final void a(@NotNull kotlin.coroutines.g gVar, @NotNull Throwable th) {
        try {
            l0 l0Var = (l0) gVar.get(l0.Key);
            if (l0Var != null) {
                l0Var.handleException(gVar, th);
            } else {
                kotlinx.coroutines.internal.h.a(gVar, th);
            }
        } catch (Throwable th2) {
            kotlinx.coroutines.internal.h.a(gVar, b(th, th2));
        }
    }

    @NotNull
    public static final Throwable b(@NotNull Throwable th, @NotNull Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        w7.f.a(runtimeException, th);
        return runtimeException;
    }
}
