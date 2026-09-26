package w7;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class y<T> implements m<T>, Serializable {

    @Nullable
    private volatile Object _value;

    @Nullable
    private e8.a<? extends T> initializer;

    @NotNull
    private final Object lock;

    public y(@NotNull e8.a<? extends T> initializer, @Nullable Object obj) {
        kotlin.jvm.internal.t.j(initializer, "initializer");
        this.initializer = initializer;
        this._value = h0.INSTANCE;
        this.lock = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new h(getValue());
    }

    @Override // w7.m
    public T getValue() {
        T tInvoke;
        T t5 = (T) this._value;
        h0 h0Var = h0.INSTANCE;
        if (t5 != h0Var) {
            return t5;
        }
        synchronized (this.lock) {
            tInvoke = (T) this._value;
            if (tInvoke == h0Var) {
                e8.a<? extends T> aVar = this.initializer;
                kotlin.jvm.internal.t.g(aVar);
                tInvoke = aVar.invoke();
                this._value = tInvoke;
                this.initializer = null;
            }
        }
        return tInvoke;
    }

    @Override // w7.m
    public boolean isInitialized() {
        return this._value != h0.INSTANCE;
    }

    public /* synthetic */ y(e8.a aVar, Object obj, int i10, kotlin.jvm.internal.k kVar) {
        this(aVar, (i10 & 2) != 0 ? null : obj);
    }

    @NotNull
    public String toString() {
        if (isInitialized()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }
}
