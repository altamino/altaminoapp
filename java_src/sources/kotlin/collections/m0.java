package kotlin.collections;

import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public abstract class m0 implements Iterator<Integer>, f8.a {
    public abstract int nextInt();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Integer next() {
        return Integer.valueOf(nextInt());
    }
}
