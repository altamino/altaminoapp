package androidx.core.util;

import android.annotation.SuppressLint;
import android.util.LongSparseArray;
import f8.a;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class LongSparseArrayKt$valueIterator$1 implements Iterator<Object>, a {
    final /* synthetic */ LongSparseArray<Object> $this_valueIterator;
    private int index;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    @SuppressLint({"ClassVerificationFailure"})
    public boolean hasNext() {
        return this.index < this.$this_valueIterator.size();
    }

    @Override // java.util.Iterator
    @SuppressLint({"ClassVerificationFailure"})
    public Object next() {
        LongSparseArray<Object> longSparseArray = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return longSparseArray.valueAt(i10);
    }
}
