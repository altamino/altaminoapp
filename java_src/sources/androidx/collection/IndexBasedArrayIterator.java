package androidx.collection;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes9.dex */
abstract class IndexBasedArrayIterator<T> implements Iterator<T> {
    private boolean mCanRemove;
    private int mIndex;
    private int mSize;

    protected abstract T a(int i10);

    protected abstract void b(int i10);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.mIndex < this.mSize;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.mCanRemove) {
            throw new IllegalStateException();
        }
        int i10 = this.mIndex - 1;
        this.mIndex = i10;
        b(i10);
        this.mSize--;
        this.mCanRemove = false;
    }

    IndexBasedArrayIterator(int i10) {
        this.mSize = i10;
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            T tA = a(this.mIndex);
            this.mIndex++;
            this.mCanRemove = true;
            return tA;
        }
        throw new NoSuchElementException();
    }
}
