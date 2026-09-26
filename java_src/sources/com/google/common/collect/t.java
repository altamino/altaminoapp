package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class t<E> extends v implements Collection<E> {
    protected abstract Collection<E> f();

    public Object[] toArray() {
        return f().toArray();
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) f().toArray(tArr);
    }

    protected t() {
    }

    @Override // java.util.Collection
    public void clear() {
        f().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return f().contains(obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return f().containsAll(collection);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return f().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return f().iterator();
    }

    protected boolean j(Collection<? extends E> collection) {
        return i0.a(this, collection.iterator());
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return f().remove(obj);
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return f().removeAll(collection);
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return f().retainAll(collection);
    }

    @Override // java.util.Collection
    public int size() {
        return f().size();
    }
}
