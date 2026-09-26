package kotlin.collections;

import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
public abstract class r implements Iterator<Boolean>, f8.a {
    public abstract boolean a();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Boolean next() {
        return Boolean.valueOf(a());
    }
}
