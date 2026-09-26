package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class ThreadLocal<T> extends java.lang.ThreadLocal<T> {

    @NotNull
    private final e8.a<T> initialValue;

    /* JADX WARN: Multi-variable type inference failed */
    public ThreadLocal(@NotNull e8.a<? extends T> initialValue) {
        t.j(initialValue, "initialValue");
        this.initialValue = initialValue;
    }

    @Override // java.lang.ThreadLocal
    @Nullable
    protected T initialValue() {
        return this.initialValue.invoke();
    }

    @Override // java.lang.ThreadLocal
    public T get() {
        return (T) super.get();
    }

    @Override // java.lang.ThreadLocal
    public void remove() {
        super.remove();
    }

    @Override // java.lang.ThreadLocal
    public void set(T t5) {
        super.set(t5);
    }
}
