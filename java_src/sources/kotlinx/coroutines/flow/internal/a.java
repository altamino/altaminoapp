package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class a extends CancellationException {

    @NotNull
    public final transient kotlinx.coroutines.flow.h<?> owner;

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public a(@NotNull kotlinx.coroutines.flow.h<?> hVar) {
        super("Flow was aborted, no more elements needed");
        this.owner = hVar;
    }
}
