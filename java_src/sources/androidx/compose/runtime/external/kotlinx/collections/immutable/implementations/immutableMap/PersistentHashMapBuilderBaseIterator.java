package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.ConcurrentModificationException;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class PersistentHashMapBuilderBaseIterator<K, V, T> extends PersistentHashMapBaseIterator<K, V, T> {

    @NotNull
    private final PersistentHashMapBuilder<K, V> builder;
    private int expectedModCount;

    @Nullable
    private K lastIteratedKey;
    private boolean nextWasInvoked;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersistentHashMapBuilderBaseIterator(@NotNull PersistentHashMapBuilder<K, V> builder, @NotNull TrieNodeBaseIterator<K, V, T>[] path) {
        super(builder.k(), path);
        t.j(builder, "builder");
        t.j(path, "path");
        this.builder = builder;
        this.expectedModCount = builder.j();
    }

    private final void h() {
        if (this.builder.j() != this.expectedModCount) {
            throw new ConcurrentModificationException();
        }
    }

    private final void j() {
        if (!this.nextWasInvoked) {
            throw new IllegalStateException();
        }
    }

    private final void k(int i10, TrieNode<?, ?> trieNode, K k, int i11) {
        int i12 = i11 * 5;
        if (i12 > 30) {
            e()[i11].l(trieNode.p(), trieNode.p().length, 0);
            while (!t.e(e()[i11].a(), k)) {
                e()[i11].h();
            }
            g(i11);
            return;
        }
        int iF = 1 << TrieNodeKt.f(i10, i12);
        if (trieNode.q(iF)) {
            e()[i11].l(trieNode.p(), trieNode.m() * 2, trieNode.n(iF));
            g(i11);
        } else {
            int iO = trieNode.O(iF);
            TrieNode<?, ?> trieNodeN = trieNode.N(iO);
            e()[i11].l(trieNode.p(), trieNode.m() * 2, iO);
            k(i10, trieNodeN, k, i11 + 1);
        }
    }

    public final void l(K k, V v5) {
        if (this.builder.containsKey(k)) {
            if (hasNext()) {
                K kB = b();
                this.builder.put(k, v5);
                k(kB != null ? kB.hashCode() : 0, this.builder.k(), kB, 0);
            } else {
                this.builder.put(k, v5);
            }
            this.expectedModCount = this.builder.j();
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public T next() {
        h();
        this.lastIteratedKey = b();
        this.nextWasInvoked = true;
        return (T) super.next();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public void remove() {
        int iHashCode;
        j();
        if (hasNext()) {
            K kB = b();
            v0.d(this.builder).remove(this.lastIteratedKey);
            if (kB != null) {
                iHashCode = kB.hashCode();
            } else {
                iHashCode = 0;
            }
            k(iHashCode, this.builder.k(), kB, 0);
        } else {
            v0.d(this.builder).remove(this.lastIteratedKey);
        }
        this.lastIteratedKey = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.j();
    }
}
