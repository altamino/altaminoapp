package kotlin.collections;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class l0<T> implements Iterator<j0<? extends T>>, f8.a {
    private int index;

    @NotNull
    private final Iterator<T> iterator;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l0(@NotNull Iterator<? extends T> iterator) {
        kotlin.jvm.internal.t.j(iterator, "iterator");
        this.iterator = iterator;
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final j0<T> next() {
        int i10 = this.index;
        this.index = i10 + 1;
        if (i10 < 0) {
            v.w();
        }
        return new j0<>(i10, this.iterator.next());
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.iterator.hasNext();
    }
}
