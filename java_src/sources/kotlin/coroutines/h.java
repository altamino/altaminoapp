package kotlin.coroutines;

import e8.p;
import java.io.Serializable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class h implements g, Serializable {

    @NotNull
    public static final h INSTANCE = new h();
    private static final long serialVersionUID = 0;

    private final Object readResolve() {
        return INSTANCE;
    }

    @Override // kotlin.coroutines.g
    public <R> R fold(R r, @NotNull p<? super R, ? super g.b, ? extends R> operation) {
        t.j(operation, "operation");
        return r;
    }

    @Override // kotlin.coroutines.g
    @Nullable
    public <E extends g.b> E get(@NotNull g.c<E> key) {
        t.j(key, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public g minusKey(@NotNull g.c<?> key) {
        t.j(key, "key");
        return this;
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public g plus(@NotNull g context) {
        t.j(context, "context");
        return context;
    }

    @NotNull
    public String toString() {
        return "EmptyCoroutineContext";
    }

    private h() {
    }
}
