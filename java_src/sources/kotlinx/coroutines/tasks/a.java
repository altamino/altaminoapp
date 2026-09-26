package kotlinx.coroutines.tasks;

import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class a implements Executor {

    @NotNull
    public static final a INSTANCE = new a();

    private a() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        runnable.run();
    }
}
