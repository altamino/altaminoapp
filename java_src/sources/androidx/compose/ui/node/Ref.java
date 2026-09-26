package androidx.compose.ui.node;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class Ref<T> {
    public static final int $stable = 8;

    @Nullable
    private T value;

    @Nullable
    public final T a() {
        return this.value;
    }

    public final void b(@Nullable T t5) {
        this.value = t5;
    }
}
