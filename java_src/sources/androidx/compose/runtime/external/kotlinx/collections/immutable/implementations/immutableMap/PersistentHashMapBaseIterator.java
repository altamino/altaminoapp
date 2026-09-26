package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import f8.a;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public abstract class PersistentHashMapBaseIterator<K, V, T> implements Iterator<T>, a {
    private boolean hasNext;

    @NotNull
    private final TrieNodeBaseIterator<K, V, T>[] path;
    private int pathLastIndex;

    @NotNull
    protected final TrieNodeBaseIterator<K, V, T>[] e() {
        return this.path;
    }

    protected final void g(int i10) {
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

    public PersistentHashMapBaseIterator(@NotNull TrieNode<K, V> node, @NotNull TrieNodeBaseIterator<K, V, T>[] path) {
        t.j(node, "node");
        t.j(path, "path");
        this.path = path;
        this.hasNext = true;
        path[0].k(node.p(), node.m() * 2);
        this.pathLastIndex = 0;
        c();
    }

    private final void c() {
        if (this.path[this.pathLastIndex].f()) {
            return;
        }
        for (int i10 = this.pathLastIndex; -1 < i10; i10--) {
            int iF = f(i10);
            if (iF == -1 && this.path[i10].g()) {
                this.path[i10].j();
                iF = f(i10);
            }
            if (iF != -1) {
                this.pathLastIndex = iF;
                return;
            }
            if (i10 > 0) {
                this.path[i10 - 1].j();
            }
            this.path[i10].k(TrieNode.Companion.a().p(), 0);
        }
        this.hasNext = false;
    }

    private final int f(int i10) {
        if (this.path[i10].f()) {
            return i10;
        }
        if (!this.path[i10].g()) {
            return -1;
        }
        TrieNode<? extends K, ? extends V> trieNodeB = this.path[i10].b();
        if (i10 == 6) {
            this.path[i10 + 1].k(trieNodeB.p(), trieNodeB.p().length);
        } else {
            this.path[i10 + 1].k(trieNodeB.p(), trieNodeB.m() * 2);
        }
        return f(i10 + 1);
    }

    private final void a() {
        if (hasNext()) {
        } else {
            throw new NoSuchElementException();
        }
    }

    protected final K b() {
        a();
        return this.path[this.pathLastIndex].a();
    }

    @Override // java.util.Iterator
    public T next() {
        a();
        T next = this.path[this.pathLastIndex].next();
        c();
        return next;
    }
}
