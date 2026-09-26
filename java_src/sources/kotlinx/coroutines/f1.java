package kotlinx.coroutines;

import java.util.concurrent.Future;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class f1 implements g1 {

    @NotNull
    private final Future<?> future;

    @Override // kotlinx.coroutines.g1
    public void t() {
        this.future.cancel(false);
    }

    @NotNull
    public String toString() {
        return "DisposableFutureHandle[" + this.future + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public f1(@NotNull Future<?> future) {
        this.future = future;
    }
}
