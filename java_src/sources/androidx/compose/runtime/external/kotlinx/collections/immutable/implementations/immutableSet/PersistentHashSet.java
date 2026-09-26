package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.i;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class PersistentHashSet<E> extends i<E> implements PersistentSet<E> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final PersistentHashSet EMPTY = new PersistentHashSet(TrieNode.Companion.a(), 0);

    @NotNull
    private final TrieNode<E> node;
    private final int size;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final TrieNode<E> c() {
        return this.node;
    }

    @Override // kotlin.collections.a
    public int getSize() {
        return this.size;
    }

    public PersistentHashSet(@NotNull TrieNode<E> node, int i10) {
        t.j(node, "node");
        this.node = node;
        this.size = i10;
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet
    @NotNull
    public PersistentSet<E> add(E e) {
        TrieNode<E> trieNodeB = this.node.b(e != null ? e.hashCode() : 0, e, 0);
        return this.node == trieNodeB ? this : new PersistentHashSet(trieNodeB, size() + 1);
    }

    @Override // kotlin.collections.a, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.node.i(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // kotlin.collections.a, java.util.Collection, java.util.List
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        if (elements instanceof PersistentHashSet) {
            return this.node.j(((PersistentHashSet) elements).node, 0);
        }
        return elements instanceof PersistentHashSetBuilder ? this.node.j(((PersistentHashSetBuilder) elements).g(), 0) : super.containsAll(elements);
    }

    @Override // kotlin.collections.a, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return new PersistentHashSetIterator(this.node);
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet
    @NotNull
    public PersistentSet<E> remove(E e) {
        TrieNode<E> trieNodeJ = this.node.J(e != null ? e.hashCode() : 0, e, 0);
        return this.node == trieNodeJ ? this : new PersistentHashSet(trieNodeJ, size() - 1);
    }
}
