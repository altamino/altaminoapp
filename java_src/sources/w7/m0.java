package w7;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class m0<T> implements m<T>, Serializable {

    @Nullable
    private Object _value;

    @Nullable
    private e8.a<? extends T> initializer;

    public m0(@NotNull e8.a<? extends T> initializer) {
        kotlin.jvm.internal.t.j(initializer, "initializer");
        this.initializer = initializer;
        this._value = h0.INSTANCE;
    }

    private final Object writeReplace() {
        return new h(getValue());
    }

    @Override // w7.m
    public T getValue() {
        if (this._value == h0.INSTANCE) {
            e8.a<? extends T> aVar = this.initializer;
            kotlin.jvm.internal.t.g(aVar);
            this._value = aVar.invoke();
            this.initializer = null;
        }
        return (T) this._value;
    }

    @Override // w7.m
    public boolean isInitialized() {
        return this._value != h0.INSTANCE;
    }

    @NotNull
    public String toString() {
        if (isInitialized()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }
}
