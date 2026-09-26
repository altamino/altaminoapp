package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements kotlinx.coroutines.o0 {

    @NotNull
    private final kotlin.coroutines.g coroutineContext;

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.coroutineContext;
    }

    @NotNull
    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }

    public f(@NotNull kotlin.coroutines.g gVar) {
        this.coroutineContext = gVar;
    }
}
