package androidx.core.util;

import android.util.SparseArray;
import f8.a;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class SparseArrayKt$valueIterator$1 implements Iterator<Object>, a {
    final /* synthetic */ SparseArray<Object> $this_valueIterator;
    private int index;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_valueIterator.size();
    }

    @Override // java.util.Iterator
    public Object next() {
        SparseArray<Object> sparseArray = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseArray.valueAt(i10);
    }
}
