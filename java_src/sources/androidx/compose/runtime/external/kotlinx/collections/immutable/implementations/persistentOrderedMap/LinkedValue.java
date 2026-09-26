package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class LinkedValue<V> {

    @Nullable
    private final Object next;

    @Nullable
    private final Object previous;
    private final V value;

    public LinkedValue(V v5, @Nullable Object obj, @Nullable Object obj2) {
        this.value = v5;
        this.previous = obj;
        this.next = obj2;
    }

    @Nullable
    public final Object c() {
        return this.next;
    }

    @Nullable
    public final Object d() {
        return this.previous;
    }

    public final V e() {
        return this.value;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LinkedValue(V v5) {
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        this(v5, endOfChain, endOfChain);
    }

    public final boolean a() {
        return this.next != EndOfChain.INSTANCE;
    }

    public final boolean b() {
        return this.previous != EndOfChain.INSTANCE;
    }

    @NotNull
    public final LinkedValue<V> f(@Nullable Object obj) {
        return new LinkedValue<>(this.value, this.previous, obj);
    }

    @NotNull
    public final LinkedValue<V> g(@Nullable Object obj) {
        return new LinkedValue<>(this.value, obj, this.next);
    }

    @NotNull
    public final LinkedValue<V> h(V v5) {
        return new LinkedValue<>(v5, this.previous, this.next);
    }

    public LinkedValue(V v5, @Nullable Object obj) {
        this(v5, obj, EndOfChain.INSTANCE);
    }
}
