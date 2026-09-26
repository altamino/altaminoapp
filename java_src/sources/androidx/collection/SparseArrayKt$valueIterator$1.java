package androidx.collection;

import f8.a;
import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes9.dex */
public final class SparseArrayKt$valueIterator$1<T> implements Iterator<T>, a {
    final /* synthetic */ SparseArrayCompat $this_valueIterator;
    private int index;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    SparseArrayKt$valueIterator$1(SparseArrayCompat<T> sparseArrayCompat) {
        this.$this_valueIterator = sparseArrayCompat;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_valueIterator.r();
    }

    @Override // java.util.Iterator
    public T next() {
        SparseArrayCompat sparseArrayCompat = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return (T) sparseArrayCompat.s(i10);
    }
}
