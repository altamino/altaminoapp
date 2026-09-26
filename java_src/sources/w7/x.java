package w7;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class x<T> implements m<T>, Serializable {

    @NotNull
    public static final a Companion = new a(null);
    private static final AtomicReferenceFieldUpdater<x<?>, Object> valueUpdater = AtomicReferenceFieldUpdater.newUpdater(x.class, Object.class, "_value");

    @Nullable
    private volatile Object _value;

    /* JADX INFO: renamed from: final, reason: not valid java name */
    @NotNull
    private final Object f24final;

    @Nullable
    private volatile e8.a<? extends T> initializer;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public x(@NotNull e8.a<? extends T> initializer) {
        kotlin.jvm.internal.t.j(initializer, "initializer");
        this.initializer = initializer;
        h0 h0Var = h0.INSTANCE;
        this._value = h0Var;
        this.f24final = h0Var;
    }

    private final Object writeReplace() {
        return new h(getValue());
    }

    @Override // w7.m
    public T getValue() {
        T t5 = (T) this._value;
        h0 h0Var = h0.INSTANCE;
        if (t5 != h0Var) {
            return t5;
        }
        e8.a<? extends T> aVar = this.initializer;
        if (aVar != null) {
            T tInvoke = aVar.invoke();
            if (androidx.concurrent.futures.a.a(valueUpdater, this, h0Var, tInvoke)) {
                this.initializer = null;
                return tInvoke;
            }
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
