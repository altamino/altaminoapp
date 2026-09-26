package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import j8.o;
import java.util.ConcurrentModificationException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class PersistentVectorMutableIterator<T> extends AbstractListIterator<T> {

    @NotNull
    private final PersistentVectorBuilder<T> builder;
    private int expectedModCount;
    private int lastIteratedIndex;

    @Nullable
    private TrieIterator<? extends T> trieIterator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersistentVectorMutableIterator(@NotNull PersistentVectorBuilder<T> builder, int i10) {
        super(i10, builder.size());
        t.j(builder, "builder");
        this.builder = builder;
        this.expectedModCount = builder.j();
        this.lastIteratedIndex = -1;
        l();
    }

    private final void h() {
        if (this.expectedModCount != this.builder.j()) {
            throw new ConcurrentModificationException();
        }
    }

    private final void j() {
        if (this.lastIteratedIndex == -1) {
            throw new IllegalStateException();
        }
    }

    private final void k() {
        g(this.builder.size());
        this.expectedModCount = this.builder.j();
        this.lastIteratedIndex = -1;
        l();
    }

    private final void l() {
        Object[] objArrM = this.builder.m();
        if (objArrM == null) {
            this.trieIterator = null;
            return;
        }
        int iD = UtilsKt.d(this.builder.size());
        int iJ = o.j(c(), iD);
        int iP = (this.builder.p() / 5) + 1;
        TrieIterator<? extends T> trieIterator = this.trieIterator;
        if (trieIterator == null) {
            this.trieIterator = new TrieIterator<>(objArrM, iJ, iD, iP);
        } else {
            t.g(trieIterator);
            trieIterator.l(objArrM, iJ, iD, iP);
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public void add(T t5) {
        h();
        this.builder.add(c(), t5);
        f(c() + 1);
        k();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public T next() {
        h();
        a();
        this.lastIteratedIndex = c();
        TrieIterator<? extends T> trieIterator = this.trieIterator;
        if (trieIterator == null) {
            Object[] objArrQ = this.builder.q();
            int iC = c();
            f(iC + 1);
            return (T) objArrQ[iC];
        }
        if (trieIterator.hasNext()) {
            f(c() + 1);
            return trieIterator.next();
        }
        Object[] objArrQ2 = this.builder.q();
        int iC2 = c();
        f(iC2 + 1);
        return (T) objArrQ2[iC2 - trieIterator.e()];
    }

    @Override // java.util.ListIterator
    public T previous() {
        h();
        b();
        this.lastIteratedIndex = c() - 1;
        TrieIterator<? extends T> trieIterator = this.trieIterator;
        if (trieIterator == null) {
            Object[] objArrQ = this.builder.q();
            f(c() - 1);
            return (T) objArrQ[c()];
        }
        if (c() > trieIterator.e()) {
            Object[] objArrQ2 = this.builder.q();
            f(c() - 1);
            return (T) objArrQ2[c() - trieIterator.e()];
        }
        f(c() - 1);
        return trieIterator.previous();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public void remove() {
        h();
        j();
        this.builder.remove(this.lastIteratedIndex);
        if (this.lastIteratedIndex < c()) {
            f(this.lastIteratedIndex);
        }
        k();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public void set(T t5) {
        h();
        j();
        this.builder.set(this.lastIteratedIndex, t5);
        this.expectedModCount = this.builder.j();
        l();
    }
}
