package androidx.work;

import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public enum DirectExecutor implements Executor {
    INSTANCE;

    @Override // java.lang.Enum
    @NotNull
    public String toString() {
        return "DirectExecutor";
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable command) {
        t.j(command, "command");
        command.run();
    }
}
