package kotlinx.coroutines;

import java.util.concurrent.Future;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class l extends m {

    @NotNull
    private final Future<?> future;

    @Override // kotlinx.coroutines.n
    public void d(@Nullable Throwable th) {
        if (th != null) {
            this.future.cancel(false);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        d(th);
        return w7.l0.INSTANCE;
    }

    @NotNull
    public String toString() {
        return "CancelFutureOnCancel[" + this.future + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public l(@NotNull Future<?> future) {
        this.future = future;
    }
}
