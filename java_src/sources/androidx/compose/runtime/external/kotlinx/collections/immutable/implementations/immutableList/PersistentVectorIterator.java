package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class PersistentVectorIterator<T> extends AbstractListIterator<T> {

    @NotNull
    private final T[] tail;

    @NotNull
    private final TrieIterator<T> trieIterator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersistentVectorIterator(@NotNull Object[] root, @NotNull T[] tail, int i10, int i11, int i12) {
        super(i10, i11);
        t.j(root, "root");
        t.j(tail, "tail");
        this.tail = tail;
        int iD = UtilsKt.d(i11);
        this.trieIterator = new TrieIterator<>(root, o.j(i10, iD), iD, i12);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public T next() {
        a();
        if (this.trieIterator.hasNext()) {
            f(c() + 1);
            return this.trieIterator.next();
        }
        T[] tArr = this.tail;
        int iC = c();
        f(iC + 1);
        return tArr[iC - this.trieIterator.e()];
    }

    @Override // java.util.ListIterator
    public T previous() {
        b();
        if (c() > this.trieIterator.e()) {
            T[] tArr = this.tail;
            f(c() - 1);
            return tArr[c() - this.trieIterator.e()];
        }
        f(c() - 1);
        return this.trieIterator.previous();
    }
}
