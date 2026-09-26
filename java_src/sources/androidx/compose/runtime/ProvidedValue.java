package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class ProvidedValue<T> {
    public static final int $stable = 0;
    private final boolean canOverride;

    @NotNull
    private final CompositionLocal<T> compositionLocal;
    private final T value;

    public final boolean a() {
        return this.canOverride;
    }

    @NotNull
    public final CompositionLocal<T> b() {
        return this.compositionLocal;
    }

    public final T c() {
        return this.value;
    }

    public ProvidedValue(@NotNull CompositionLocal<T> compositionLocal, T t5, boolean z6) {
        t.j(compositionLocal, "compositionLocal");
        this.compositionLocal = compositionLocal;
        this.value = t5;
        this.canOverride = z6;
    }
}
