package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends RuntimeException {

    @NotNull
    private final transient kotlin.coroutines.g context;

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getLocalizedMessage() {
        return this.context.toString();
    }

    public i(@NotNull kotlin.coroutines.g gVar) {
        this.context = gVar;
    }
}
