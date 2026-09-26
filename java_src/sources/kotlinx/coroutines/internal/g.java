package kotlinx.coroutines.internal;

import java.util.Collection;
import java.util.ServiceLoader;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    @NotNull
    private static final Collection<kotlinx.coroutines.l0> platformExceptionHandlers = kotlin.sequences.o.A(kotlin.sequences.m.c(ServiceLoader.load(kotlinx.coroutines.l0.class, kotlinx.coroutines.l0.class.getClassLoader()).iterator()));

    @NotNull
    public static final Collection<kotlinx.coroutines.l0> a() {
        return platformExceptionHandlers;
    }

    public static final void b(@NotNull Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }
}
