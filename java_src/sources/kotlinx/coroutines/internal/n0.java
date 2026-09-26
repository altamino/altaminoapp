package kotlinx.coroutines.internal;

import kotlinx.coroutines.z2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class n0<T> implements z2<T> {

    @NotNull
    private final kotlin.coroutines.g.c<?> key;

    @NotNull
    private final ThreadLocal<T> threadLocal;
    private final T value;

    @Override // kotlin.coroutines.g.b
    @NotNull
    public kotlin.coroutines.g.c<?> getKey() {
        return this.key;
    }

    @Override // kotlinx.coroutines.z2
    public T E0(@NotNull kotlin.coroutines.g gVar) {
        T t5 = this.threadLocal.get();
        this.threadLocal.set(this.value);
        return t5;
    }

    @Override // kotlinx.coroutines.z2
    public void n(@NotNull kotlin.coroutines.g gVar, T t5) {
        this.threadLocal.set(t5);
    }

    @NotNull
    public String toString() {
        return "ThreadLocal(value=" + this.value + ", threadLocal = " + this.threadLocal + ')';
    }

    public n0(T t5, @NotNull ThreadLocal<T> threadLocal) {
        this.value = t5;
        this.threadLocal = threadLocal;
        this.key = new o0(threadLocal);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
        return (R) z2.a.a(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> cVar) {
        if (kotlin.jvm.internal.t.e(getKey(), cVar)) {
            kotlin.jvm.internal.t.h(this, "null cannot be cast to non-null type E of kotlinx.coroutines.internal.ThreadLocalElement.get");
            return this;
        }
        return null;
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> cVar) {
        if (kotlin.jvm.internal.t.e(getKey(), cVar)) {
            return kotlin.coroutines.h.INSTANCE;
        }
        return this;
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g plus(@NotNull kotlin.coroutines.g gVar) {
        return z2.a.b(this, gVar);
    }
}
