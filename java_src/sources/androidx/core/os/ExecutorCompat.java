package androidx.core.os;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes6.dex */
public final class ExecutorCompat {

    private static class HandlerExecutor implements Executor {
        private final Handler mHandler;

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (this.mHandler.post((Runnable) Preconditions.i(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.mHandler + " is shutting down");
        }

        HandlerExecutor(@NonNull Handler handler) {
            this.mHandler = (Handler) Preconditions.i(handler);
        }
    }

    @NonNull
    public static Executor a(@NonNull Handler handler) {
        return new HandlerExecutor(handler);
    }

    private ExecutorCompat() {
    }
}
