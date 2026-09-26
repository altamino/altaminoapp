package kotlin.collections;

import java.util.AbstractSet;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
public abstract class h<E> extends AbstractSet<E> implements Set<E>, f8.f {
    public abstract int c();

    protected h() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return c();
    }
}
