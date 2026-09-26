package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Stable
public abstract class ProvidableCompositionLocal<T> extends CompositionLocal<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProvidableCompositionLocal(@NotNull e8.a<? extends T> defaultFactory) {
        super(defaultFactory, null);
        t.j(defaultFactory, "defaultFactory");
    }

    @NotNull
    public final ProvidedValue<T> c(T t5) {
        return new ProvidedValue<>(this, t5, true);
    }

    @NotNull
    public final ProvidedValue<T> d(T t5) {
        return new ProvidedValue<>(this, t5, false);
    }
}
