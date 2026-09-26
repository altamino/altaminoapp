package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class StaticValueHolder<T> implements State<T> {
    private final T value;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StaticValueHolder) && t.e(getValue(), ((StaticValueHolder) obj).getValue());
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        return this.value;
    }

    public int hashCode() {
        if (getValue() == null) {
            return 0;
        }
        return getValue().hashCode();
    }

    @NotNull
    public String toString() {
        return "StaticValueHolder(value=" + getValue() + ')';
    }

    public StaticValueHolder(T t5) {
        this.value = t5;
    }
}
