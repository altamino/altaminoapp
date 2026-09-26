package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ActivityResultContract<I, O> {
    @NotNull
    public abstract Intent a(@NotNull Context context, I i10);

    @Nullable
    public SynchronousResult<O> b(@NotNull Context context, I i10) {
        t.j(context, "context");
        return null;
    }

    public abstract O c(int i10, @Nullable Intent intent);

    public static final class SynchronousResult<T> {
        private final T value;

        public final T a() {
            return this.value;
        }

        public SynchronousResult(T t5) {
            this.value = t5;
        }
    }
}
