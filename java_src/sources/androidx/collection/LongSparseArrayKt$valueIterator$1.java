package androidx.collection;

import f8.a;
import java.util.Iterator;

/* JADX INFO: loaded from: classes11.dex */
public final class LongSparseArrayKt$valueIterator$1 implements Iterator<Object>, a {
    final /* synthetic */ LongSparseArray $this_valueIterator;
    private int index;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_valueIterator.p();
    }

    @Override // java.util.Iterator
    public Object next() {
        LongSparseArray longSparseArray = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return longSparseArray.q(i10);
    }
}
