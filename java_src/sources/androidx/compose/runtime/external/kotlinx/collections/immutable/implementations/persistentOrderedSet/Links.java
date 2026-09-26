package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class Links {

    @Nullable
    private final Object next;

    @Nullable
    private final Object previous;

    public Links(@Nullable Object obj, @Nullable Object obj2) {
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

    /* JADX WARN: Illegal instructions before constructor call */
    public Links() {
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        this(endOfChain, endOfChain);
    }

    public final boolean a() {
        return this.next != EndOfChain.INSTANCE;
    }

    public final boolean b() {
        return this.previous != EndOfChain.INSTANCE;
    }

    @NotNull
    public final Links e(@Nullable Object obj) {
        return new Links(this.previous, obj);
    }

    @NotNull
    public final Links f(@Nullable Object obj) {
        return new Links(obj, this.next);
    }

    public Links(@Nullable Object obj) {
        this(obj, EndOfChain.INSTANCE);
    }
}
