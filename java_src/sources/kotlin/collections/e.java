package kotlin.collections;

import java.util.AbstractCollection;
import java.util.Collection;

/* JADX INFO: loaded from: classes10.dex */
public abstract class e<E> extends AbstractCollection<E> implements Collection<E>, f8.b {
    public abstract int c();

    protected e() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return c();
    }
}
