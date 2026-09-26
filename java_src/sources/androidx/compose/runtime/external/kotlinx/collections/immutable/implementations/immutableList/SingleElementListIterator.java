package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

/* JADX INFO: loaded from: classes6.dex */
public final class SingleElementListIterator<E> extends AbstractListIterator<E> {
    private final E element;

    public SingleElementListIterator(E e, int i10) {
        super(i10, 1);
        this.element = e;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public E next() {
        a();
        f(c() + 1);
        return this.element;
    }

    @Override // java.util.ListIterator
    public E previous() {
        b();
        f(c() - 1);
        return this.element;
    }
}
