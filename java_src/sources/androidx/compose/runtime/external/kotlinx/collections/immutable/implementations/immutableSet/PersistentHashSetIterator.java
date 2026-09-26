package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import f8.a;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public class PersistentHashSetIterator<E> implements Iterator<E>, a {
    private boolean hasNext;

    @NotNull
    private final List<TrieNodeIterator<E>> path;
    private int pathLastIndex;

    @NotNull
    protected final List<TrieNodeIterator<E>> c() {
        return this.path;
    }

    protected final void f(int i10) {
        this.pathLastIndex = i10;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public PersistentHashSetIterator(@NotNull TrieNode<E> node) {
        t.j(node, "node");
        List<TrieNodeIterator<E>> listS = v.s(new TrieNodeIterator());
        this.path = listS;
        this.hasNext = true;
        TrieNodeIterator.i(listS.get(0), node.n(), 0, 2, null);
        this.pathLastIndex = 0;
        b();
    }

    private final void b() {
        if (this.path.get(this.pathLastIndex).d()) {
            return;
        }
        for (int i10 = this.pathLastIndex; -1 < i10; i10--) {
            int iE = e(i10);
            if (iE == -1 && this.path.get(i10).c()) {
                this.path.get(i10).f();
                iE = e(i10);
            }
            if (iE != -1) {
                this.pathLastIndex = iE;
                return;
            }
            if (i10 > 0) {
                this.path.get(i10 - 1).f();
            }
            this.path.get(i10).h(TrieNode.Companion.a().n(), 0);
        }
        this.hasNext = false;
    }

    private final int e(int i10) {
        if (this.path.get(i10).d()) {
            return i10;
        }
        if (!this.path.get(i10).e()) {
            return -1;
        }
        TrieNode<? extends E> trieNodeB = this.path.get(i10).b();
        int i11 = i10 + 1;
        if (i11 == this.path.size()) {
            this.path.add(new TrieNodeIterator<>());
        }
        TrieNodeIterator.i(this.path.get(i11), trieNodeB.n(), 0, 2, null);
        return e(i11);
    }

    @Override // java.util.Iterator
    public E next() {
        if (!this.hasNext) {
            throw new NoSuchElementException();
        }
        E eG = this.path.get(this.pathLastIndex).g();
        b();
        return eG;
    }

    protected final E a() {
        CommonFunctionsKt.a(hasNext());
        return this.path.get(this.pathLastIndex).a();
    }
}
