package kotlin.collections;

import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
public abstract class s implements Iterator<Character>, f8.a {
    public abstract char a();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Character next() {
        return Character.valueOf(a());
    }
}
