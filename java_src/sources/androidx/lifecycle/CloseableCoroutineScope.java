package androidx.lifecycle;

import java.io.Closeable;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.h2;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class CloseableCoroutineScope implements Closeable, o0 {

    @NotNull
    private final kotlin.coroutines.g coroutineContext;

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.coroutineContext;
    }

    public CloseableCoroutineScope(@NotNull kotlin.coroutines.g context) {
        t.j(context, "context");
        this.coroutineContext = context;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        h2.e(getCoroutineContext(), null, 1, null);
    }
}
