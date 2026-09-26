package kotlin.coroutines;

import e8.l;
import kotlin.coroutines.g.b;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class b<B extends g.b, E extends B> implements g.c<E> {

    @NotNull
    private final l<g.b, E> safeCast;

    @NotNull
    private final g.c<?> topmostKey;

    public final boolean a(@NotNull g.c<?> key) {
        t.j(key, "key");
        return key == this || this.topmostKey == key;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.coroutines.g$c<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [e8.l<? super kotlin.coroutines.g$b, ? extends E extends B>, e8.l<kotlin.coroutines.g$b, E extends B>, java.lang.Object] */
    public b(@NotNull g.c<B> baseKey, @NotNull l<? super g.b, ? extends E> safeCast) {
        t.j(baseKey, "baseKey");
        t.j(safeCast, "safeCast");
        this.safeCast = safeCast;
        this.topmostKey = baseKey instanceof b ? (g.c<B>) ((b) baseKey).topmostKey : baseKey;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lkotlin/coroutines/g$b;)TE; */
    @Nullable
    public final g.b b(@NotNull g.b element) {
        t.j(element, "element");
        return (g.b) this.safeCast.invoke(element);
    }
}
