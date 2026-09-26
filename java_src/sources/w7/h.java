package w7;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class h<T> implements m<T>, Serializable {
    private final T value;

    @Override // w7.m
    public T getValue() {
        return this.value;
    }

    @Override // w7.m
    public boolean isInitialized() {
        return true;
    }

    public h(T t5) {
        this.value = t5;
    }

    @NotNull
    public String toString() {
        return String.valueOf(getValue());
    }
}
